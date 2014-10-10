class UsersController < ApplicationController
    def login
    end
	
	def login_attempt
		@users = User.where(username: params[:username_or_email], password: params[:login_password])
		
		
		if @users[0].present?
			redirect_to contacts_path( id: @users[0].id )
		# redirect_to url_for(:controller => :contacts, :action => :index, user.id =>@params[:user_id])
	    else
	    	flash[:notice] = "Invalid Username or Password"
	    	flash[:color]= "invalid"
	    	render :login
	    
	    end
	end
end
