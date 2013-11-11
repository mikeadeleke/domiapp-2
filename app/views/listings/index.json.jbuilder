json.array!(@listings) do |listing|
  json.extract! listing, :title, :rent, :type, :published_at
  json.url listing_url(listing, format: :json)
end
