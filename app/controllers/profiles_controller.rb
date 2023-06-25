class ProfilesController < ApplicationController
  def index
    @users = users
  end
  def users
    query = user.ransack(username_cont: search_query)
    @users = query.result(distince: true )
  end
  def search_query
    params[:query]
  end
end
