import React from "react";

export const DataContext = React.createContext();

export const DataConsumer = DataContext.Consumer;

export class DataProvider extends React.Component {
  state = {
    cheatSheets: []
  };
  getCheatSheets = () => {
    console.log("getSheetsCalled");
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
