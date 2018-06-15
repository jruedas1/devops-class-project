class CreateStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :students do |t|
      t.string :title
      t.string :location
      t.string :skills
      t.string :summary
      t.string :github
      t.string :linkedin
      t.string :school
      t.string :photo

      t.timestamps
    end
  end
end
