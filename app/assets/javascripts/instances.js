window.App = Ember.Application.create({
	rootElement: '#theater'
});

App.ApplicationController = Ember.Controller.extend({
	name: "Name of Game",
	inventory: "Inventory",
	player_actions: "Actions",
	logs: "Logs",
	variables: "Variables"
});

App.GravatarImageComponent = Ember.Component.extend({
  size: 200,
  email: '',

  gravatarUrl: function() {
    var email = this.get('email'),
        size = this.get('size');

    return 'http://www.gravatar.com/avatar/' + hex_md5(email) + '?s=' + size;
  }.property('email', 'size')
});

App.SceneDescriptionComponent = Ember.Component.extend({
	description: "Alice was beginning to get very tired of sitting by her sister on the bank, and of having nothing to do: once or twice she had peeped into the book her sister was reading, but it had no pictures or conversations in it, `and what is the use of a book,' thought Alice `without pictures or conversation?",
  	updateDescription: function() {
    	return "";
  	}
})
