import React from "react";
import Example from "./Example";
import { primary, primaryLight } from "../styles/common";

export default function CheatSheet({ cheatSheet }) {
  return (
    <div style={styles.container}>
      <h1 style={styles.name}>{cheatSheet.title}</h1>
      <p style={styles.description}>{cheatSheet.description}</p>
      <div style={styles.headerContainer}>
        <div style={styles.innerContainer}>
          {cheatSheet.examples.map(ex => (
            <Example example={ex} />
          ))}
        </div>
      </div>
    </div>
  );
}

const styles = {
  container: {
    display: "flex",
    flexDirection: "column",
    width: "100%",
    margin: "10px 5px",
    background: primaryLight,

    textAlign: "justify"
  },
  headerContainer: {
    color: primary
  },
  name: {
    // background:'grey',
    color: primary,

    fontSize: "12px",
    margin: 0,
    padding: "5px 0 2px 5px"
  },
  description: {
    margin: 0,
    fontSize: "8px",
    color: "#666",
    fontWeight: 300,
    padding: "0 0 0 5px"
  },
  innerContainer: {
    background: "#fcfcfc",
    padding: "10px"
  }
};
