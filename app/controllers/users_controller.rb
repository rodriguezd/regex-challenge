class UsersController < ApplicationController
  def enter_arena
    User.find(current_user.id).update_attributes(:in_arena => true)
    @friends = User.where(:in_arena => true)
    # redirect_to :back
  end

  def exit_arena
    User.find(current_user.id).update_attributes(:in_arena => false)
    @friends = User.where(:in_arena => true)
    # redirect_to :back
  end
end
