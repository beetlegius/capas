json.extract! product, :id, :name, :price, :released_on
json.url product_url(product, format: :json)
