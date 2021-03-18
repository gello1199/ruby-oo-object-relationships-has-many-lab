require 'pry'

class Author
attr_accessor :name

@@post_count = 0

   def initialize(name)
      @name = name
   end

   def posts
      Post.all.select {|posts| posts.author = self}
   end

   def add_post(post)
      post.author = self
   end

   def add_post_by_title(post_title)
      new_post = Post.new(post_title)
      new_post.author = self
   end

   def self.post_count
      Post.all.count {|posts| posts.author = self}
   end
end