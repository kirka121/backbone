class Backbone.Models.Post extends Backbone.Model
  paramRoot: 'post'


class Backbone.Collections.PostsCollection extends Backbone.Collection
  model: Backbone.Models.Post
  url: '/posts'
