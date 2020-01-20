# frozen_string_literal: true

class ApplicationPresenter
  def initialize(params)
    @params = params
  end

  private

  attr_reader :params
end
