class EntitiesController < ApplicationController
  before_action :set_group

  def new
    @current_user = current_user
    @entity = Entity.new
    @groups = current_user.groups
  end

  def create
    @current_user = current_user
    @entity = Entity.create(name: params[:name], amount: params[:amount])
    @groups_id = params[:category_id]
    print '111111111111111111'
    p @groups_id
  
    params[:category_id].each do |category_id|
      group = Group.find(category_id)
      @entity.categories << group
    end
    if @entity.save
      new_group_entity_path(@group)
    else
      render :new
    end
  end

  private

  def set_group
    @group = current_user.groups.find(params[:group_id])
  end

  def group_params
    params.require(:entity).permit(:name, :amount, category_id: [])
  end

end
