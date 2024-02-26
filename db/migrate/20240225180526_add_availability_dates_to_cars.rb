class AddAvailabilityDatesToCars < ActiveRecord::Migration[7.1]
  def change
    add_column :cars, :available_from, :date
    add_column :cars, :available_to, :date
  end
end
