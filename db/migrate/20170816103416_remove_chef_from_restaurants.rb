class RemoveChefFromRestaurants < ActiveRecord::Migration[5.0]
  def change
    remove_column :restaurants, :chef
  end
end
