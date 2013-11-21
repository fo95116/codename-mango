class WritersController < ApplicationController

def index
  @writers = Writer.all
end

def new
  @writer = Writer.new
end

def create
  new_writer = Writer.create(params[:writer])
end

def show
  @writer = Writer.find(params[:id])
end

def edit
  @writer = Writer.find(params[:id])
end

def update
  updated_writer = Writer.find(params[:id])
  updated_writer.update_attributes(params[:writer])
  redirect_to writer_pathh(updated_writer)
end

def destroy
  Writer.delete(params[:id])
end

end
