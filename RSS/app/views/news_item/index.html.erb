atom_feed {language: 'en-US', url: root_url} do |feed|
  feed.title "My own blog title"
  feed.updated @posts.maximum(:published_date)

  @posts.each do |post|
    feed.entry post, {published: post.published_at, updated: post.updated_at} do |entry|
      entry.title post.title
      entry.content post.text, type: 'html'
      entry.author do |author|
        author.name post.author_name
      end
      entry.url post_url(post)
      entry.summary post.summary
    end
  end
end