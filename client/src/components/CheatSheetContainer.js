import React, { useContext } from "react";
import { DataContext } from "../providers/dataProvider";
import CheatSheet from "./CheatSheet";

const CheatSheetContainer = () => {
  const { currentCheatSheets } = useContext(DataContext);

  return (
    <div>
      <div style={styles.container}>
        {currentCheatSheets &&
          currentCheatSheets.map(cs => (
            <div style={styles.item}>{cs.title}</div>
          ))}
      </div>
      <div style={styles.exContainer}>
        {currentCheatSheets &&
          currentCheatSheets.map(cs => <CheatSheet cheatSheet={cs} />)}
      </div>
    </div>
  );
};

const styles = {
  container: {
    display: "flex",
    alignItems: "flex-start"
  },
  exContainer: {
    display: "flex",
    alignItems: "flex-start"
  },
  item:{
    marginRight:'10px', fontSize:'8px'
  }
};

export default CheatSheetContainer;
