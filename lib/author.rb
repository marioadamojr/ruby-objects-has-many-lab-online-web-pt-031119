class Author
  attr_accessor :name
  @@posts = []

  def initialize(name)
    @name=name
    @posts=[]
  end

  def posts
    @posts
  end

  def add_post(post)
    @posts << post
    post.author = self
    @@posts << post
  end

  def add_post_by_title(post_name)
    post = Post.new(post_name)
    @posts << post
    post.author = self
    @@posts << post
  end

  def self.post_count
    @@posts.count
  end
end
