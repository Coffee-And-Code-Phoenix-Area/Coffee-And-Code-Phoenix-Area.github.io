import React from 'react';
import Title from './title.jsx'

 
class Main extends React.Component {

  items() {
    var items = [];
    items.push(<Title />)

    return items;
  }

  render() {

    var items = this.items()

    return (

      <div>
        <div
          style = {{display: 'inline'}}>
        {items.map(function(item, itemIndex){

          console.log("DOPE",itemIndex);

          return( 
            <div>
              <p>{itemIndex + ''}</p>
            </div>
           )
        })}
        </div>

        <div
          style = {{display: 'inline'}}>
        {items.map(function(item, itemIndex){

          console.log("DOPE",itemIndex);

          return( 
            <div>
              {item}
            </div>
           )
        })}
        </div>
      </div>
    )
  }
}
 
React.render(<Main/>, document.getElementById('content'));