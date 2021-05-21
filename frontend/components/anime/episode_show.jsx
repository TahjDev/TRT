import React from "react"
import EpisodeShowItem from "./episode_show_item"
import { postWatchList } from "../../utils/watchlist_util"
import { fetchEpisode } from "../../utils/anime_utils"
import Reactpip from 'react-picture-in-picture'

class EpisodeShow extends React.Component {
    constructor(props) {
        super(props)
        this.state = ({
            active: false
        })
        this.togglePip = this.togglePip.bind(this)
    }

    componentDidMount() {
        
        fetchEpisode(this.props.epId)
        .then(ep => {this.props.fetchAnime(ep.animeId)})
    }

    mappedEpisodes() {
        return this.props.anime.episodes.map(ep => {
            const id = Object.values(ep)[0].id
            const episode = ep[id]
            
            return (
                <EpisodeShowItem
                    key={id}
                    episode={episode}
                    anime={this.props.anime}
                    user={this.props.user}
                />
            ) 
        })
    }

    currentEpisode(){
        
        let current;
        this.props.anime.episodes.forEach( ep => {
            const id = Object.values(ep)[0].id
            const episode = ep[id]
            if (this.props.match.params.id == id) current = episode
        });
        return current;
    }

    asyncFunction(){
        setTimeout(() => this.setState({active: true}), 1000)
    }

    togglePip(){
        
       if ( this.state.active === true) {

           this.setState({
               active: false
           })
           this.asyncFunction()
       }  
       else if (this.state.active === false) {
           
           this.setState({
               active: true
           })
       }
        
    }

    videoElement(currentEp){
     return  (  <>
        <div className="video">
             <Reactpip className="actual-video" isActive={this.state.active} >
                 <source  muted controls src={currentEp.videoUrl}/>
            </Reactpip>
        </div>
         <button id="toggle-button" onClick={() => this.togglePip()}>
             Toggle Picture in Picture
            </button>
        


         <div className="anime">
             
             
                 {this.mappedEpisodes()}
            
         </div>
         
        </>)

    }


    render() {
        
        if (this.props.anime === undefined) return null
        
        const currentEp = this.currentEpisode()
        return (
            <>
            {this.videoElement(currentEp)}
                
            </>
        )
    }

}

export default EpisodeShow;