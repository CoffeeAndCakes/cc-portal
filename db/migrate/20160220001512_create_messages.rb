class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.text :message
      t.string :by
      t.integer :posted_by

      t.timestamps null: false
    end
  end
end
