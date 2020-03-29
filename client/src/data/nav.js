// This will be my main navigation, first user will select core topic and then subtopics to see cheetSheats,
export const nav = [
  {
    id: 1,
    title: "javascript",
    subTopics: [
      { title: "es6", id: 1 },
      { title: "es7", id: 2 },
      { title: "spread", id: 3 }
    ]
  },
  {
    id: 2,
    title: "ruby",
    subTopics: [
      { title: "loops", id: 4 },
      { title: "classes", id: 5 },
      { title: "hash", id: 6 }
    ]
  }
];

// get all cheatSheets
export const allCheatSheets = [
  {
    coreTopic: "javascript",
    subTopic: "es6",
    cheatSheets: [
      {
        title: "spread",
        description: "some info about spread sheets",
        examples: [
          {
            title: "Some Example here",
            description: "this is how this is working",
            codeSnippet: `<p>yoyo</p>`
          },
          {
            title: "Another Example",
            description: "this is how this is working",
            codeSnippet: `<p>yoyo</p>`
          }
        ]
      }
    ]
  },
  {
    coreTopic: "javascript",
    subTopic: "es7",
    cheatSheets: [
      {
        title: "spread",
        description: "some info about es7 spread sheets",
        examples: [
          {
            title: "Some es7 Example here",
            description: "this is how this is working",
            codeSnippet: `<p>yoyo</p>`
          },
          {
            title: "Another es7 Example",
            description: "this is how this is working",
            codeSnippet: `<p>yoyo</p>`
          }
        ]
      }
    ]
  }
];

// get one coreSubTopics cheatSheet (a api call) everytime a subTopic is picked
// export const oneCoreSubTopicCheatSheets = {
//   coreTopic: "javascript",
//   subTopic: "es6",
//   cheatSheets: [
//     {
//       title: "spread",
//       description: "some info about spread sheets",
//       examples: [
//         {
//           title: "Some Example here",
//           description: "this is how this is working",
//           codeSnippet: `<p>yoyo</p>`
//         },
//         {
//           title: "Another Example",
//           description: "this is how this is working",
//           codeSnippet: `<p>yoyo</p>`
//         }
//       ]
//     },
//     {
//       title: "destructor",
//       description: "some info about destructor sheets",
//       examples: [
//         {
//           title: " destructor Example here",
//           description: "this is how this is working",
//           codeSnippet: `<p>yoyo</p>`
//         },
//         {
//           title: "Another destructor Example",
//           description: "this is how this is working",
//           codeSnippet: `<p>yoyo</p>`
//         }
//       ]
//     }
//   ]
// },
