class RenameUsernameToName < ActiveRecord::Migration[7.2]
  def change
    rename_column :users, :username, :name
  end
end
