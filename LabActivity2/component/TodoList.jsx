import React from "react";
import classes from './TodoList.module.css';

class TodoList extends React.Component{
    render(){
        const Todo = ['Code', 'Carwash', 'Work'];
        return(
            <div class="todo">
                <h2>My To-Do List</h2>
                <ul>
                    <li>{Todo[0]}</li>
                    <li>{Todo[1]}</li>
                    <li>{Todo[2]}</li>
                </ul>
            </div>
        )
    }
}

export default TodoList;