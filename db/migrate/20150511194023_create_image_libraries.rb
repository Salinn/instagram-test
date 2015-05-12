class CreateImageLibraries < ActiveRecord::Migration
  def change
    create_table :image_libraries do |t|
      t.string :name

      t.timestamps
    end
  end
end
