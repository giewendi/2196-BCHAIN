function Correct() {
    return <h3 className="correct">Correct!</h3>;
  }

function Incorrect() {
    return <h3 className="incorrect">Incorrect!</h3>;
  }
  
function BibleQuiz(props){
    const showAnswer = props.showAnswer;
    return showAnswer ? <Correct /> : <Incorrect />;
}

export default BibleQuiz;