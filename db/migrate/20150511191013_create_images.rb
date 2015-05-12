class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :name
      t.string :client_id
      t.string :image_ref

      t.timestamps
    end
  end
end
