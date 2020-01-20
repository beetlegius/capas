# frozen_string_literal: true

class ProductsFilter < ApplicationFilter
  attr_accessor :name, :price

  private

  def filter!
    filter_by_name
    filter_by_price
  end

  def filter_by_name
    return unless name.present?

    @records = records.where("name LIKE :q", q: "%#{name}%")
  end

  def filter_by_price
    return unless price.present?

    @records = records.where(price: price)
  end

  def records
    @records ||= Product.all
  end

end
