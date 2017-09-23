class CreateActivities < ActiveRecord::Migration[5.1]
  def change
    create_table :activities do |t|
      t.integer :duration
      t.text :notes

      t.timestamps
    end
  end
end
