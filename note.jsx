import React from 'react';
import {point as noteStyle} from './styles.jsx';

 
class Note extends React.Component {

  render() {

    return (
      <p
        className = 'point'
        style     = {noteStyle}>
      {this.props.content}
      </p> )
  }
}
 
export default Note