import { useState } from 'react'
import './App.css'
import Questions from './prelim/Questions'

function App() {
  const [count, setCount] = useState(0)

  return (
    <>
      <div>
        <Questions isShow={false}/>
      </div>

    </>
  )
}

export default App
