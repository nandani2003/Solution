class AddStatusToArticles < ActiveRecord::Migration[7.2]
  def change
    add_column :articles, :status, :boolean
  end
end
