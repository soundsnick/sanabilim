class AddIconCon < ActiveRecord::Migration[5.2]
  def change
    add_column :cons, :icon, :string
  end
end
