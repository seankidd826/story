class MomstoriesController < ApplicationController

  def index
    @momstories = Momstory.all
  end

  def new
    @momstory = Momstory.new
  end

  def create
    @momstory = Momstory.new( momstory_params )

    if @momstory.save
      redirect_to root_url
    else
      render :action => :new
    end
  end

  def edit
    @momstory = Momstory.find(params[:id])
  end

  def update
    @momstory = Momstory.find(params[:id])

    if params[:destroy_pic]
      @momstory.image = nil
    end

    if @momstory.update(momstory_params)
      redirect_to root_url
    else
      render :action => :edit
    end
  end

  def destroy
    @momstory = Momstory.find(params[:id])
    @momstory.destroy

    redirect_to root_url
  end

  protected

  def momstory_params
    params.require(:momstory).permit(:image, :content, :content2, :content3, :content4)
  end


end
