module Web::Controllers::Entries
  class New
    include Web::Action
	include Web::Controllers::Authentication
	include Lotus::Action::Session

    def call(params)
    end
  end
end
