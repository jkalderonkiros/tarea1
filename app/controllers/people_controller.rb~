class PeopleController < ApplicationController
  def index
    @people = Person.all
  end

  def new
    @person = Person.new
  end

  def create
    @person = Person.new params[:person]	
    if @person.save
      redirect_to @person
    else
      render :new
    end
  end

  def show
    @person = Person.find(params[:id])
  end

  def edit
    @person = Person.find(params[:id])
    redirect_to @person
  end

  def update
    @person = Person.find(params[:id])
    @person.update_attributes(params[:person])
    redirect_to '/people'
  end

  def destroy
    @person = Person.find(params[:id])
    @person.destroy    
  end

end

