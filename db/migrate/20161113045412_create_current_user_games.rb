class CreateCurrentUserGames < ActiveRecord::Migration[5.0]
  def change
    create_table :current_user_games do |t|
      t.integer :current_score
      t.integer :checkpoint_value
      t.integer :user_id
      t.timestamps
    end
  end
end
