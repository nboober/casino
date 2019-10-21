class CreateGames < ActiveRecord::Migration[6.0]
  def change
    create_table :games do |t|
      t.string :name
      t.integer :cost
      t.integer :winnings
      t.integer :company_id

      t.timestamps
    end
  end
end
