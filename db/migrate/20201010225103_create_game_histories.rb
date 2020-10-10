class CreateGameHistories < ActiveRecord::Migration[6.0]
  def change
    create_table :game_histories do |t|
      t.string :winner, null: false
      t.string :loser, null: false

      t.timestamps
    end
  end
end
