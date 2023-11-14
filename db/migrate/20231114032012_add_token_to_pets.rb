class AddTokenToPets < ActiveRecord::Migration[7.1]
  def change
    add_column :pets, :token, :string, null: false
    add_index :pets, :token
  end
end
