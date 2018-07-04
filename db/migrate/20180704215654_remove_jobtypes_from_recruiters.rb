class RemoveJobtypesFromRecruiters < ActiveRecord::Migration[5.2]
  def change
    remove_column :recruiters, :jobtypes, :string
  end
end
