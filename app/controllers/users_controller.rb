class UsersController < ApplicationController

  def index
    @users = User.all

    #@list_of_comments = matching_comments.order({ :created_at => :desc })

    render({ :template => "users/index.html.erb" })
  end

  def show
    the_id = params.fetch("path_id")

    matching_users = User.where({ :username => the_id })

    @the_user = matching_users.at(0)

    render({ :template => "users/show.html.erb" })
  end
  

end
