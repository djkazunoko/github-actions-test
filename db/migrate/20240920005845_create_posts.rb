class CreatePosts < ActiveRecord::Migration[7.1]
  def change
    create_table :posts do |t|
      t.references :user, foreign_key: true
      t.references :group, null: false, foreign_key: true
      t.text :content, null: false

      t.timestamps
    end
  end
end