import { useState } from "react";
import { useNavigate } from "react-router-dom";
import axios from "axios";

import "../Styles/Login.css";

const Login = () =>{
    let [email,setemail] = useState('')
    let [password,setpassword] = useState('')

    let navigate = useNavigate()

    let handleSubmit = (e) =>{
        e.preventDefault()

        let data = {email, password}

        if(email && password){
            axios.post("http://localhost:3000/login", data)
            .then(res=>{
                alert(res.data.message)
                navigate('/dashboard')
            }).catch(err=>{
                alert(err.data.message)
            })
        }
        else{
            alert("Invalid login! Try Again")
        }
    }

    return(
        <>
        <div className="log">
        <div className="login">
            <h1>Login</h1>
            <form action="" onSubmit={handleSubmit}>
                <div className="email w-75 m-4">
                    <label htmlFor="">Email</label>
                    <input type="text" className="form-control" name="email" value={email} onChange={(e)=>setemail(e.target.value)} />
                </div>
                <div className="password w-75 m-4">
                    <label htmlFor="">Password</label>
                    <input type="password" className="form-control" name="password" value={password} onChange={(e)=>setpassword(e.target.value)} />
                </div>
                <button className="btn btn-success">Login</button>
            </form>
        </div>
        </div>
        </>
    )
}

export default Login;