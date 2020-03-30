import React, { useContext } from "react";
import { DataContext } from "../providers/dataProvider";
import CheatSheet from "./CheatSheet";
import { primaryLight } from "../styles/common";

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
    alignItems: "flex-start",
    marginLeft:'20px',
  
  },
  exContainer: {
    display: "flex",
    alignItems: "flex-start",
    // background: primaryLight,
    // background: 'red',
    // margin:'10px'
  },
  item:{
    marginRight:'10px', fontSize:'8px'
  }
};

export default CheatSheetContainer;
