json.extract! beer, :id, :name, :volume, :abv, :style, :brand_id, :created_at, :updated_at
json.url beer_url(beer, format: :json)
