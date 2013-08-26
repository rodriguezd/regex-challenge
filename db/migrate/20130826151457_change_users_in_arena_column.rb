class ChangeUsersInArenaColumn < ActiveRecord::Migration
  def change
    change_column :users, :in_arena, :boolean, :default => false
  end
end
