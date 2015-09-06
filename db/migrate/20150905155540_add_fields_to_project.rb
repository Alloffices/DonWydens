class AddFieldsToProject < ActiveRecord::Migration
  def change
    add_column :projects, :userforhire, :string
  end
end
