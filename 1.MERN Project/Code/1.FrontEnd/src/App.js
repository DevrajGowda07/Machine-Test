import { BrowserRouter, Routes, Route} from "react-router-dom";

import Login from "./Components/Login";
import Dashboard from "./Components/Dashboard";
import CreateEmployee from "./Components/CreateEmployee";
import Employeelist from "./Components/Employee_list";
import Navbar from "./Components/Navbar";
import Error from "./Components/Error";

const App = () =>{
    return(
        <>
        <BrowserRouter>
        <Navbar />
         <Routes>
            <Route path="/" element={<Login />} />
            <Route path="/dashboard" element={<Dashboard />} />
            <Route path="/create_employee" element={<CreateEmployee />} />
            <Route path="/employee_list" element={<Employeelist />} />
            <Route path="*" element={<Error /> } />
        </Routes>
        </BrowserRouter>
        </>
    )
}
export default App;