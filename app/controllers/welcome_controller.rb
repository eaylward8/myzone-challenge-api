class WelcomeController < ApplicationController
  def index
    render json: 'home here now'
  end
end