import { Link } from "react-router-dom";

import "../Styles/Navbar.css";

const Navbar = () =>{
    return(
        <>
        <div className="menu">
            <img src="Images/logp.jpg" alt="" width='100' height="70" />
            <div className="navbar">
                <Link className="nav-link" to="/">Login</Link>
                <Link className="nav-link" to="/dashboard">Dashboard</Link>
                <Link className="nav-link" to="/create_employee">Create_Employee</Link>
                <Link className="nav-link" to="/employee_list">Employee_List</Link>
            </div>
        </div>
        </>
    )
}
export default Navbar;