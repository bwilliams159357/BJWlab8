class AddViewToUsers < ActiveRecord::Migration
  def change
    add_column :users, :view, :boolean, :default => true
  end
end
