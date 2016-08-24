Layla = require 'layla'

###
###
class JSONObject extends Layla.Object

  ###
  ###
  '.read': (file) ->
    # Need to have the context here to load the file...

###
###
class JSONPlugin extends Layla.Plugin
  use: (context) ->
    context.set 'JSON', new JSONObject

module.exports = JSONPlugin
