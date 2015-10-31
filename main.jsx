import React from 'react';
import Title from './title.jsx';
import Numeral from './numeral.jsx';
import Link from './link.jsx';
import Note from './note.jsx'

 
class Main extends React.Component {

  items() {
    var items = [];

    items.push([<p/>]);

    items.push([<Title />]);
    // items.push(<Title />);

    items.push([<p/>]);
    items.push(
      [ <Link 
          text = {'East Valley'}
          destination = {'http://www.google.com'}/>,
        <Note content = {':  Wednesdays 9am to 3pm'} />
      ]);
    items.push(
      [ <Link 
          text = {'Phoenix'}
          destination = {'http://www.google.com'}/>,
        <Note content = {':  Thursdays 9am to 5pm'} />
      ]);
    items.push(
      [<Link 
        text = {'Tempe'}
        destination = {'http://www.google.com'}/>,
        <Note content = {':  Tuesdays 3pm to 8pm'} />
      ]);
    items.push([<p/>]);

    items.push([< Note content = {
      'Weekly Code Coworking meetups in the wider phx area'} />
    ]);

    items.push([<p/>]);
    items.push([<p/>]);

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

              {item.map(function(piece, pieceIndex){
              
                return( <div
                  className = 'column'>
                  {piece}
                </div> )
                })}

            </div>
            )

        })}

      </div>

    )
  }
}
 
React.render(<Main/>, document.getElementById('content'));