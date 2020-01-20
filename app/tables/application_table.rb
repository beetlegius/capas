# frozen_string_literal: true

class ApplicationTable
  def initialize(records)
    @records = records
  end

  def headers
    fail NotImplementedError
  end

  def rows
    @records.map { |record| each_row(record) }
  end

  private

  def each_row(_record)
    fail NotImplementedError
  end
end
