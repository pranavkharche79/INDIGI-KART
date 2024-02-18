import { useSelector } from "react-redux";

function Header(){
    const state=useSelector((state)=>state);
    console.log("Header ",state.loggedin.Username)
    return (
        <div className="jumbotron p-3 mb-0 rounded-0 bg-dark text-white">
            <img src={'/IndiGIKart.png'} style={{width:"150px",height:"100px"}} className="float-left"/>
            {state.loggedin.IsLoggedIn ?
            <>
            <h5 className="float-right">Welcome {state.loggedin.Username }</h5> </>:
            ''}
            <h1 className="text-center"  >Welcome to IndiGI-Kart</h1>
            <div className="clearfix"></div>
        </div>
    )
}

export default Header;