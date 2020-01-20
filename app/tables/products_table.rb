# frozen_string_literal: true

class ProductsTable < ApplicationTable

  def headers
    [
      Product.human_attribute_name(:name),
      Product.human_attribute_name(:price),
      Product.human_attribute_name(:released_on),
      'Actions'
    ]
  end

  private

  def each_row(product)
    [
      product.name,
      product.price,
      product.released_on,
      product.buttons
    ]
  end
end
