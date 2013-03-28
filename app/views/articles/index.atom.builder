atom_feed do |feed|
  feed.title "5280 Web Design Articles"
  feed.updated @articles.maximum(:updated_at)
  
  @articles.each do |article|
    feed.entry article, published: article.created_at do |entry|
      entry.title   article.title
      entry.content article.body
      entry.author  article.author_name

      
    end
  end
end