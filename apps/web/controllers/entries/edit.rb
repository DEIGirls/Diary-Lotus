module Web::Controllers::Entries
  class Edit
    include Web::Action
	include Web::Controllers::Authentication
	include Lotus::Action::Session
    expose :entry

    def call(params)
		@entry = EntryRepository.find(params[:id])
    end
  end
end
