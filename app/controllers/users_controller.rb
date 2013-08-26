class UsersController < ApplicationController
  def enter_arena
    User.find(current_user.id).enter_arena = true
  end

  def exit_arena
    User.find(current_user.id).enter_arena = false
  end
end
