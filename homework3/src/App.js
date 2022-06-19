import './App.css';
import React, { useState } from 'react';

export default function App() {

  let i = 0;
  let [toDoList, setToDoList] = useState([{ date: Date(), text: "To Do List 📝" }]);
  

  function checkEnter(e) {
    let message = e.target.value;

    if (e.key === "Enter" && message !== "") 
    {
      let Add = [...toDoList];
      Add.push({ date: Date(), text: message });
      setToDoList(Add);
      e.target.value = "";

    
    } else if (e.key === "Enter" && message === "") {
      e.target.value = "";
      alert("NO ToDoList");
    }
  }

  function deleteList(x) {
    let ans = toDoList.filter((y) => y.text !== x.text);
    setToDoList(ans);
  }

  return (
    <div>
      <div>
        {toDoList.map((x) => (
          <div className="onBox">
            <p>{x.date}</p>
            <p>{x.text}</p>
            <button onClick={() => deleteList(x)}>Delete</button>
          </div>
        ))}
      </div>

      <input className="note" type="text" onKeyDown={checkEnter}></input>
    </div>
  );
}
