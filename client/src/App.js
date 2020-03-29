import React, {useState, useEffect} from 'react';
import logo from './logo.svg';
import './App.css';
import axios from 'axios'

function App() {
  const [items, setItems] = useState([])
  useEffect(()=>{
    axios.get('/api/items').then((res)=>{setItems(res.data)})
  },[])
  return (
    <div className="App">
      {items.map(i => <p key={`item-${i.id}`}>{i.name}</p>)}
    </div>
  );
}

export default App;
