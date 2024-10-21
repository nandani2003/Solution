class ChangeStatusInArticlesToString < ActiveRecord::Migration[7.2]
  def change
    change_column :articles, :status, :string
  end
end
