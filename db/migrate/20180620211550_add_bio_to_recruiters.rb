class AddBioToRecruiters < ActiveRecord::Migration[5.2]
  def change
    add_column :recruiters, :bio, :text
  end
end
