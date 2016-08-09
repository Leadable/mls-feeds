var Modal  = ReactBootstrap.Modal;
var Button = ReactBootstrap.Button;

App.Main = React.createClass({
    getInitialState: function () {
        return {
            mls_names: [],
            active_mls: null,
            active_mls_data: [],
            active_mls_pkey: null,
            load_state: 'idle',

            mapping_data: {},
            save_box_text: '',
            show_clear_prompt: false,
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

        $.get('get_mls_data', {mls: mls_name}, function (res) {
            this.setState({
                active_mls: mls_name,
                active_mls_data: res.cols,
                active_mls_pkey: res.pkey,
                mapping_data: res.mapping_data || {},
                load_state: 'loaded',
            });
        }.bind(this));
    },
    setMapping: function (col_name, val) {
        var mapping_data = _.clone(this.state.mapping_data);

        if (val) {
            mapping_data[col_name] = {
                col_name: col_name,
                val: val,
            };
        }
        else {
            delete mapping_data[col_name];
        }

        this.setState({mapping_data: mapping_data});
        this.saveData(mapping_data);
    },
    saveData: function (data) {
        this.setState({save_box_text: 'Saving...'});

        var params = {
            data: JSON.stringify(data),
            mls: this.state.active_mls
        };

        $.post('persist_data', params, function (res) {
            this.setState({save_box_text: ''});
        }.bind(this));
    },
    clearData: function () {
        this.setState({mapping_data: {}});
        this.saveData({});
    },
    render: function () {
        var save_box_style = {
            display: 'block',
            backgroundColor: 'yellow',
            color: 'black',
            position: 'absolute',
            top: '0',
            left: '50%'
        };

        return (
            <div style={{margin: '5px'}}>
                <div>View Property Creator</div>
                <App.MLS_Picker mls_names={this.state.mls_names} setActiveMLS={this.setActiveMLS}/>
                <App.ClearData mls={this.state.active_mls} clearData={this.clearData}/>

                <div style={save_box_style}>{this.state.save_box_text}</div>

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
                                mls={this.state.active_mls}
                                setMapping={this.setMapping}
                                mapping_data={this.state.mapping_data}
                            />

                            <App.Summary
                                mapping_data={_.values(this.state.mapping_data)}
                                mls={this.state.active_mls}
                                pkey={this.state.active_mls_pkey}
                            />
                        </div>
                    )
                    : false
                }
            </div>
        );
    }
});

App.ClearData = React.createClass({
    getInitialState: function () {
        return {show: false};
    },
    showPrompt: function () {
        this.setState({show: true});
    },
    hidePrompt: function () {
        this.setState({show: false});
    },
    clearData: function () {
        this.hidePrompt();
        this.props.clearData();
    },
    render: function () {
        if (!this.state.show && this.props.mls) {
            var link_style = {
                position: 'relative',
                top: '32px',
                left: '170px',
                zIndex: '2',
            };
            return <a href="#" onClick={this.showPrompt} style={link_style}>Clear Data</a>
        }

        return (
            <Modal show={this.state.show} onHide={this.hidePrompt}>
                <Modal.Header closeButton>
                    <Modal.Title>Clear data for {this.props.mls}?</Modal.Title>
                </Modal.Header>
                <Modal.Body>
                    Do you really want to clear all saved data for {this.props.mls}?
                </Modal.Body>
                <Modal.Footer>
                    <Button onClick={this.clearData}>Yes</Button>
                    <Button onClick={this.hidePrompt}>No</Button>
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
                <label htmlFor="mls_picker">MLS:</label>
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
                    placeholder="Search column names and comments"
                />
            </div>
        );
    }
})

