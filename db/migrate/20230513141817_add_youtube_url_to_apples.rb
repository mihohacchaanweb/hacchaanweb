class AddYoutubeUrlToApples < ActiveRecord::Migration[6.1]
  def change
    add_column :apples, :youtube_url, :string
  end
end
