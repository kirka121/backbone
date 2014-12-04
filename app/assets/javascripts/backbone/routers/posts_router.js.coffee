class Backbone.Routers.PostsRouter extends Backbone.Router

  initialize: (options) ->
    @posts = new Backbone.Collections.PostsCollection()
    @posts.reset options.posts

  routes:
    "index"     : "index"
    "new"       : "newPost"
    ":id"       : "show"
    ":id/edit"  : "edit"
    ".*"        : "index"

  index: ->
    @view = new Backbone.Views.PostsIndexView({collection: @posts})

  newPost: ->
    @view = new Backbone.Views.PostsNewView({collection: @posts})

  show: (id) ->
    post = @posts.get(id)
    @view = new Backbone.Views.PostsShowView({model: post})

  edit: (id) ->
    post = @posts.get(id)
    @view = new Backbone.Views.PostsEditView({model: post})