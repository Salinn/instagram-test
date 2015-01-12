class RemoveDestoryAuthentication < ActiveRecord::Migration
  def change
    remove_column :authentications, :destroy
    remove_column :authentications, :create
    remove_column :authentications, :index
  end
end
