import classes from './BookList.module.css';

export default function BookList() {
    const Books = ['Harry Potter', 'Atomic Habits', 'Think and Grow Rich'];
    return(
        <>
        <div>
            <h2>My Favorite Books</h2>
            <ul>
                <li>{Books[0]}</li>
                <li>{Books[1]}</li>
                <li>{Books[2]}</li>
            </ul>
        </div>
        </>
    )
}