class UsersController < ApplicationController

  def index
    @users = User.all

    #@list_of_comments = matching_comments.order({ :created_at => :desc })

    render({ :template => "users/index.html.erb" })
  end


  

end
