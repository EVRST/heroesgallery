json.array!(@visuals) do |visual|
  json.extract! visual, :id, :name, :price, :artist_id, :is_drawing, :is_picture
  json.url visual_url(visual, format: :json)
end
