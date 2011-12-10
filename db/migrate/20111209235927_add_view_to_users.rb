class AddViewToUsers < ActiveRecord::Migration
  def change
    add_column :users, :view, :boolean
  end
end
