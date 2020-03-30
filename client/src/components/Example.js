import React from 'react'
import SyntaxHighlighter from 'react-syntax-highlighter';
import { docco, dark,codepenEmbed, vs2015} from 'react-syntax-highlighter/dist/esm/styles/hljs';
import { primary, primaryLight } from '../styles/common';

export default function Example({example}) {
  return (
    <div style={styles.container}>
      <div style={styles.header}>
      <p style={styles.h1}>{example.title}</p>
      <p style={styles.p}>{example.description}</p>
      </div>
      <SyntaxHighlighter language="javascript" style={docco} customStyle={styles.custom}>
        {example.code_snippet}
      </SyntaxHighlighter>
    </div>
  )
}


const styles = {
  container: {
    display:'block',
    textAlign: 'justify',
    // alignItems:'flexStart',
    // justifyItems:'flexStart',
    // alignContent:'flexStart',
    // flexDirection:'column',
    // margin:'10px',
    marginBottom:'5px',
    background:'#f3f3fa',
    margin:'3px 3px 15px 3px',
    boxShadow:'2px 2px 2px #f1f1fc'
  },
  h1:{
    margin:0,
    fontSize:'12px',
    // color:'#666',
    fontWeight:400, 
    padding:'0 0 0 5px'
  },
  p:{
    margin:0,
    fontSize:'8px',
    color:primaryLight,
    fontWeight:400, 
    padding:'0 0 0 5px'
  },
  header:{
    background:primary,
    color:'white'
  },
    name:{
    // background:'grey',
    color:primary,
    
    fontSize:'12px',
    margin:0,
    // padding:'5px 0 5px 5px'
  },
  description:{
    margin:0,
    fontSize:'10px',
    // color:'#666',
    fontWeight:300, 
    padding:'0 0 0 5px'
  },
  custom:{
    // display:'flex',
    fontSize:'8px',
    // alignItems:'flexStart',
    // alignText:'left'
    textAlign: 'justify',
    margin:'0 5px',
    background:'#f3f3fa',
    // background:'green'
  }
}

// const styles = {
//   container: {
//     display: "flex",
//     flexDirection:'column',
//     width:'100%',
//     margin:'10px',

//     textAlign:'justify'
//   },
//   name:{
//     // background:'grey',
//     color:primary,
    
//     fontSize:'12px',
//     margin:0,
//     padding:'5px 0 5px 5px'
//   },
//   description:{
//     margin:0,
//     fontSize:'10px',
//     color:'#666',
//     fontWeight:300, 
//     padding:'0 0 0 5px'
//   },
//   innerContainer:{
//     background:'#fcfcfc',
//   }