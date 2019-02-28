class AddDefaultToTaken < ActiveRecord::Migration[5.2]
  def change
    change_column :gifts, :taken, :boolean, :default => false
  end
end
