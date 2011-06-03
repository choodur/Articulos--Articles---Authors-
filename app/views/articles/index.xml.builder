xml.instruct! :xml, :version=> '1.0', :encoding => 'UTF-8'

xml.articlesandauthorsindex(:xmlns => 'http://www.sitemaps.org/schemas/sitemap/0.9') do
  for article in @articles
    xml.article do
      xml.title(article.title)
      xml.body(article.body)
    end
  end
end
