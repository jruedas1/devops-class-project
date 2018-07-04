class RemoveSkillsFromRecruiters < ActiveRecord::Migration[5.2]
  def change
    remove_column :recruiters, :skills, :string
  end
end
