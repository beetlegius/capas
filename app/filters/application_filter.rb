# frozen_string_literal: true

class ApplicationFilter
  include ActiveModel::Model

  def call
    filter!

    records
  end

  private

    def records
      fail NotImplementedError
    end
end
