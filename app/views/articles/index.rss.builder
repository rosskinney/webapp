xml.instruct! :xml, version: "1.0" 
xml.rss version: "2.0" do
  xml.channel do
    xml.title "Superhero Articles"
    xml.description "From Batman to Superman"
    xml.link article_url

    @articles.each do |article|
      xml.item do
        xml.title article.name
        xml.description article.body
        xml.pubDate article.created_at.to_s(:rfc822)
        xml.link article_url(article)
        xml.guid article_url(article)
      end
    end
  end
end