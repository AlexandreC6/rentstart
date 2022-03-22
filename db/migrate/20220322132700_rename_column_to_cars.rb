class RenameColumnToCars < ActiveRecord::Migration[6.1]
  def change
    rename_column(:cars, :type, :fuel)
  end
end
