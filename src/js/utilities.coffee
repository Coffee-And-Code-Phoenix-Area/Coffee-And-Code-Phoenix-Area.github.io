module.exports = 
  padder: (a, padTo) ->
    a = a.toString 16
    pad = => a = '0' + a
    pad() until (a + '').length is padTo
    a + ''