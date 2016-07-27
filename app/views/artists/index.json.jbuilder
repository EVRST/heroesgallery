json.array!(@artists) do |artist|
  json.extract! artist, :id, :first_name, :last_name, :presentation_fr, :presentation_en, :presentation_nl
  json.url artist_url(artist, format: :json)
end
