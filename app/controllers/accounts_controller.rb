class AccountsController < ApplicationController
	
	def edit
		# this is from the application_controller.rb
		@user = @current_user
	end
	
	def update
		@user = @current_user
		
		if @user.update_with_stripe(form_params)
			flash[:success] = "You account has been updated"
			redirect_to root_path
		else
			render "edit"
		end
	end
	
	def destroy
		@current_user.destroy_and_unsubscribe
		# delete the current user
		# remove the subscription
		# remove the session
		reset_session
		# redirect to home page
		redirect_to root_path
	end
	
	def form_params
		params.require(:user).permit(:subscription_plan)
	end
	
end
