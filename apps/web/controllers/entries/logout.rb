module Web::Controllers::Entries
  class Logout
    include Web::Action
	include Web::Controllers::Authentication
	include Lotus::Action::Session

    def call(params)
		session[:user_id] = nil
		redirect_to '/'
    end
  end
end
