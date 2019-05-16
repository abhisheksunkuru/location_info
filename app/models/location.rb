class Location < ApplicationRecord

  def self.csv_collection
    find_each.lazy.map do |model|
      model.to_row
    end
  end
  def to_row
    [address,city]
  end
end
