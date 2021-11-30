class AddColumnsToPhonesTable < ActiveRecord::Migration[6.1]
  def change
    add_column :phones, :model, :string
    add_column :phones, :version, :integer
    add_column :phones, :color, :string
  end
end
