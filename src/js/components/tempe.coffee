{ point, link, linkSpan } = require './../ct-dom.coffee'

module.exports = [
  [
    -> link href: 'www.google.com', "'Tempe'"
    -> point null, ''
  ]
  [
    -> point style: (textIndent: '1em'), 'Where'
    -> point null, ':', 
        linkSpan href: 'https://www.facebook.com/fiftyone.west/', " 'FiftyOne West Coffee'"
  ]
  [
    -> point style: (textIndent: '1em'), 'Streets'
    -> point null, ': Southern and Mill'
  ]
  [
    -> point style: (textIndent: '1em'), 'When'
    -> point null, ': Every Fri, 10 am to 2 pm'
  ]
  [
    -> point style: (textIndent: '1em'), 'Host'
    -> point null, ':', 
        (linkSpan href: 'https://twitter.com/TheRealChadtech', " '@TheRealChadtech'")
  ]
]


