Layla =
  Plugin  : require 'layla/plugin'
  Object  : require 'layla/object'
  Null    : require 'layla/object/null'
  Boolean : require 'layla/object/boolean'
  String  : require 'layla/object/string'
  Number  : require 'layla/object/number'
  List    : require 'layla/object/list'
  Block   : require 'layla/object/block'

###
###
class JSONObject extends Layla.Object

  load: (file) ->

  ###
  ###
  '.load': (file) ->
    # Need the context here to load the file...

  constructor: (@context) ->

###
###
class JSONPlugin extends Layla.Plugin
  use: (context) ->
    context.set 'JSON', new JSONObject context

module.exports = JSONPlugin
