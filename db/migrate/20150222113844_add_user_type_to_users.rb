class AddUserTypeToUsers < ActiveRecord::Migration
  def change
    add_column :users, :faculty1, :boolean, default: false
    add_column :users, :student1, :boolean, default: false
  end
end
