class ChangeUserIdToUserModel < ActiveRecord::Migration[7.0]
  def change
    remove_column :races , :user_id, :integer
    add_reference :races, :user
  end
end
