import React from 'react';

export default function Questionnaire() {
  const correctAnswer = () => {
    alert('You are correct!');
  };
  const wrongAnswer = () => {
    alert('Try again!');
  };
  return (
    <>
      <div>
        <h2>What is the rank 1 crypto currency?</h2>
        <button onClick={wrongAnswer}>a. Ethereum</button>
        <button onClick={wrongAnswer}>b. Dogecoin</button>
        <button onClick={correctAnswer}>c. Bitcoin</button>
        <button onClick={wrongAnswer}>d. XRP</button>
      </div>
    </>
  );
}
