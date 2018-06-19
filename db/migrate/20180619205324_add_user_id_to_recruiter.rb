class AddUserIdToRecruiter < ActiveRecord::Migration[5.2]
  def change
    add_column :recruiters, :user_id, :integer
  end
end
