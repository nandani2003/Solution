class RemovePriceFromArticle < ActiveRecord::Migration[7.2]
  def change
    remove_column :articles, :price, :integer
  end
end
