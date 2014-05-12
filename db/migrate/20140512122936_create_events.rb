class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string   :name
      t.datetime :start
      t.datetime :finish
      t.text     :description
      t.timestamps
    end
    add_index :events, :name, using: :btree
  end
end