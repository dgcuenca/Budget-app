class GroupsController < ApplicationController
  skip_before_action :verify_authenticity_token
    def index
      @groups = current_user.groups
    end

    def new
      @current_user = current_user
      @group = Group.new
    end

    def create
      @current_user = current_user
      @group = Group.new(group_params)
      @group.user = @current_user
      if @group.save
        redirect_to groups_path
      else
        puts "Error saving group:"
        puts @group.errors.full_messages
        render :new
      end
    end

    def show
      
    end

    private

    def group_params
      params.require(:group).permit(:name, :icon)
    end
end
