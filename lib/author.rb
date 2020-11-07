class Author
    @@all = []
    def initialize(name)
        @name = name
        @@all << self
    end
    attr_accessor :name
    def add_post(post)
        post.author = self
    end
    def add_post_by_title(post)
        temp = Post.new(post)
        temp.author = self
    end
    def self.post_count
        Post.all.count
    end
    def posts
        Post.all.select {|post| post.author == self}
    end
end