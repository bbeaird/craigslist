class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.belongs_to :category
      t.string :title
      t.string :description
      t.decimal :price, :precision => 8, :scale => 2
      # t.string :key

      t.timestamps
    end
  end
end
