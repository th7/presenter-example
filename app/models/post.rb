class Post
  attr_accessor :title, :description, :url, :images, :published, :source, :comments, :posted_at, :related_posts

  def initialize(options)
    @title = options.fetch(:title)
    @description = options.fetch(:description)
    @url = options.fetch(:url)
    @source = options.fetch(:source)

    @images = options.fetch(:images, {})
    @published = options.fetch(:published, true)
    @comments = Array.new(rand(3000))
    @posted_at = Time.now - rand(1000).minutes
    @facebook_shares = Array.new(rand(200))
    @twitter_tweets = Array.new(rand(100))
  end

  def related_posts
    (0..3).map do
      Post.random_post
    end
  end

  def self.all
    (0..10).map do
      Post.random_post
    end
  end

  def self.random_post
    category = Post.category
    Post.new(:title => Faker::Lorem.paragraph(3),
             :description => Faker::Lorem.paragraphs(3).join,
             :url => Faker::Internet.url,
             :source => Faker::Lorem.word,
             :images => {
                          :large => "http://lorempixel.com/400/200/#{category}",
                          :medium => "http://lorempixel.com/300/150/#{category}",
                          :small => "http://lorempixel.com/400/200/#{category}"
                        }
            )
  end

  def self.category
    ["sports", "business", "people", "nature", "cats", "city"].sample
  end

end
