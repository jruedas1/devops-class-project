class CreateRecruiters < ActiveRecord::Migration[5.2]
  def change
    create_table :recruiters do |t|
      t.string :skills
      t.string :photo
      t.string :location
      t.string :linkedin
      t.string :website
      t.string :jobtypes

      t.timestamps
    end
  end
end
