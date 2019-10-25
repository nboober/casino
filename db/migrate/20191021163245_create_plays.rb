class CreatePlays < ActiveRecord::Migration[6.0]
  def change
    create_table :plays do |t|
      t.integer :user_id
      t.integer :game_id
      t.boolean :win

      t.timestamps
    end
  end
end
