class EntitysController < ApplicationController

    def index
      @entities = current_user.entitys
    end

    def new
      @current_user = current_user
      @entity = Entity.new
    end

    def create
      @current_user = current_user
      @entity = @current_user.entitys.create(entity_params)
      if @entity.save
        redirect_to entitys_path
      else
        render :new
      end
    end

    def show
      
    end

    private

    def entity_params
      params.require(:entity).permit(:name)
    end
end
