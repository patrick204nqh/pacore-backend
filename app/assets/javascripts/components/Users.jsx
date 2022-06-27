class Users extends React.Component {
  render() {
    var users = this.props.users.map((user) => {
      return (
        <tr key={user.id}>
          <td>{user.id}</td>
          <td>{user.email}</td>
        </tr>
      )
    })

    return(
      <tbody>
        {users}
      </tbody>
    )
  }
}
