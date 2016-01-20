class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.string :contents
      t.integer :presenter_id
      t.datetime :date
      t.string :place

      t.timestamps null: false
    end
  end
end
