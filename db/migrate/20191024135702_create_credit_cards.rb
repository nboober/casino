class CreateCreditCards < ActiveRecord::Migration[6.0]
  def change
    create_table :credit_cards do |t|
      t.integer :cardnumber
      t.integer :expmonth
      t.integer :expyear
      t.integer :securitycode

      t.timestamps
    end
  end
end
