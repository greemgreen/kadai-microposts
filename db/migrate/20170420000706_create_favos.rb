class CreateFavos < ActiveRecord::Migration[5.0]
  def change
    create_table :favos do |t|
      t.references :user, foreign_key: true
      t.references :starr, foreign_key: { to_table: :microposts}

      t.timestamps
      
      t.index [:user_id, :starr_id], unique: true
    end
  end
end
