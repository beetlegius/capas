# frozen_string_literal: true

class ProductsPresenter < ApplicationPresenter
  def table
    @table ||= ProductsTable.new(products)
  end

  def filter
    @filter ||= ProductsFilter.new(filter_params)
  end

  def products
    @products ||= filter.call.decorate
  end

  private

  def filter_params
    params.fetch(:products_filter, {}).permit(:name, :price)
  end
end
