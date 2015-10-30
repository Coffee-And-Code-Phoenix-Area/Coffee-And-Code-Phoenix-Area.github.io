import React from 'react';
import {point as pointStyle} from './Styles.jsx';

 
class Title extends React.Component {

  render() {
    return (
      <p
        className = 'point'
        style     = {pointStyle}>
      Coffee <span style = {{color: '#f20723'}}> and </span> Code
      </p> )
  }
}
 
export default Title