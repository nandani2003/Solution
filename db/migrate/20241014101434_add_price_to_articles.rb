class AddPriceToArticles < ActiveRecord::Migration[7.2]
  def change
    add_column :articles, :price, :integer
  end
end
