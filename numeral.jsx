import React from 'react';
import {numeral as numeralStyle} from './styles.jsx';

 
class Numeral extends React.Component {

  render() {

    var numeral = this.props.numeral;
    numeral     = numeral.toString(16);

    return (
      <p
        className = 'point'
        style     = {numeralStyle}>
      {numeral}
      </p> )
  }
}
 
export default Numeral