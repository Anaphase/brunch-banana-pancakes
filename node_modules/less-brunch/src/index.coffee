less = require 'less'
sysPath = require 'path'

module.exports = class LESSCompiler
  brunchPlugin: yes
  type: 'stylesheet'
  extension: 'less'
  _dependencyRegExp: /@import ['"](.*)['"]/g

  constructor: (@config) ->
    null

  compile: (data, path, callback) ->
    parser = new less.Parser
      paths: [@config.paths.root, (sysPath.dirname path)],
      filename: path
    parser.parse data, (error, tree) =>
      return callback error.message if error?
      result = null
      err = null

      try
        result = tree.toCSS()
      catch ex
        err = "#{ex.type}Error:#{ex.message}"
        if ex.filename
          err += " in '#{ex.filename}:#{ex.line}:#{ex.column}'"
      callback err, result

  getDependencies: (data, path, callback) =>
    paths = data.match(@_dependencyRegExp) or []
    parent = sysPath.dirname path
    dependencies = paths
      .map (path) =>
        res = @_dependencyRegExp.exec(path)
        @_dependencyRegExp.lastIndex = 0
        (res or [])[1]
      .filter((path) => !!path)
      .map (path) =>
        if sysPath.extname(path) isnt ".#{@extension}"
          path + ".#{@extension}"
        else
          path
      .map(sysPath.join.bind(null, parent))
    process.nextTick =>
      callback null, dependencies
