import React from 'react'
import Example from './Example'

export default function CheatSheet({cheatSheet}) {
  return (
    <div style={styles.container}>
      <h1>{cheatSheet.title}</h1>
      <p>{cheatSheet.description}</p>
      {cheatSheet.examples.map( ex => <Example example={ex} />)}
    </div>
  )
}

const styles = {
  container: {
    display: "flex",
    flexDirection:'column',
    width:'100%',
    margin:'10px',
    background:'#fcfcfc'
  },
}
