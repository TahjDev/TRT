import React from "react"
import AnimeIndexItem from "./anime_index_item"

class AnimeIndex extends React.Component {
    componentDidMount(){
        
        this.props.fetchAnimes()
    }

    mapAnimes(){
        
      return  this.props.animes.map(anime => {
          return ( 
          <AnimeIndexItem key={anime.id} anime={anime}/>
          )
        })
    }

    render() {
        if (this.props.animes.length === 0) return null 
       return (
        <div>

            {this.mapAnimes()}
        </div>
       )
    }
}

export default AnimeIndex