var Modal  = ReactBootstrap.Modal;
var Button = ReactBootstrap.Button;

App.Main = React.createClass({
    getInitialState: function () {
        return {
            mls_names: [],
            active_mls: null,
            active_mls_data: [],
            load_state: 'idle',

            show_clear_prompt: false,
            data: {},
        };
    },
    componentDidMount: function () {
        $.get('get_mls_names', function (res) {
            this.setState({mls_names: res});
        }.bind(this));
    },
    setActiveMLS: function (event) {
        var mls_name = event.target.value;
        this.setState({load_state: 'loading'});

        $.get('get_view_property_data', {mls: mls_name}, function (res) {
            this.setState({
                active_mls: mls_name,
                active_mls_data: res.cols,
                load_state: 'loaded',
                data: {},
            });
        }.bind(this));
    },
    setData: function (name, optionData) {
        var data = _.clone(this.state.data);
        data[name] = optionData;
        this.setState({data: data});
    },
    render: function () {
        return (
            <div style={{margin: '5px'}}>
                <div style={{fontSize: '24px', fontWeight: 'bold'}}>Client View Creator</div>
                <App.MLS_Picker mls_names={this.state.mls_names} setActiveMLS={this.setActiveMLS}/>

                {
                    this.state.load_state == 'loading' ?
                    <div>Loading...</div>
                    : false
                }

                {
                    this.state.load_state == 'loaded' ? (
                        <div>
                            <App.Columns
                                col_data={this.state.active_mls_data}
                                setData={this.setData}
                                user_data={this.state.data}
                            />

                            <App.Summary
                                data={this.state.data}
                                mls={this.state.active_mls}
                            />
                        </div>
                    )
                    : false
                }
            </div>
        );
    }
});

App.Columns = React.createClass({
    getInitialState: function () {
        return {filter: null};
    },
    handleSearchChange: function(val) {
        this.setState({filter: val});
    },
    render: function () {
        var col_data = this.props.col_data;

        // apply filter
        if (this.state.filter) {
            var re = new RegExp(this.state.filter, 'i');
            col_data = _.filter(col_data, function (col) {
                return col.name.match(re);
            }.bind(this));
        }

        return (
            <div style={{width: '450px', position: 'relative', float: 'left'}}>
                <div style={{fontSize: '20px', fontWeight: 'bold'}}>Column Properties</div>
                <App.SearchBar handleSearchChange={this.handleSearchChange}/>
                {
                    col_data.map(function (col) {
                        var user_data = this.props.user_data[col.name];
                        return <App.Columns.ColumnBox 
                                    key={col.name} 
                                    col_data={col}
                                    setData={this.props.setData}
                                    show_check={user_data ? !!(_.keys(user_data).length) : false}
                                />
                    }.bind(this))
                }
            </div>
        );
    }
});

App.Columns.ColumnBox = React.createClass({
    getInitialState: function () {
        return {
            show_options: false
        };
    },
    showOptions: function () {
        this.setState({show_options: true});
    },
    hideOptions: function () {
        this.setState({show_options: false});
    },
    render: function () {
        var col = this.props.col_data;

        var check_style = {
            color: 'green',
            fontSize: '30px',
            position: 'relative',
            bottom: '32px',
            left: '250px',
        };

        return (
            <div className="media" style={{borderBottom: '1px solid #e0e0e0', paddingBottom: '16px'}}>
                <div className="media-left">
                </div>
                <div className="media-body">
                    <div style={{fontSize: '18px', fontWeight: '500'}} className="media-heading">{col.name}</div>
                    <div style={{fontSize: '14px', padding: '4px 0', opacity: 0.54}}>{col.type}</div>

                    <a href="#" style={{fontSize: '14px'}} onClick={this.showOptions}>
                        <i className="fa fa-pencil" aria-hidden="true" style={{paddingRight: '4px'}}></i>
                        Configure
                    </a>

                    <span style={{padding: '0px 8px'}}></span>

                    <a href="#" style={{fontSize: '14px'}} onClick={() => this.props.setData(col.name, {})}>
                        <i className="fa fa-times" aria-hidden="true" style={{paddingRight: '4px'}}></i>
                        Clear
                    </a>

                    {
                        this.props.show_check ?
                        <i style={check_style} className="fa fa-check" aria-hidden="true"></i>
                        : false
                    }
                </div>

                <App.Columns.ColumnBox.Options 
                    show={this.state.show_options}
                    name={col.name}
                    hideOptions={this.hideOptions}
                    saveOptions={this.hideOptions}
                    setData={this.props.setData}
                />
            </div>
        );
    }
});

