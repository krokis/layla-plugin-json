Layla =
  Plugin:  require 'layla/plugin'
  Object:  require 'layla/object'
  Null:    require 'layla/object/null'
  Boolean: require 'layla/object/boolean'
  String:  require 'layla/object/string'
  Number:  require 'layla/object/number'
  List:    require 'layla/object/list'
  Block:   require 'layla/object/block'

###
###
class JSONObject extends Layla.Object

  ###
  ###
  load: (file, context) ->
    file = context.resolveURI file

  ###
  ###
  parse: (json) ->

  ###
  ###
  stringify: (object) ->

  ###
  ###
  '.load': (context, file) -> 
    @load file, context

  ###
  ###
  '.parse': (context, json) ->
    @parse json

  ###
  ###
  '.stringify': (context, object) ->
    @stringify object

###
###
class JSONPlugin extends Layla.Plugin
  use: (context) ->
    context.set 'JSON', new JSONObject

module.exports = JSONPlugin