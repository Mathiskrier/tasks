class AddImportanceAndCompletedToTasks < ActiveRecord::Migration[7.0]
  def change
    add_column :tasks, :importance, :boolean
    add_column :tasks, :completed, :boolean, default: false
  end
end
