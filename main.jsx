import React from 'react';
import Title from './title.jsx';
import Numeral from './numeral.jsx';

 
class Main extends React.Component {

  items() {
    var items = [];

    items.push(<Title />);
    items.push(<Title />);

    return items;
  }

  render() {

    var items = this.items()

    return (

      <div
        className = 'container'>

        {items.map(function(item, itemIndex){

          return(
            <div
              className = 'row'>

              <div
                className = 'columnNumber'>
                < Numeral numeral = {itemIndex} />
              </div>

              <div
                className = 'column'>
                {item}
              </div>

            </div>
            )

        })}

      </div>

    )
  }
}
 
React.render(<Main/>, document.getElementById('content'));