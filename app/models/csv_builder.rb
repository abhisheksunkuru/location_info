require 'csv'
class CsvBuilder

  attr_accessor :output, :header, :data

  def initialize(header, data, output = "")
    @output = output
    @header = header
    @data = data
  end

  def build
    byebug
    output << CSV.generate_line(header)
    data.each do |row|
      output << CSV.generate_line(row)
    end
    output
  end
  def self.build_csv_enumerator(header, data)
      byebug
      Enumerator.new do |y|
        CsvBuilder.new(header, data, y).build
      end
    end
end