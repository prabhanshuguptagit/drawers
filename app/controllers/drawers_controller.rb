class DrawersController < ApplicationController
  def index
    @drawers = current_user.drawers
  end
end
