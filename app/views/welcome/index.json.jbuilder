json.array!(@words) do |word|
  json.extract! word, :id, :meaning, :soundfile, :image
  json.url word_url(word, format: :json)
end
