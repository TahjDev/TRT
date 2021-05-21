import React from "react"
import { selectAnimeByCategory, selectAllAnimes } from "../../selectors/genre_selector"
import AnimeGridItem from "../anime/anime_grid_anime"

class AnimeSelectorModal extends React.Component {
    constructor(props){
        super(props)
       
        this.state = {
            animes: props.animes,
            genres: [],
            input: ""
        }
        
        
    }

    componentDidMount(){
        
       if ( Object.keys(this.state.animes) < 18) {
           
           this.props.fetchAnimes()
           this.setState({
               animes: this.props.animes
           })
           
       } 
     
    }

    grabAnime(e){
        if (e) {
            this.setState({
                input: e.target.value
            })

        }
        
        let array = [];
        let animeArray = selectAnimeByCategory(this.props.animes, this.state.genres)
        
        animeArray.forEach(anime =>
        {
            if (!e) {
                array = [...animeArray]
                return
            }
            let string = e.target.value[0].toUpperCase().concat(e.target.value.slice(1).toLowerCase())
            if (anime.name.startsWith(string)) array.push(anime)
        })
        
        this.setState({
            animes: array
        })
        
    }
    

    mappedAnime(){
        
        if (Array.isArray(this.state.animes) === false) {
            return (
                <div> </div>
            )
        }

      return  this.state.animes.map((anime, idx) => {
            return (

                <AnimeGridItem key={anime.id} anime={anime}/>
            ) 
          
        }) 
    }

    changeGenres(genre, e){
        
       if (!this.state.genres.includes(genre)) {
           this.state.genres.push(genre)
           e.target.classList.toggle("on")
           
       }
       else {
           const newArray = []
            const id = this.state.genres.findIndex((resp) => resp === genre)
           newArray.concat(this.state.genres.slice(0, id), this.state.genres.slice(0, id))
           this.setState({
               genres: newArray
           })
            e.target.classList.toggle("on")
       }
        this.grabAnime()
    }

    

    render(){
        
        // if (Obthis.state.animes ) return null
        const allAnime = this.mappedAnime()
     return(   
     <div id="search-modal-color-background">
            <input onChange={(e) => this.grabAnime(e)} type="text" value={this.state.input} placeholder="search..."/>
            <div className="categories">
             <button onClick={(e)  => this.changeGenres("Fighting", e)} className="off">
                    Fighting
                </button   >
             <button onClick={(e) => this.changeGenres("Adventure", e)} className="off">
                    Adventure
                </button>
             <button onClick={(e) => this.changeGenres("Mystery", e)} className="off">
                    Mystery
                </button>
             <button onClick={() => this.changeGenres("thriller", e)} className="off">
                    thriller
                </button>
             <button onClick={(e) => this.changeGenres("light-hearted", e)} className="off">
                    light-hearted
                </button>
             <button onClick={(e) => this.changeGenres("Magic", e)} className="off">
                    Magic
                </button>
            </div>
             <div className="anime-selector-grid">
                {allAnime}
            </div>
        </div>
    )}

}

export default AnimeSelectorModal;