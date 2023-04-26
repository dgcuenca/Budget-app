class GroupsController < ApplicationController

    def index
      @groups = current_user.groups
    end

    def new
      @current_user = current_user
      @group = Group.new
    end

    def create
      @current_user = current_user
      @group = @current_user.groups.create(group_params)
      if @group.save
        redirect_to groups_path
      else
        render :new
      end
    end

    def show
      
    end

    private

    def group_params
      params.require(:group).permit(:name)
    end
end
