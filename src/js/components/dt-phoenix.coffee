{ point, link, linkSpan } = require './../ct-dom.coffee'

module.exports = [
  [
    -> link href: 'http://www.meetup.com/Coffee-Code-Phoenix/', "'Downtown Phoenix'"
    -> point null, ''
  ]
  [
    -> point style: (textIndent: '1em'), 'Where'
    -> point null, ':', 
        linkSpan href: 'http://www.meetup.com/Downtown-Phoenix-Coffee-and-Code/', " 'The Department'"
  ]
  [
    -> point style: (textIndent: '1em'), 'Streets'
    -> point null, ': Washington and 1st St'
  ]
  [
    -> point style: (textIndent: '1em'), 'When'
    -> point null, ': Every Tues, 9 am to 3 pm'
  ]

  [
    -> point style: (textIndent: '1em'), 'Host'
    -> point null, ':', 
        (linkSpan href: 'https://twitter.com/m3talsmith', " '@m3talsmith'")
  ]
]


