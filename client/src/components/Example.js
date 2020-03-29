import React from 'react'

export default function Example({example}) {
  return (
    <div style={styles.container}>
      <p>{example.title}</p>
      <p>{example.description}</p>
      <div>
        {example.code_snippet}
      </div>
    </div>
  )
}


const styles = {
  container: {

    margin:'10px',
    background:'#d3d3d3'
  },
}