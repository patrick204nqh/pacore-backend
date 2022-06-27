class Table extends React.Component {
  constructor(props, context) {
    super(props, context);
    this.state = {
      users: this.props.users
    }
  }
  render() {
    return (
      <table>
        <thead>
          <tr>
            <th>Id</th>
            <th>Email</th>
          </tr>
        </thead>
        <Users users={this.state.users} />
      </table>
    )
  };
}
