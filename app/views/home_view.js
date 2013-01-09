var View     = require('./view')
  , template = require('./templates/home')

module.exports = View.extend({
    id: 'home-view',
    template: template
})
