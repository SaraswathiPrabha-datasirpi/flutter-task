import React from 'react';
import ReactDOM from 'react-dom';
import Counter from './Counter';

function App() {
  return (
    <div>
      <Counter />
    </div>
  );
}

ReactDOM.render(<App />, document.getElementById('root'));
