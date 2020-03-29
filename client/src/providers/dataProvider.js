import React from "react";
import axios from "axios";

export const DataContext = React.createContext();

export const DataConsumer = DataContext.Consumer;

export class DataProvider extends React.Component {
  state = {
    currentCheatSheets: [],
    nav: []
  };
  componentDidMount() {
    axios.get("/api/core_topics").then(res => {
      console.log(res.data);
      const { nav, defaultCheatSheets } = res.data;
      this.setState({
        currentCheatSheets: defaultCheatSheets,
        nav
      });
    });
    // get navbar items from database

    // get default cheatsheet
  }
  getCheatSheets = selectSubTopic => {
    axios.get(`/api/sub_topics/${selectSubTopic.id}`).then(res => {
      console.log(res.data)
      this.setState({
        currentCheatSheets: res.data.cheatSheets
      });
    });
  };
  render() {
    return (
      <DataContext.Provider
        value={{
          ...this.state,
          getCheatSheets: this.getCheatSheets
        }}
      >
        {this.props.children}
      </DataContext.Provider>
    );
  }
}
