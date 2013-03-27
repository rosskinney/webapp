xml.instruct! :xml, :version => "1.0" 
xml.rss :version => "2.0" do
  xml.channel do
    xml.title "Articles"
    xml.description "Lots of articles"
    xml.link article_url(:rss)
    
    for article in @articles
      xml.item do
        xml.title article.title
        xml.description article.body
        xml.pubDate article.created_at.to_s(:rfc822)
        xml.link article_url(article, :rss)
        xml.guid article_url(article, :rss)
      end
    end
  end
end