class AddBodyToApples < ActiveRecord::Migration[6.1]
  def change
    add_column :apples, :title, :string
  end
end
