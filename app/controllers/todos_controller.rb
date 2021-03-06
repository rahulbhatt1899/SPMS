class TodosController < ApplicationController

    before_action :set_project
    before_action :set_todo, only: [:show,:edit,:update,:destroy]

    def index
        @todos = ToDo.find(params[:project_id])
    end
    def new
        @todo = ToDo.new
    end


    def create
        @todo = ToDo.new(todo_params)
        @todo.created_by = current_user.id
        if @todo.save
            redirect_to project_path(@project.id)
        else
            redirect_to project_path(@project.id)
        end
    end

    def show
    end

    def update #save changes
        if @todo.update_attributes(todo_params)
            redirect_to project_todos_path
        else
            render 'edit'
        end
    end

    def destroy
        @todo.destroy
        redirect_to projects_path
    end

    def edit #display form for exiting record
        @todo = ToDo.find(params[:id])
    end

    private
    
    def set_project
        @project = Project.find(params[:project_id])
    end

    def set_todo
        @todo = ToDo.find(params[:id])
    end

    def todo_params
        params.require(:to_do).permit(:title,:_type,:status,:priority,:assignee,:project_id,:description,:created_by,:updated_by)
    end

    
end