App.Columns.ColumnBox.Options = React.createClass({
    getInitialState: function () {
        return {
            class: 'default',
            label: '',
            label_plural: '',
            group: '',
            rank: 0,
        };
    },
    setClass: function (event) {
        this.setState({class: event.target.value});
    },
    setLabel: function (event) {
        this.setState({label: event.target.value});
    },
    setLabelPlural: function (event) {
        this.setState({label_plural: event.target.value});
    },
    setGroup: function (event) {
        this.setState({group: event.target.value});
    },
    setRank: function (event) {
        this.setState({rank: event.target.value});
    },
    saveData: function () {
        if (this.state.class == 'default' || !this.state.label || !this.state.rank) {
            return;
        }

        this.props.setData(this.props.name, {
            name:         this.props.name,
            rank:         this.state.rank,
            class:        this.state.class,
            label:        this.state.label,
            group:        this.state.group,
            label_plural: this.state.label_plural,
        });
        this.props.hideOptions();
    },
    render: function () {
        var input_style = {
            position: 'relative',
            bottom: '40px',
            left: '94px',
            width: '464px',
        };

        return (
            <Modal show={this.props.show} onHide={this.props.hideOptions}>
                <Modal.Header closeButton>
                    <Modal.Title>Set options for {this.props.name}</Modal.Title>
                </Modal.Header>
                <Modal.Body>
                    <label>Label</label>
                    <input
                        type="text" className="form-control"
                        onChange={this.setLabel} style={input_style}
                        value={this.state.label}
                    />

                    <label style={{padding: '0 8px 16px 0'}}>Classification</label>
                    <select id="mls_picker" onChange={this.setClass} value={this.state.class}>
                        <option value="default" disabled>Select...</option>
                        <option value="location">Location</option>
                        <option value="feature">Feature</option>
                        <option value="advanced">Advanced</option>
                    </select>
                    <br/>

                    <label>Rank</label>
                    <input
                        type="text" className="form-control"
                        onChange={this.setRank} style={_.merge({}, input_style, {width: '70px'})}
                        value={this.state.rank}
                    />

                    {
                        this.state.class == 'location' ? (
                            <div>
                                <label>Label Plural</label>
                                <input 
                                    type="text" className="form-control"
                                    onChange={this.setLabelPlural} style={input_style}
                                    value={this.state.label_plural}
                                />

                                <label>Group</label>
                                <input
                                    type="text" className="form-control"
                                    onChange={this.setGroup} style={input_style}
                                    value={this.state.group}
                                />
                            </div>
                        )
                        : false
                    }

                </Modal.Body>
                <Modal.Footer>
                    <Button onClick={this.saveData}>Done</Button>
                    <Button onClick={this.props.hideOptions}>Cancel</Button>
                </Modal.Footer>
            </Modal>
        );
    }
});

App.MLS_Picker = React.createClass({
    render: function () {
        var mls_names = this.props.mls_names;
        return (
            <div>
                <label htmlFor="mls_picker" style={{paddingRight: '8px'}}>MLS:</label>
                <select id="mls_picker" defaultValue="default" onChange={this.props.setActiveMLS}>
                    <option value="default" disabled>Select...</option>
                    {
                        mls_names.map(function (name) {
                            return <option key={name}>{name}</option>
                        })
                    }
                </select>
            </div>
        );
    }
});

App.SearchBar = React.createClass({
    getInitialState: function () {
        var func = _.debounce(() => {
            this.props.handleSearchChange(this.state.value);
        }, 300);

        return {value: null, submit: func};

    },
    handleChange: function (event) {
        this.setState({value: event.target.value});
        this.state.submit();
    },
    render: function () {
        return (
            <div style={{paddingBottom: '16px'}}>
                <label htmlFor="search-input" style={{position: 'relative', top: '39px', left: '13px'}}>
                    <i className="fa fa-search" aria-hidden="true"></i>
                </label>

                <input 
                    type="text" className="form-control" id="search-input" 
                    onChange={this.handleChange} style={{paddingLeft: '40px'}}
                    placeholder="Search columns"
                />
            </div>
        );
    }
});

App.Summary = React.createClass({
    getInitialState: function () {
        return {
            show_modal: false,
            modal_text: null,
            client_name: null,
        };
    },
    generateView: function () {
        if (!this.state.client_name) {
            return;
        }

        var view_str = App.generateView(this.props.mls, this.state.client_name, this.props.data);
        this.setState({show_modal: true, modal_text: view_str});
    },
    closeModal: function () {
        this.setState({show_modal: false});
    },
    handleChange: function (event) {
        this.setState({client_name: event.target.value});
    },
    render: function () {
        var input_style = {
            display: 'inline',
            width: '300px',
            marginRight: '8px',
        };

        var button_style = {
            position: 'relative',
            bottom: '2px',
        };

        return (
            <div style={{position: 'relative', float: 'left', left: '128px'}}>
                <div style={{fontSize: '20px', fontWeight: 'bold'}}>Summary</div>
                <a style={{height: 0, position: 'relative', left: '120px', bottom: '25px'}} href="#" onClick={this.generateView}>Generate SQL</a>

                <input 
                    type="text" className="form-control" id="search-input" 
                    placeholder="Client Name" onChange={this.handleChange}
                    style={{margin: '6px 0 16px 0', width: '222px'}}
                />

                <App.Summary.Table data={this.props.data}/>

                <Modal show={this.state.show_modal} onHide={this.closeModal} dialogClassName="wide-modal">
                    <Modal.Header closeButton>
                        <Modal.Title>view_{this.state.client_name} SQL</Modal.Title>
                    </Modal.Header>
                    <Modal.Body>
                        <pre>{this.state.modal_text}</pre>
                    </Modal.Body>
                    <Modal.Footer>
                        <Button onClick={this.closeModal}>Close</Button>
                    </Modal.Footer>
                </Modal>
            </div>
        );
    }
});

