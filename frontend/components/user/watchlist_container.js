import { connect } from "react-redux"
import { fetchUser } from "../../actions/session_actions"
import  Watchlist  from "./watchlist"
export const mSTP = ( {session} ) =>{
    const { currentUser } = session 
    return {
        user: currentUser
    }
}
export const mDTP = dispatch =>{
   return {
        fetchUser: (id) => dispatch(fetchUser(id))
    } 
}

export default connect(mSTP, mDTP)(Watchlist)