import React from 'react';
import {numeral as numeralStyle} from './styles.jsx';

 
class Numeral extends React.Component {

  render() {
    return (
      <p
        className = 'point'
        style     = {numeralStyle}>
      {this.props.numeral}
      </p> )
  }
}
 
export default Numeral