require 'lotus/action'
require 'lotus/controller'
require 'lotus/action/session'
require 'bcrypt'
      
module Web::Controllers::Entries
  class Authenticate
    include Web::Action
	include Lotus::Action::Session
	
	expose :user
	
    def call(params)

    	users = UserRepository.all
    	users.each do |e|
    		if (e.email == params[:user].fetch("email")) 
    		then
    			@user = e
    		end
    	end

    	if @user == nil 
    		then redirect_to '/entries'
		end
		
		aux = BCrypt::Password.new( @user.password )

		puts params[:user].fetch("password")

		if params[:user].fetch("password").chomp== aux
			puts 'comé?'
			session[:user_id] = @user.id
		end

		redirect_to '/entries'
    end
  end
end
