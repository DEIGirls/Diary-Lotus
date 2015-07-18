require 'lotus/action'
require 'lotus/controller'
require 'lotus/action/session'
require 'bcrypt'

module Web::Controllers::Entries
  class Authenticate
    include Web::Action
    include Lotus::Action::Session

    def call(params)
      email = params[:user].fetch("email")
      user  = UserRepository.user_by_email(email)

      if user && BCrypt::Password.new(user.password) == params[:user].fetch("password")
        session[:user_id] = user.id
        redirect_to '/entries'
    	else
        redirect_to '/entries/login'
      end
		end
  end
end
