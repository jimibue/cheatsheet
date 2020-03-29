import React, { useState, useEffect } from "react";
import logo from "./logo.svg";
import "./App.css";
import axios from "axios";
import Navbar from "./components/navbar";
import CheatSheetContainer from "./components/CheatSheetContainer";

function App() {
  const [items, setItems] = useState([]);
  useEffect(() => {
    axios.get("/api/items").then(res => {
      setItems(res.data);
    });
  }, []);

  return (
    <>
   
      <div className="App">
      <Navbar />
      <CheatSheetContainer />
      </div>
    </>
  );
}

export default App;
