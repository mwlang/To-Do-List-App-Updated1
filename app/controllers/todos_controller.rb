class TodosController < ApplicationController
before_filter :authenticate_user!, :except =>[:show, :index]
  def index
	@todos = Todo.where(done: false)
	@todone = Todo.where(done: true)
   end

  def new
	@todo = Todo.new
end

def todo_params
	params.require(:todo).permit(:name, :done)
end
def create
	@todo = Todo.new(todo_params)
	if @todo.save

		redirect_to todos_path, :notice => "Your todo item was created!"
	else
		render "new"
	end
end

def update
	@todo = Todo.find(params[:id])
 
	if @todo.update_attributes(params[:todo])
		redirect_to todos_path, :notice => "Your todo item was marked as done!"
	else
		redirect_to todos_path, :notice => "Your todo item was unable to be marked as done!"
	end
end

def destroy
	@todo = Todo.find(params[:id])
    @todo.destroy

    redirect_to todos_path, :notice => "Your todo item was deleted!"
end




def edit
	@todo = Todo.find(params[:id])
end
end