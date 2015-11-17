{ point, link, linkSpan } = require './../ct-dom.coffee'

module.exports = [
  [
    -> link href: 'http://www.meetup.com/Coffee-Code-Phoenix/', "'Phoenix'"
    -> point null, ''
  ]
  [
    -> point style: (textIndent: '1em'), 'Where'
    -> point null, ':', 
        linkSpan href: 'http://www.changinghands.com/firstdraftbar', " 'Changing Hands Bookstore'"
  ]
  [
    -> point style: (textIndent: '1em'), 'Streets'
    -> point null, ': Camelback and Central'
  ]
  [
    -> point style: (textIndent: '1em'), 'When'
    -> point null, ': Every Thurs, 9 am to 5 pm'
  ]
  [
    -> point style: (textIndent: '1em'), 'Host'
    -> point null, ':', 
        (linkSpan href: 'https://twitter.com/samrocksc', " '@samrocksc'")
  ]
]


