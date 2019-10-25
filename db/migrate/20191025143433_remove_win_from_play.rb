class RemoveWinFromPlay < ActiveRecord::Migration[6.0]
  def change

    remove_column :plays, :win, :boolean
  end
end
