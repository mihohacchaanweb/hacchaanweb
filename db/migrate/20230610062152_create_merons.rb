class CreateMerons < ActiveRecord::Migration[6.1]
  def change
    create_table :merons do |t|
      t.string :title
      t.text :about
      t.timestamps
    end
  end
end
