# Libraries
React     = require 'react'
ReactDOM  = require 'react-dom'
_         = require 'lodash'

# DOM Elements
{p, a, span, div, input, img} = React.DOM


CtFactory = 
  div: (className) ->
    ->
      className = [className, @props.className ? '' ].join ' '
      props     = _.extend {}, @props, className: className
      div.apply div, [ props ].concat @props.children
  
  p: (className) ->
    ->
      className = [className, @props.className ? '' ].join ' '
      props     = _.extend {}, @props, className: className
      p.apply p, [ props ].concat @props.children

  a: (className) ->
    ->
      className = [className, @props.className ? '' ].join ' '
      props     = _.extend {}, @props, className: className
      a.apply a, [ props ].concat @props.children

  span: (className) ->
    ->
      className = [className, @props.className ? '' ].join ' '
      props     = _.extend {}, @props, className: className
      span.apply span, [ props ].concat @props.children


module.exports = (components) ->
  _.mapValues components, (type, key) ->
    component = CtFactory[type] key
    component = render: component
    component = React.createClass component
    React.createFactory component


# component = React.createFactory component
# (content, props) ->
#   component (props ? null), content

