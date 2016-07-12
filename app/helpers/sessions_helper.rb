module SessionsHelper

	#logs in the given user
	def log_in(user)
		session[:user_id] = user.id
	end

	#returns the current user, if any
	def current_user
		@current_user ||= User.find_by(id: session[:user_id])
	end

	#returns true if the user is logged in, false otherwise
	def logged_in?
		!current_user.nil?
	end

	#logs the user out
	def logout
		session.delete(:user_id)
		@current_user = nil
	end
end
