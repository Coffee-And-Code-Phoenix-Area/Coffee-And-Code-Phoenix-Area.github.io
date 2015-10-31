import React from 'react';
import {link as linkStyle} from './styles.jsx';

 
class Link extends React.Component {

  render() {

    var text = this.props.text;
    text     = "'" + text + "'";

    return (
      <a
        className = 'point'
        href      = {this.props.destination}
        style     = {linkStyle}>
      {text}
      </a> )
  }
}
 
export default Link