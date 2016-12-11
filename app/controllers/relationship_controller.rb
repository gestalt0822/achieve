class RelationshipController < ApplicationController
  before_action :authenticate_user!
  respond_to :js

  def create
    @user = User.find(paramas[:relationship][:followed_id])
    current_user.follow!(@user)
    respond_with @user
  end

  def destroy
    @user = Relationship.find(params[:id].followd current_user.unfollow!(@user))
    respond_with @user
  end
end
