import React, { useState, useContext, useEffect } from "react";
import {DataContext} from '../providers/dataProvider'
import axios from "axios";

function Navbar() {
  // console.log('navbar mounted')
  const { getCheatSheets } = useContext(DataContext)
  const [ nav, setNav] = useState()
  const [activeCoreTopic, setActiveCoreTopic] = useState({});
  const [activeSubTopic, setActiveSubTopic] = useState({});
  //  const  getCheatSheets = () => {}
  const { navContainer, active, item } = styles;
  const fetchNav = async () => {
    // console.log('async called mounted')
    const response = await axios.get(`/api/getNavItems`);
    setActiveCoreTopic(response.data[0]);
    setActiveSubTopic(response.data[0].subTopics[0]);
    setNav(response.data);

  };
  useEffect(() => {fetchNav()},[ ])

  const coreTopicClicked = id => {
    if (id === activeCoreTopic.id) return;
    const selectedCoreTopic = nav.find(coreTopic => coreTopic.id === id);
    setActiveCoreTopic(selectedCoreTopic);
    setActiveSubTopic(selectedCoreTopic.subTopics[0]);
    getCheatSheets(selectedCoreTopic.subTopics[0])
  };

  const subTopicClicked = id => {
    if (id === activeSubTopic.id) return;
    const selectedSubTopic = activeCoreTopic.subTopics.find(
      subTopic => subTopic.id === id
    );
    setActiveSubTopic(selectedSubTopic);
    getCheatSheets(selectedSubTopic)
  };
  
    { 
      return  !nav  ? (<p>loading nav</p>) : (
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
    )}
  
}

const styles = {
  navContainer: {
    display: "flex",
    background: "grey",
    marginBottom: "10px"
  },
  item: {
    marginRight: "10px"
  },
  active: {
    border: "1px solid #9F6A6A"
  }
};

export default Navbar;
