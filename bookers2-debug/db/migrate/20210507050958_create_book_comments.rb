class CreateBookComments < ActiveRecord::Migration[5.2]
  def change
    create_table :book_comments do |t|
      t.string :comment
      t.string :text
      t.string :user_id
      t.string :integer
      t.string :book_id
      t.string :integer

      t.timestamps
    end
  end
end
