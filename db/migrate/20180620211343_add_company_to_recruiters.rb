class AddCompanyToRecruiters < ActiveRecord::Migration[5.2]
  def change
    add_column :recruiters, :company, :string
  end
end
