import React from "react"
import { Link } from "react-router-dom"

const EpisodeItem = ({ episode }) => {
    debugger
    // turn this entire div into a link
   
    return (
        <>
            <Link to={{
                pathname: `/episode/${episode.id}`,
                state: {
                    animeId: episode.id
                }
            }}>



                <div>
                    <div className="display-background-img"
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

                    {this.mapAnimes()}
                </div>


            <div className="Gradient"> </div>
                 
                 <img className="display-anime-photo" src={episode.photoUrl} alt="episode_img" />
                <div>
                    <h1 className="display-anime-name">E1 - {episode.name}</h1>
                    <p>{episode.description}</p>
                </div>
            </Link> 
            
        </>
    )
}

export default EpisodeItem;