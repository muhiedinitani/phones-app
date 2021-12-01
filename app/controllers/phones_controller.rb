class PhonesController < ApplicationController
  def index
    @phones = Phone.all
    render 'index.html.erb'
  end

  def show
    @phone = Phone.find_by(id: params[:id])
    render 'show.html.erb'
  end

  def create
    @phone = Phone.new(
      model: params[:model],
      version: params[:version],
      color: params[:color]
    )
    @phone.save
    redirect_to "/phones/#{@phone.id}"
  end
  
  def new
    render 'new.html.erb'
  end
end
