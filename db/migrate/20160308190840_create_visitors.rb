class CreateVisitors < ActiveRecord::Migration
  def change
    create_table :visitors do |t|
      t.string :favorite
      t.string :comment

      t.timestamps null: false
    end
  end
end
