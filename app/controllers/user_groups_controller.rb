class UserGroupsController < InheritedResources::Base

  private

    def user_group_params
      params.require(:user_group).permit(:user_id, :group_id)
    end
end

