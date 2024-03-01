class AddUserIdToMerons < ActiveRecord::Migration[6.1]
  def change
    add_column :merons, :user_id, :integer
  end
end
