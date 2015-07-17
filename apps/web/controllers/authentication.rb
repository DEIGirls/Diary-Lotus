require 'lotus/controller'

module Web::Controllers

  module Authentication
    def self.included(action)
      action.class_eval do
        before :authenticate!
      end
    end

    protected
    def authenticate!
      session[:user_id] or
        redirect_to '/entries/login'
    end
  end
end
