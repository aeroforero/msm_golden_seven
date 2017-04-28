class DirectorsController < ApplicationController
  def index
    @director = Director.all
    render("directors/index.html.erb")
  end
  def details
    @director = Director.find(params[:id])
    render("directors/details.html.erb")
  end

  def create
    render("directors/new_form.html.erb")
  end
  def create_row
    d = Director.new
    d.dob = params[:dob]
    d.name = params[:name]
    d.bio = params[:bio]
    d.image_url = params[:image_url]
    d.save

    redirect_to("/directors/#{d.id}")
  end

  def update
    @director = Director.find(params[:id])
    render("directors/edit_form.html.erb")
  end


end
