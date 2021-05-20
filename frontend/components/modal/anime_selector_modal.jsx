import React from "react"
import { selectAnimeByCategory, selectAllAnimes } from "../../selectors/genre_selector"

class AnimeSelectorModal extends React.Component {
    constructor(props){
        super(props)
       
        this.state = {
            animes: props.animes,
            genres: [],
            input: ""
        }
        
        debugger
    }

    componentDidMount(){
        debugger
       if ( Object.keys(this.state.animes) < 18) {
           debugger
           this.props.fetchAnimes()
           this.setState({
               animes: this.props.animes
           })
           debugger
       } 
     
    }

    grabAnime(e){
        debugger
        this.setState({
            input: e.target.value
        })
        debugger
        let array = [];
        let animeArray = selectAnimeByCategory(this.props.animes, this.state.genres)
        debugger
        animeArray.forEach(anime =>
        {
            if (!e.target.value) return
            let string = e.target.value[0].toUpperCase().concat(e.target.value.slice(1).toLowerCase())
            if (anime.name.startsWith(string)) array.push(anime)
        })

        this.setState({
            animes: array
        })
        debugger
    }
    

    mappedAnime(){
        debugger
        if (Array.isArray(this.state.animes) === false) {
            return (
                <div> </div>
            )
        }

      return  this.state.animes.map((anime, idx) => {
            return <img key={idx} src={anime.photoUrl} />
        }) 
    }

    changeGenres(genre, e){
        debugger
       if (!this.state.genres.includes(genre)) {
           this.state.genres.push(genre)
           e.target.classList.remove("off")
           e.target.classList.add("on")
           
       }
       else {
           const newArray = []
            const id = this.state.genres.findIndex((resp) => resp === genre)
           newArray.concat(this.state.genres.slice(0, id), this.state.genres.slice(0, id))
           this.setState({
               genres: newArray
           })
            e.target.classList.add("off")
            e.target.classList.remove("on")
       }
    }

    

    render(){
        debugger
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
            <div className="search-anime">
                {allAnime}
            </div>
        </div>
    )}

}

export default AnimeSelectorModal;