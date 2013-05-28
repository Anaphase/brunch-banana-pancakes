var HomeView = require('views/home_view');

describe("HomeView", function() {

  beforeEach(function() {
    this.view = new HomeView();
  });

  afterEach(function() {
    delete this.view;
  });

  it("should exist", function() {
    expect(this.view).to.be.ok;
  });

  it("should have correct id", function() {
    expect(this.view.$el.attr('id')).to.equal('home-view');
  });

});
