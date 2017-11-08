class AddNameToEmail < ActiveRecord::Migration[5.1]
  def change
    add_column :emails, :name, :string
  end
end
