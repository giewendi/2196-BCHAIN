import { useState } from 'react'
import './App.css'
import Hello from './component/Hello'
import Welcome from './component/Welcome'
import TodoList from './component/TodoList'
import MovieList from './component/MovieList'
import BookList from './component/BookList'
import ArrowFunction from './component2/ArrowFunction'
import RainOrShine from './component2/ConditionalRendering'
import RainOrShine2 from './component2/ConditionalRendering2'
import RainOrShine3 from './component2/ConditionalRendering3'

function App() {
  const [count, setCount] = useState(0)

  return (
    <>
      {/* <Hello/>
      <Welcome/>
      <TodoList/>
      <MovieList/>
      <BookList/> */}
      <ArrowFunction />
      <RainOrShine isRainy={true} />
      <RainOrShine2 isRainy={false} />
      <div className='{${isRainy === true ? "dark": "light"}}'>
        <RainOrShine3/>
      </div>
    </>
  )
}

export default App
