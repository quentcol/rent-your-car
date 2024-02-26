class AddCityToCars < ActiveRecord::Migration[7.1]
  def change
    add_column :cars, :city, :string
  end
end
