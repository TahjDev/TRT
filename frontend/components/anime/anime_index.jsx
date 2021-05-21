import React from "react"
import AnimeIndexItem from "./anime_index_item"
import AnimeGridItem from "./anime_grid_anime"

class AnimeIndex extends React.Component {
    componentDidMount(){
        
        this.props.fetchAnimes()
    }

    mapAnimes(){
        
      return  this.props.animes.slice(1).map(anime => {
          return ( 
          <AnimeGridItem key={anime.id} anime={anime}/>
          )
        })
    }

    changeBackground(e){
        e.target.style.background
    }

    render() {
       
        if (this.props.animes.length === 0) return null 
       return (
        <div>
            <div className="display-background-img-signup" 
                   style={{
                       backgroundImage:
                           `url(${this.props.animes[0].backgroundPhoto})`
                   }}>
                <div className="gradient">
                    <div className="displayed-anime"    >
                        <AnimeIndexItem 
                        key={this.props.animes[0].id}
                        name={"display-anime-name"}
                        photo={"display-anime-photo"}
                        body={"display-body"}
                         anime={this.props.animes[0]}
                           />     
                    </div>
                </div>

            </div>
            <div className="anime-grid">
                {this.mapAnimes()}
            </div>
        </div>
       )
    }
}

export default AnimeIndex