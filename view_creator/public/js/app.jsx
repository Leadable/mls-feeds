App.Main = React.createClass({
    getInitialState: function () {
        return {mls_names: [], active_mls: 'aarretsx', active_mls_data: []};
    },
    componentDidMount: function () {
        $.get('get_mls_names', function (res) {
            this.setState({mls_names: res});
        }.bind(this));

        // REMOVE ME!
        this.load_mls_data();
    },
    load_mls_data: function () {
        $.get('get_mls_data', {mls: this.state.active_mls}, function (res) {
            this.setState({active_mls_data: res});
        }.bind(this));
    },
    render: function () {
        return (
            <div style={{margin: '5px'}}>
                <div>View Creator</div>
                <App.MLS_Picker mls_names={this.state.mls_names}/>
                <App.Workspace data={this.state.active_mls_data} mls={this.state.active_mls}/>
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
                <select id="mls_picker" defaultValue="default">
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
        return {filter: null};
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
            <div style={{width: '800px', width: '800px', left: '25% '}}>
                <App.Workspace.SearchBar handleSearchChange={this.handleSearchChange}/>
                <App.Workspace.Columns data={data} mls={this.props.mls}/>
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
                <label htmlFor="search-input" style={{position: 'absolute', top: '68px', left: '16px'}}>
                    <i className="fa fa-search" aria-hidden="true"></i>
                </label>

                <input type="text" className="form-control" id="search-input" onChange={this.handleChange} style={{paddingLeft: '40px'}}/>
            </div>
        );
    }
})

App.Workspace.Columns = React.createClass({
    getInitialState: function () {
        return {col_data: {}};
    },
    examineCol: function (name, event) {
        event.preventDefault();

        if (this.state.col_data[name]) {
            var loaded = this.state.col_data[name].loaded;
            var show   = this.state.col_data[name].show;

            var col_data = _.clone(this.state.col_data);

            if (!loaded) {
                // ignore clicks until loaded
                return;
            }
            else if (show) {
                // hide the data
                col_data[name].show = false;

            }
            else if (!show) {
                // show the data
                col_data[name].show = true;
            }

            this.setState({col_data: col_data});
        }
        else {
            // set loaded = false, show = true on this item
            var col_data = _.clone(this.state.col_data);
            col_data[name] = {loaded: false, show: true};
            this.setState({col_data: col_data});

            // fetch the data
            $.get('get_col_data', {mls: this.props.mls, col: name}, function (res) {
                var col_data = _.clone(this.state.col_data);
                col_data[name] = _.merge({loaded: true, show: true}, res);
                this.setState({col_data: col_data});
            }.bind(this));
        }       
    },
    render: function () {
        var data = this.props.data;

        return (
            <div style={{width: '450px'}}>
                {
                    data.map(function (col) {
                        var col_data = this.state.col_data[col.name];
                        return (
                            <div key={col.name} className="media" style={{borderBottom: '1px solid #e0e0e0', paddingBottom: '16px'}}>
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

                                    <a href="#" style={{fontSize: '14px'}}>
                                        <i className="fa fa-arrow-right" aria-hidden="true" style={{paddingRight: '4px'}}></i>
                                        Map
                                    </a>

                                    {
                                        col_data && col_data.show ?
                                        <App.Workspace.Columns.ColumnData data={this.state.col_data[col.name]} />
                                        : false
                                    }

                                </div>
                            </div>
                        )
                    }.bind(this))
                }
            </div>
        );
    }
});

App.Workspace.Columns.ColumnData = React.createClass({
    render: function () {
        if (!this.props.data.loaded) {
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

        return (
            <div>
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
                                    <tr>
                                        <td>{data}</td>
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
