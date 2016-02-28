# Libraries
React     =  require 'react'
Parse     = (require 'Parse').Parse
ReactDOM  =  require 'react-dom'
_         =  require 'lodash'


Parse.initialize "maKh5qvYNaITHvAmnFWTQ29UHNBRJZMIvNiSOJmG", "axjGbG7aER9jyaVRtWt2SYUH0ASO4h6kvyYC1OEr"


#Utilities
{padder} = require './utilities.coffee'


# DOM
{ input } = React.DOM
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

  getInitialState: ->
    posts:          []
    inputValue:     ''

  componentDidMount: ->

    setPosts = (posts) =>
      @setState posts: posts

    Post  = Parse.Object.extend 'post'
    query = new Parse.Query Post
    query.find
      success: setPosts
      error: (error) ->
        console.log error

  inputHandle: (event) ->
    if @state.inputValue.length < 31
      @setState inputValue: event.target.value

  handleSubmit: ->
    Post = Parse.Object.extend 'post'
    post = new Post()
    post.set 'content', @state.inputValue
    post.save null,
      success: (post) ->
        location.reload()
      error: (error) ->
        console.log error


  render: ->

    posts = []
    _.forEach @state.posts, (post, index) ->
      timeStamp  = post.attributes.createdAt
      formatted  = padder timeStamp.getFullYear(), 3
      formatted += padder timeStamp.getMonth(), 1
      formatted += padder timeStamp.getDay(), 2
      formatted += padder timeStamp.getHours(), 2
      formatted += padder timeStamp.getMinutes(), 2

      posts.push ''
      posts.push post.attributes.content
      posts.push 'Anonymous at ' + formatted

    posts = posts.reverse()
    posts.slice 0, 60


    container null,
      _.map layout, (items, index) ->
        row null,
          columnNumber null,
            point null, (padder index, 2)
          _.map items, (item) ->
            column  null, item()

      row null,
        columnNumber null,
          point null, (padder layout.length, 2)
        column null,
          point null, 'Messages'

      row null,
        columnNumber null,
          point null, (padder layout.length + 1, 2)
        column null,
          input 
            className:   'messageField'
            onChange:    @inputHandle
            value:       @state.inputValue

        column null,
          input
            className:  'messageSubmit'
            type:       'submit'
            value:      'post'
            onClick:    @handleSubmit

      row null, 
        columnNumber null, 
          point null, (padder layout.length + 2, 2)

      _.map posts, (post, index) ->
        lineNumber = index + layout.length + 3

        style = {}
        style.textIndent = '1em' if index % 3 is 1

        row null,
          columnNumber null, 
            point null, lineNumber
          column null,
            point style: style, post

       


App = React.createElement AppClass
ReactDOM.render App, document.getElementById 'content'