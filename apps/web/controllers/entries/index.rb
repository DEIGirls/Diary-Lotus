module Web::Controllers::Entries
  class Index
    include Web::Action
	include Web::Controllers::Authentication
	include Lotus::Action::Session
	expose :entries
	
    def call(params)
		@entries = EntryRepository.all
    end
  end
end
