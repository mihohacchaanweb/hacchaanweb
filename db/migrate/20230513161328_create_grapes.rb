class CreateGrapes < ActiveRecord::Migration[6.1]
  def change
    create_table :grapes do |t|
      t.string :question

      t.timestamps
    end
  end
end
