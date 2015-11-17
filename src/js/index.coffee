# Libraries
React     = require 'react'
ReactDOM  = require 'react-dom'
_         = require 'lodash'


#Utilities
{padder} = require './utilities.coffee'


# DOM
{ row
  container
  columnNumber
  point
  column } = require './ct-dom.coffee'


# Layout
layout = require './layout.coffee'
layout = _.flatten layout
layout = _.map layout, (components) ->
  _.map components, (component) ->
    component = React.createClass (render: component)
    component = React.createFactory component
    component


AppClass = React.createClass

  render: ->

    container null,

      _.map layout, (items, index) ->
        row null,
          columnNumber null,
            point null, (padder index, 2)
          _.map items, (item) ->
            column  null, item()


App = React.createElement AppClass
ReactDOM.render App, document.getElementById 'content'