App.Columns = React.createClass({
    getInitialState: function () {
        return {filter: null};
    },
    handleSearchChange: function(val) {
        this.setState({filter: val});
    },
    shouldComponentUpdate: function (next_props, next_state) {
        // prevent redrawing the entire column list unless props or state changes
        if (_.isEqual(next_props, this.props) && _.isEqual(this.state, next_state)) {
            return false;
        }

        return true;
    },
    render: function () {
        var col_data     = this.props.col_data;
        var mapping_data = this.props.mapping_data;

        // apply filter
        if (this.state.filter) {
            var re = new RegExp(this.state.filter, 'i');
            col_data = _.filter(col_data, function (col) {
                if (col.name.match(re)) {
                    return true;
                }
                else if (col.comment && col.comment.match(re)) {
                    return true;
                }

                return false;
            }.bind(this));
        }

        // always filter system columns
        col_data = _.filter(col_data, function (col) {
            return col.name.match(/^__/) === null;
        }.bind(this));

        return (
            <div style={{width: '450px', position: 'relative', float: 'left'}}>
                <div style={{fontSize: '24px', fontWeight: 'bold'}}>Map Columns</div>
                <App.SearchBar handleSearchChange={this.handleSearchChange}/>
                {
                    col_data.map(function (col) {
                        return <App.Columns.ColumnBox 
                                    key={col.name} 
                                    col_data={col}
                                    mls={this.props.mls}
                                    setMapping={this.props.setMapping}
                                    mapping_name={mapping_data[col.name] ? mapping_data[col.name].val : ''}
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
            col_data: {},
            loaded_data: false,
            show_data: false,
            edit_mapping: false,
        };
    },
    examineCol: function (name, event) {
        event.preventDefault();

        if (this.state.loaded_data) {
            if (this.state.show_data) {
                // hide the data
                this.setState({show_data: false});
            }
            else if (!this.state.show_data) {
                // show the data
                this.setState({show_data: true});
            }
        }
        else if (!this.state.loaded_data && this.state.show_data) {
            // in the middle of loading data - ignore click
            return;
        }
        else {
            // set show = true
            this.setState({show_data: true});

            // fetch the data
            $.get('get_col_data', {mls: this.props.mls, col: name}, function (res) {
                this.setState({col_data: res, loaded_data: true});
            }.bind(this));
        }       
    },
    toggleEdit: function (name, event) {
        event.preventDefault();
        this.setState({edit_mapping: !this.state.edit_mapping});
    },
    changeMapping: function (value) {
        this.setState({edit_mapping: false});
        this.props.setMapping(this.props.col_data.name, value);
    },
    render: function () {
        var col = this.props.col_data;

        var mapping_style = {
            fontSize: '16px',
            height: '0',
            position: 'relative',
            bottom: '31px',
            left: '140px',
        };

        var check_style = {
            color: 'green',
            fontSize: '30px',
            position: 'relative',
            bottom: '64px',
            left: '400px',
        };

        return (
            <div className="media" style={{borderBottom: '1px solid #e0e0e0', paddingBottom: '16px'}}>
                <div className="media-left">
                </div>
                <div className="media-body">
                    <div style={{fontSize: '18px', fontWeight: '500'}} className="media-heading">{col.name}</div>
                    <div style={{fontSize: '14px'}}>{col.comment}</div>

                    <a href="#" style={{fontSize: '14px'}} onClick={(event) => this.examineCol(col.name, event)}>
                        <i className="fa fa-table" aria-hidden="true" style={{paddingRight: '4px'}}></i>
                        Examine
                    </a>

                    <span style={{padding: '0px 8px'}}></span>

                    <a href="#" style={{fontSize: '14px'}} onClick={(event) => this.toggleEdit(col.name, event)}>
                        <i className="fa fa-arrow-right" aria-hidden="true" style={{paddingRight: '4px'}}></i>
                        Map
                    </a>

                    <div style={{padding: '4px 0'}}></div>

                    {
                        this.state.edit_mapping ?
                        <App.Columns.ColumnBox.EditMapping
                            name={col.name}
                            changeMapping={this.changeMapping}
                            mapping_name={this.props.mapping_name}
                        />
                        : false
                    }

                    {
                        this.props.mapping_name && !this.state.edit_mapping ?
                        <div style={{height: 0}}>
                            <div style={mapping_style}>Mapping: {this.props.mapping_name}</div>
                            <i style={check_style} className="fa fa-check" aria-hidden="true"></i>
                        </div>
                        : false
                    }

                    {
                        this.state.show_data ?
                        <App.Columns.ColumnBox.ColumnData data={this.state.col_data} loaded={this.state.loaded_data}/>
                        : false
                    }

                </div>
            </div>
        );
    }
});

App.Columns.ColumnBox.ColumnData = React.createClass({
    render: function () {
        if (!this.props.loaded) {
            return <div>Loading...</div>;
        }

        var count_data  = this.props.data.count_rs;
        var sample_data = this.props.data.sample_rs;

        var table_style = {
            display: 'block',
            height: '300px',
            overflowY: 'auto'
        };

        var title_style = {
            fontSize: '16px',
            fontWeight: 'bold',
            padding: '8px 0',
        }

        var i = 0;

        return (
            <div>
                <div style={title_style}>Sample Data</div>
                <table className="table" style={table_style}>
                    <thead>
                        <tr>
                            <th>Value</th>
                        </tr>
                    </thead>
                    <tbody>
                        {
                            sample_data.map(function (data) {
                                return (
                                    <tr key={i++}>
                                        <td>{_.isArray(data) ? data.join(', ') : data}</td>
                                    </tr>
                                );
                            }.bind(this))
                        }
                    </tbody>
                </table>

                <div style={title_style}>Count by Class</div>
                <table className="table" style={table_style}>
                    <thead>
                        <tr>
                            <th>Class Name</th>
                            <th>Count</th>
                        </tr>
                    </thead>
                    <tbody>
                        {
                            count_data.map(function (data) {
                                return (
                                    <tr key={data.name}>
                                        <td>{data.name}</td>
                                        <td>{data.count}</td>
                                    </tr>
                                );
                            }.bind(this))
                        }
                    </tbody>
                </table>
            </div>
        );
    }
});

App.Columns.ColumnBox.EditMapping = React.createClass({
    getInitialState: function () {
        return {value: this.props.mapping_name || ''};
    },
    handleChange: function (event) {
        this.setState({value: event.target.value});
    },
    submit: function () {
        this.props.changeMapping(this.state.value);
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
            <div>
                <input style={input_style} type="text" 
                       className="form-control"
                       onChange={this.handleChange} placeholder="Mapping"
                       value={this.state.value}
                />
                <button style={button_style} type="button" className="btn btn-primary" onClick={this.submit}>Done</button>
            </div>
        )
    }
});

App.Summary = React.createClass({
    getInitialState: function () {
        return {show_modal: false, modal_text: null};
    },
    generateView: function () {
        var view_str = App.generateView(this.props.mls, this.props.mapping_data, this.props.pkey);
        this.setState({show_modal: true, modal_text: view_str});
    },
    closeModal: function () {
        this.setState({show_modal: false});
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
                <div style={{fontSize: '24px', fontWeight: 'bold'}}>Summary</div>
                <a style={{height: 0, position: 'relative', left: '136px', bottom: '28px'}} href="#" onClick={this.generateView}>Generate View</a>

                <App.Summary.Table mapping_data={this.props.mapping_data}/>

                <Modal show={this.state.show_modal} onHide={this.closeModal}>
                    <Modal.Header closeButton>
                        <Modal.Title>view_property SQL</Modal.Title>
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
        var mapping_data = _.sortBy(this.props.mapping_data, o => o.col_name);

        return (
            <table className="table">
                <thead>
                    <tr>
                        <th>Column Name</th>
                        <th>View Name</th>
                    </tr>
                </thead>
                <tbody>
                {
                    mapping_data.map(function (item) {
                        return (
                            <tr key={item.col_name}>
                                <td>{item.col_name}</td>
                                <td>{item.val}</td>
                            </tr>
                        )
                    })
                }
                </tbody>
            </table>
        )
    }
});

App.generateView = function (mls, data, pkey) {
    var system_cols = [
        '__removed_at IS NULL AS __active',
        '__removed_at',
        '__inserted_at',
        '__modified_at',
        'last_transaction_completed_at',
        '__price_updated_at',
        '__price_history_times',
        '__price_history_vals',
        '__percent_reduced',
        '__inserted_at AS age',
        '__geo_geom',
        '__geo_outlier',
        '__geo_modified_at',
        '__status_updated_at',
        '__status_history_times',
        '__status_history_vals',
        '__geo_places',
        '__photo_urls',
    ];

    var cols_str = _.concat(system_cols,
                        _.map(data, o => '"' + o.col_name + '"' + ' as ' + '"' + o.val + '"')
                    ).join(',\n');

    var str = 'DROP VIEW IF EXISTS $MLS.view_property cascade;\n' +
              'CREATE OR REPLACE VIEW $MLS.view_property AS \n' +
              'SELECT \n' + cols_str +
              '\nFROM $MLS."Property" p, $MLS.mutation m\n' +
              'WHERE p."$PKEY"::text = m.remote_id AND\n' +
              'm.last_transaction_completed_at IS NOT NULL;';

    str = str.replace(/\$MLS/g, mls);
    str = str.replace(/\$PKEY/g, pkey);

    return str;
}
