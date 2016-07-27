json.array!(@articles) do |article|
  json.extract! article, :id, :title_fr, :content_fr, :title_en, :content_en, :title_nl, :content_nl
  json.url article_url(article, format: :json)
end
