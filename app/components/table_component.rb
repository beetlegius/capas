class TableComponent < ActionView::Component::Base

  def initialize(data:)
    @data = data
  end

  private

  attr_reader :data
end
