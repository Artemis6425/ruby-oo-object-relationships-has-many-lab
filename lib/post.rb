class Post
    @@all = []
    def initialize(name="name")
        @title = name
        @author
        @@all << self
    end
    attr_accessor :title, :author, :author_name
    def self.all
        @@all
    end
    def author_name
        author.name if author
    end
end