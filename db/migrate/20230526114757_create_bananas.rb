class CreateBananas < ActiveRecord::Migration[6.1]
  def change
    create_table :bananas do |t|
      t.string :title
      t.text :about

      t.timestamps
    end
  end
end
