class EntitysController < ApplicationController
    def index
      @entities = current_user.entitys
    end  
end
