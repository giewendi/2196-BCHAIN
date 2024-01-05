import { useState } from 'react'
import reactLogo from './assets/react.svg'
import viteLogo from '/vite.svg'
import './App.css'
import Hello from './component/Hello'
import Welcome from './component/Welcome'
import TodoList from './component/TodoList'
import MovieList from './component/MovieList'
import BookList from './component/BookList'

function App() {
  const [count, setCount] = useState(0)

  return (
    <>
      <Hello/>
      <Welcome/>
      <TodoList/>
      <MovieList/>
      <BookList/>
    </>
  )
}

export default App
