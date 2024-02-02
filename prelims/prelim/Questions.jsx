import React from 'react';
import BibleQuiz from './BibleQuiz'

export default function Questions(show) {
    show=false;
  if (show){
    return <>
      <div>
        <h1>The Bible Quiz</h1>
        <h2>The Bible Consists of the Old and New Testaments.</h2>
            <BibleQuiz showAnswer={true} />
        <h2>Moses led the Israelites out of Egypt.</h2>
            <BibleQuiz showAnswer={true}/>
        <h2>The Sermon on the Mount is found in the Book of Luke.</h2>
            <BibleQuiz showAnswer={false}/>
      </div>
    </>
  }
  else{
    return<>
    <div>
        <h1>The Bible Quiz</h1>
        <h2>The Bible Consists of the Old and New Testaments.</h2>
        <h2>Moses led the Israelites out of Egypt.</h2>
        <h2>The Sermon on the Mount is found in the Book of Luke.</h2>
    </div>
    </>
  };
    
}
