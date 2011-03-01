require 'csv'

module ORMFromCSV

  def from_csv(file)
    CSV.table(file).map do |csv_row|
      new csv_row.to_hash
    end
  end

end
