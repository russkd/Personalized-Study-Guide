class RemoveTypeColumnFromUser < ActiveRecord::Migration
  def change
    remove_column :users, :type, :string
  end
end
