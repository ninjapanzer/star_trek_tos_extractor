require 'csv'

class CSVExport
  attr_reader :file
  def initialize(file)
    @file = file
  end

  def export_relation(rel)
    CSV.open("path/to/file.csv", "wb") do |csv|
      csv << ["row", "of", "CSV", "data"]
      csv << ["another", "row"]
      # ...
    end
  end
end
