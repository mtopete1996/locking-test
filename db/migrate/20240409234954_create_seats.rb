class CreateSeats < ActiveRecord::Migration[7.1]
  def change
    create_table :seats do |t|
      t.string :name
      t.boolean :taken, default: false
      t.integer :lock_version

      t.timestamps
    end
  end
end
