class AddDefaultValueToImportance < ActiveRecord::Migration[7.0]
  def change
    change_column_default :tasks, :importance, from: nil, to: false
  end
end
