class RemoveRefefenceToUsersInRepairs < ActiveRecord::Migration
  def change
    remove_column :repairs, :user_id
  end
end
