class AddColumnToStudent < ActiveRecord::Migration[5.2]
  def change
    add_column :students, :jobtypes, :string
  end
end
