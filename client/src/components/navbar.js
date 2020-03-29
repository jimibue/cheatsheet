import React, { useState } from "react";
import axios from "axios";
import { nav } from "../data/nav";

// export const nav = [
//   {
//     title: "javascript",
//     subTopics: [{ title: "es6" }, { title: "es7" }, { title: "spread" }]
//   },
//   {
//     title: "ruby",
//     subTopics: [{ title: "loops" }, { title: "classes" }, { title: "hash" }]
//   }
// ];

function Navbar({getCheatSheets}) {
  const [activeCoreTopic, setActiveCoreTopic] = useState(nav[0]);
  const [activeSubTopic, setActiveSubTopic] = useState(nav[0].subTopics[0]);
  const { navContainer, active, item } = styles;

  const coreTopicClicked = id => {
    if (id === activeCoreTopic.id) return;
    const selectedCoreTopic = nav.find(coreTopic => coreTopic.id === id);
    setActiveCoreTopic(selectedCoreTopic);
    setActiveSubTopic(selectedCoreTopic.subTopics[0]);
    getCheatSheets()
  };

  const subTopicClicked = id => {
    if (id === activeSubTopic.id) return;
    const selectedSubTopic = activeCoreTopic.subTopics.find(
      subTopic => subTopic.id === id
    );
    setActiveSubTopic(selectedSubTopic);
    getCheatSheets()
  };
  return (
    <>
      <div style={navContainer}>
        {nav.map(coreTopic => (
          <p
            onClick={() => coreTopicClicked(coreTopic.id)}
            style={
              coreTopic.id === activeCoreTopic.id
                ? { ...active, ...item }
                : item
            }
            key={`coreTopic-${coreTopic.id}`}
          >
            {coreTopic.title}
          </p>
        ))}
      </div>
      <div style={navContainer}>
        {activeCoreTopic.subTopics.map(subTopic => (
          <p
            onClick={() => subTopicClicked(subTopic.id)}
            style={
              subTopic.id === activeSubTopic.id ? { ...active, ...item } : item
            }
            key={`subTopic-${subTopic.title}`}
          >
            {subTopic.title}
          </p>
        ))}
      </div>
    </>
  );
}

const styles = {
  navContainer: {
    display: "flex",
    background: "grey",
    margin: "10px 40px"
  },
  item: {
    marginRight: "10px"
  },
  active: {
    border: "1px solid #9F6A6A"
  }
};

export default Navbar;
