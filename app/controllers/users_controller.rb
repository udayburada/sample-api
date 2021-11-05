class UsersController < ApplicationController
  require 'httparty'

  def index
  end

  def users_data
    @user_id = params["user_id"]
    url = @user_id.present? ? "https://blooming-savannah-20593.herokuapp.com/api/users/#{@user_id}" : "https://blooming-savannah-20593.herokuapp.com/api/users/"
    @results = HTTParty.get(url)
    respond_to do |format|
      format.html
    end
  end
end
