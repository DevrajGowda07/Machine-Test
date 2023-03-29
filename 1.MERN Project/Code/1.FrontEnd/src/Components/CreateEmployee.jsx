import { useState } from "react";
import { useNavigate } from "react-router-dom";
import "../Styles/create_emp.css";

const CreateEmployee = () =>{
    let [name, setname] = useState('')
    let [email, setemail] = useState('')
    let [mobile, setmobile] = useState('')
    let [designation, setdesignation] = useState('')
    let [gender, setgender] = useState('')
    let [course, setcourse] = useState('')
    let [img, setimg] = useState('')
    
    let navigate = useNavigate()

    let handleSubmit = (e) =>{
        e.preventDefault()

        let emp_data = {name, email, mobile, designation}

        fetch("http://localhost:3000/data", {
            method: "POST",
            headers: { "Content-Type" : "application/json" },
            body: JSON.stringify(emp_data)
        })
        alert("Data Added")
        navigate("/employee_list")
    }

    return(
        <>
        <div className="c_emp">
            <div className="form">
            <form action="" onSubmit={handleSubmit}>
                <div className="name">
                    <label htmlFor="">Name</label>
                    <input type="text" className="form-control m-2 w-75" name="name" value={name} onChange={(e)=> setname(e.target.value)} />
                </div>
                <div className="email">
                    <label htmlFor="">Email</label>
                    <input type="text" className="form-control m-2 w-75" name="email" value={email} onChange={(e)=> setemail(e.target.value)} />
                </div>
                <div className="mobile">
                    <label htmlFor="">Mobile no</label>
                    <input type="number" min={10}  className="form-control m-2 w-75" name="mobile" value={mobile} onChange={(e)=> setmobile(e.target.value)} />
                </div>
                <div className="desigation">
                    <label htmlFor="">Designation</label>
                    <select className="form-select w-75 m-2" value={designation} onChange={(e)=> setdesignation(e.target.value)}>
                        <option>---Select---</option>
                        <option>Manager</option>
                        <option>Engineer</option>
                        <option>HR</option>
                        <option>Sales</option>
                        <option>Others</option>
                    </select>
                </div>
                <div className="gender m-2">
                    <label  htmlFor="">Gender</label>
                    <input type="radio" className="m-2" name="male" value={gender} onChange={(e)=> setgender(e.target.value)}  />
                    <label htmlFor="">Male</label>

                    <input type="radio" className="m-2" name="female" value={gender} onChange={(e)=> setgender(e.target.value)} />
                    <label htmlFor="">Female</label>
                </div>
                <div className="Coures">
                    <label htmlFor="">Course</label>
                    <input type="checkbox" className="m-2" name="mca" value={course} onChange={(e)=>setcourse(e.target.value)} />
                    <label htmlFor="">MCA</label>
                    <input type="checkbox" className="m-2" name="bsc" value={course} onChange={(e)=>setcourse(e.target.value)} />
                    <label htmlFor="">BSC</label>
                    <input type="checkbox" className="m-2" name="bca" value={course} onChange={(e)=>setcourse(e.target.value)} />
                    <label htmlFor="">BCA</label>
                </div>
                <div className="img mt-3">
                    <label htmlFor="">Img upload</label>
                    <input type="file" name="img" width="100" height="100" value={img} onChange={(e)=> setimg(e.target.value)} />
                </div>
            <button className="btn btn-primary m-3">Create Employee</button>

            </form>
            </div>
            <div className="form_img">
                <img src="Images/emp5.jpg" alt="" height="550" />
            </div>

        </div>
        </>
    )
}
export default CreateEmployee;