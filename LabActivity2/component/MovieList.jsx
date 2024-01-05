import React from "react";
import classes from './MovieList.module.css';

class MovieList extends React.Component{
    render(){
        const Movies = ['Avatar', 'Avengers', 'Justice League'];
        return(
            <div class="todo">
                <h2>My Movie List</h2>
                <ul>
                    <li>{Movies[0]}</li>
                    <li>{Movies[1]}</li>
                    <li>{Movies[2]}</li>
                </ul>
            </div>
        )
    }
}

export default MovieList;