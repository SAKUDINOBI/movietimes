class SessionsController < ApplicationController
  def new
  end
    def create
      user =User.find_by(email: params[:session][:email].downcase)
      if user &&user.authenticate(params[:session][:password])
        # Log theuser in and redirect them to the user’s show page.
        log_in(user)
        redirect_touser
      else
        # Create an error message.
       flash[:notice] = 'Invalid email/password combination' # Not quite right!
        render 'new'
      end
    end

    def destroy
       log_out
       redirect_to root_url
  end
end
