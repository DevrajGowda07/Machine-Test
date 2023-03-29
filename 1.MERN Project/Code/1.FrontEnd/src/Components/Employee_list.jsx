import { useEffect, useState } from "react";

import "../Styles/Employeelist.css";

const Employeelist = () => {

    let [del, setdel] = useState([])
    useEffect(()=>{
        let fetchData = async() =>{
            let response = await fetch("http://localhost:3000/data")
            let data = await response.json()
            setdel(data)
        }
        fetchData()
    }, [del])
    return(
        <>
        <div className="list">
        <table>
                <thead>
                    <tr>
                    <th>Id</th>
                    <th>Image</th>
                    <th>Name</th>
                    <th>Email</th>
                    <th>Mobile No</th>
                    <th>Designation</th>
                    <th>Gender</th>
                    <th>Course</th>
                    <th>Create date</th>
                    <th>Action</th>
                </tr>
                </thead>
                <tbody>
                    {
                        del.map((current)=>(
                            <tr>
                                <td>{current.id}</td>
                                <td><img src={current.img} alt="" width="50" height="50" /></td>
                                <td>{current.name}</td>
                                <td>{current.email}</td>
                                <td>{current.mobile}</td>
                                <td>{current.designation}</td>
                                <td>{current.gender}</td>
                                <td>{current.course}</td>
                                <td>{new Date().toLocaleString()}</td>
                                <td>
                                    <button className="btn btn-primary">Edit</button>
                                    <button className="btn btn-danger">Delete</button>
                                </td>
                            </tr>
                        ))
                    }
                </tbody>
        </table>
        </div>
        </>
    )
}

export default Employeelist;