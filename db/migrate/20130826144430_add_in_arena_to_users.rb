class AddInArenaToUsers < ActiveRecord::Migration
  def change
    add_column :users, :in_arena, :boolean
  end
end