App.Summary.Table = React.createClass({
    render: function () {
        var data = _.sortBy(this.props.data, o => o.rank);

        var location_data = _.filter(data, o => o.class == 'location');
        var feature_data  = _.filter(data, o => o.class == 'feature');
        var advanced_data = _.filter(data, o => o.class == 'advanced');

        var title_style = {
            fontSize: '18px',
            fontWeight: 'bold',
            paddingBottom: '8px',
        };

        return (
            <div>
                {
                    location_data.length ? (
                    <div>
                        <div style={title_style}>Location</div>
                        <table className="table">
                            <thead>
                                <tr>
                                    <th>Rank</th>
                                    <th>Column Name</th>
                                    <th>Label</th>
                                </tr>
                            </thead>
                            <tbody>
                            {
                                location_data.map(function (item) {
                                    return (
                                        <tr key={item.name}>
                                            <td>{item.rank}</td>
                                            <td>{item.name}</td>
                                            <td>{item.label}</td>
                                        </tr>
                                    )
                                })
                            }
                            </tbody>
                        </table>
                    </div>
                    ) : false
                }

                {
                    feature_data.length ? (
                    <div>
                        <div style={title_style}>Feature</div>
                        <table className="table">
                            <thead>
                                <tr>
                                    <th>Rank</th>
                                    <th>Column Name</th>
                                    <th>Label</th>
                                </tr>
                            </thead>
                            <tbody>
                            {
                                feature_data.map(function (item) {
                                    return (
                                        <tr key={item.name}>
                                            <td>{item.rank}</td>
                                            <td>{item.name}</td>
                                            <td>{item.label}</td>
                                        </tr>
                                    )
                                })
                            }
                            </tbody>
                        </table>
                    </div>
                    ) : false
                }

                {
                    advanced_data.length ? (
                    <div>
                        <div style={title_style}>Advanced</div>
                        <table className="table">
                            <thead>
                                <tr>
                                    <th>Rank</th>
                                    <th>Column Name</th>
                                    <th>Label</th>
                                </tr>
                            </thead>
                            <tbody>
                            {
                                advanced_data.map(function (item) {
                                    return (
                                        <tr key={item.name}>
                                            <td>{item.rank}</td>
                                            <td>{item.name}</td>
                                            <td>{item.label}</td>
                                        </tr>
                                    )
                                })
                            }
                            </tbody>
                        </table>
                    </div>
                    ) : false
                }
            </div>
        )
    }
});

App.generateView = function (mls, client_name, data) {
    data = _.sortBy(data, o => o.rank);

    var location_data =
        _.map(
            _.filter(data, o => o.class == 'location'),
            o => App.generateView.formatColumn(o)
        ).join("\n");

    var feature_data = 
        _.map(
            _.filter(data, o => o.class == 'feature'),
            o => App.generateView.formatColumn(o)
        ).join("\n");

    var advanced_data =
        _.map(
            _.filter(data, o => o.class == 'advanced'),
            o => App.generateView.formatColumn(o)
        ).join("\n");

    var str = "DROP VIEW IF EXISTS $MLS.view_$CLIENT;\n" +
              "CREATE OR REPLACE VIEW $MLS.view_$CLIENT AS\n" +
              "SELECT\n" +
              "FILL_ME_IN::integer as area_id,\n" +
              "vl.*,\n" +
              "FROM\n" +
              "$MLS.view_property vl;\n\n" +
              [location_data, feature_data, advanced_data].join("\n\n");

    str = str.replace(/\$MLS/g, mls);
    str = str.replace(/\$CLIENT/g, client_name);

    return str;
}

App.generateView.formatColumn = function (data) {
    var final_data = {};

    if (data.class == 'location') {
        final_data = {
            location: true,
            label: data.label,
            rank:  _.toInteger(data.rank),
            group: data.group,
            label_plural: data.label_plural,
        };
    }
    else if (data.class == 'feature') {
        final_data = {
            feature: true,
            label: data.label,
            rank:  _.toInteger(data.rank),
        };
    }
    else if (data.class == 'advanced') {
        final_data = {
            advanced: true,
            label: data.label,
            rank:  _.toInteger(data.rank),
            input: 'checkbox-group',
        };
    }


    var str = 'COMMENT ON COLUMN $MLS.view_$CLIENT."' + data.name + '"' + "\n" +
              'IS ' + JSON.stringify(final_data) + ';';

    return str;
}