class AddNameToPin < ActiveRecord::Migration[5.1]
  def change
    add_column :pins, :name, :string
  end
end
