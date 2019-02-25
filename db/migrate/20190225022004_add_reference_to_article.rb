class AddReferenceToArticle < ActiveRecord::Migration[5.2]
  def change
    add_reference :articles, :comment
  end
end
