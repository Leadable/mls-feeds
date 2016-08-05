var Modal  = ReactBootstrap.Modal;
var Button = ReactBootstrap.Button;

App.Main = React.createClass({
    getInitialState: function () {
        return {
            mls_names: [],
            active_mls: null,
            active_mls_data: [],
            active_mls_pkey: null,
        };
    },
    componentDidMount: function () {
        $.get('get_mls_names', function (res) {
            this.setState({mls_names: res});
        }.bind(this));
    },
    setActiveMLS: function (event) {
        var mls_name = event.target.value;

        $.get('get_mls_data', {mls: mls_name}, function (res) {
            this.setState({
                active_mls: mls_name,
                active_mls_data: res.cols,
                active_mls_pkey: res.pkey,
            });
        }.bind(this));
    },
    render: function () {
        return (
            <div style={{margin: '5px'}}>
                <div>View Creator</div>
                <App.MLS_Picker mls_names={this.state.mls_names} setActiveMLS={this.setActiveMLS}/>
                <App.Workspace
                    data={this.state.active_mls_data}
                    mls={this.state.active_mls}
                    pkey={this.state.active_mls_pkey}
                />
            </div>
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

App.Workspace = React.createClass({
    getInitialState: function () {
        return {mapping_data: {}};
    },
    setMapping: function (col_name, val) {
        var mapping_data = _.clone(this.state.mapping_data);
        mapping_data[col_name] = {
            col_name: col_name,
            val: val,
        };

        this.setState({mapping_data: mapping_data});
    },
    render: function () {
        return (
            <div>
                <App.Workspace.Columns
                    data={this.props.data}
                    mls={this.props.mls}
                    setMapping={this.setMapping}
                />

                <App.Workspace.Summary
                    mapping_data={_.values(this.state.mapping_data)}
                    mls={this.props.mls}
                    pkey={this.props.pkey}
                />
            </div>
        );
    }
});

App.Workspace.SearchBar = React.createClass({
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

                <input type="text" className="form-control" id="search-input" onChange={this.handleChange} style={{paddingLeft: '40px'}}/>
            </div>
        );
    }
})

App.Workspace.Columns = React.createClass({
    getInitialState: function () {
        return {filter: null};
    },
    shouldComponentUpdate: function (next_props) {
        // todo: prevent updates when mapping_data changes
        return true;
    },
    handleSearchChange: function(val) {
        this.setState({filter: val});
    },
    render: function () {
        var data = this.props.data;

        // apply filter
        if (this.state.filter) {
            var re = new RegExp(this.state.filter, 'i');
            data = _.filter(data, function (col) {
                return col.name.match(re);
            }.bind(this));
        }

        // always filter system columns
        data = _.filter(data, function (col) {
            return col.name.match(/^__/) === null;
        }.bind(this));

        return (
            <div style={{width: '450px', position: 'relative', float: 'left'}}>
                <App.Workspace.SearchBar handleSearchChange={this.handleSearchChange}/>
                {
                    data.map(function (col) {
                        return <App.Workspace.Columns.ColumnBox 
                                    key={col.name} 
                                    col_data={col}
                                    mls={this.props.mls}
                                    setMapping={this.props.setMapping}
                                />
                    }.bind(this))
                }
            </div>
        );
    }
});

App.Workspace.Columns.ColumnBox = React.createClass({
    getInitialState: function () {
        return {
            col_data: {},
            loaded_data: false,
            show_data: false,
            edit_mapping: false,
            mapping_name: null,
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
    mapCol: function (name, event) {
        event.preventDefault();
        this.setState({edit_mapping: true});
    },
    changeMapping: function (value) {
        this.setState({mapping_name: value, edit_mapping: false});
        this.props.setMapping(this.props.col_data.name, value);
    },
    render: function () {
        var col = this.props.col_data;

        var mapping_style = {
            fontSize: '16px',
            height: '0',
            position: 'relative',
            bottom: '78px',
            left: '200px',
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

                    <a href="#" style={{fontSize: '14px'}} onClick={(event) => this.mapCol(col.name, event)}>
                        <i className="fa fa-arrow-right" aria-hidden="true" style={{paddingRight: '4px'}}></i>
                        Map
                    </a>

                    <div style={{padding: '4px 0'}}></div>

                    {
                        this.state.edit_mapping ?
                        <App.Workspace.Columns.ColumnBox.EditMapping
                            name={col.name}
                            changeMapping={this.changeMapping}
                            mapping_name={this.state.mapping_name}
                        />
                        : false
                    }

                    {
                        this.state.mapping_name && !this.state.edit_mapping ?
                        <div style={mapping_style}>Mapping: {this.state.mapping_name}</div>
                        : false
                    }

                    {
                        this.state.show_data ?
                        <App.Workspace.Columns.ColumnBox.ColumnData data={this.state.col_data} loaded={this.state.loaded_data}/>
                        : false
                    }

                </div>
            </div>
        );
    }
});

App.Workspace.Columns.ColumnBox.ColumnData = React.createClass({
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
                                        <td>{data}</td>
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

App.Workspace.Columns.ColumnBox.EditMapping = React.createClass({
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

App.Workspace.Summary = React.createClass({
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
            <div style={{position: 'relative', float: 'left', left: '128px', top: '32px'}}>
                <div style={{fontSize: '24px', fontWeight: 'bold'}}>Summary</div>
                <a style={{height: 0, position: 'relative', left: '136px', bottom: '28px'}} href="#" onClick={this.generateView}>Generate View</a>

                <App.Workspace.Summary.Table mapping_data={this.props.mapping_data}/>

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

App.Workspace.Summary.Table = React.createClass({
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
