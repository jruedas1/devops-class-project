class AddEmailToRecruiters < ActiveRecord::Migration[5.2]
  def change
    add_column :recruiters, :email, :string
  end
end
