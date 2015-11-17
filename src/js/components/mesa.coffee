{ point, link, linkSpan } = require './../ct-dom.coffee'

module.exports = [
  [
    -> link href: 'http://www.meetup.com/Coffee-and-Code-East-Valley/', "'East Valley'"
    -> point null, ''
  ]
  [
    -> point style: (textIndent: '1em'), 'Where'
    -> point null, ':', 
        linkSpan href: 'http://www.heatsynclabs.org', " 'HeatSync Labs'"
  ]
  [
    -> point style: (textIndent: '1em'), 'Streets'
    -> point null, ': Country Club and Main'
  ]
  [
    -> point style: (textIndent: '1em'), 'When'
    -> point null, ': Every Wed, 9 am to 3 pm'
  ]
  [
    -> point style: (textIndent: '1em'), 'Host'
    -> point null, ':', 
        (linkSpan href: 'https://twitter.com/monteslu', " '@monteslu'")
  ]
]

