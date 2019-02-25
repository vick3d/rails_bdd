class DeleteReferenceToArticle < ActiveRecord::Migration[5.2]
  def change
    remove_reference :articles, :comment
  end
end
