class CreateRelationships < ActiveRecord::Migration[5.2]
  def change
    create_table :relationships do |t|
      t.string :follower_id
      t.string :integer
      t.string :followed_id
      t.string :integer

      t.timestamps
    end
  end
end
