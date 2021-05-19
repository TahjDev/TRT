import React from "react"

class AnimeSelectorModal extends React.Component {
    constructor(props){
        super(props)
        this.grabAnime = this.grabAnime.bind(this)
    }

    componentDidMount(){
        this.props.animes ? this.props.fetchAnime() : null
    }

    grabAnime(){
        this.props.fetchAnime()
    }

    mappedAnime(){
      return  this.props.anime.forEach((anime, idx) => {
            return <img key={idx} src={anime.photoUrl} />
        }) 
    }

    changeGenres(genre, e){
       if (!this.props.genres.includes(genre)) {
           this.props.receiveGenre(genre)
           e.classList.remove("off")
           e.classList.add("on")
       }
       else {
            this.props.removeGenre(genre)
            e.classList.add("off")
            e.classList.remove("on")
       }
    }

    

    render(){
    
     return(   <>
            <input OnChange={() => this.grabAnime()} type="text" placeholder="search..."/>
            <div className="categories">
             <button onClick={()  => this.changeGenres("Fighting")} className="off">
                    
                </button   >
             <button onClick={() => this.changeGenres("Adventure")} className="off">

                </button>
             <button onClick={() => this.changeGenres("Mystery")} className="off">

                </button>
             <button onClick={() => this.changeGenres("thriller")} className="off">

                </button>
             <button onClick={() => this.changeGenres("light-hearted")} className="off">

                </button>
             <button onClick={() => this.changeGenres("Magic")} className="off">

                </button>
            </div>
        </>
    )}

}

export default AnimeSelectorModal;