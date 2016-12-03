class CreateLike < ActiveRecord::Migration[5.0]
  def change
    create_table :likes, :id => false do |t|
      t.references :user, foreign_key: true
      t.references :post, foreign_key: true
    end
  end
end
