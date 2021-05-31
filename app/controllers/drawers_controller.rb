class DrawersController < ApplicationController
  before_action :authenticate_user!

  def index
    @drawers = current_user.drawers
    @drawer = Drawer.new
  end

  def create
    Drawer.create!(name: params[:drawer][:name], user: current_user)

    redirect_to :drawers
  end
end
