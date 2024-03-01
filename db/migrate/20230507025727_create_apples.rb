class CreateApples < ActiveRecord::Migration[6.1]
  def change
    create_table :apples do |t|
      t.string :video
      t.string :icon
      t.string :genre
      t.datetime :start_time
      t.timestamps
    end
  end
end
