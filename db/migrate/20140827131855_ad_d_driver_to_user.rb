class AdDDriverToUser < ActiveRecord::Migration
  def change
    add_column :users, :driver, :boolean
  end
end
