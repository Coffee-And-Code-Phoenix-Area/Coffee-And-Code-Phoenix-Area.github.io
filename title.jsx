import React from 'react';
import pStyle from './pStyle.jsx';

 
class Title extends React.Component {

  render() {
    return (
      <p
        className = 'point'
        style     = {pStyle}>
      Coffee <span style = {{color: '#f20723'}}> and </span> Code
      </p> )
  }
}
 
export default Title