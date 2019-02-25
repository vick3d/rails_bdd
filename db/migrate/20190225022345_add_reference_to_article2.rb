class AddReferenceToArticle2 < ActiveRecord::Migration[5.2]
  def change
    add_reference :comments, :article
  end
end
