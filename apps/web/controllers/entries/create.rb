module Web::Controllers::Entries
  class Create
    include Web::Action
	include Web::Controllers::Authentication
	include Lotus::Action::Session

    expose :entry

    def call(params)
      @entry = EntryRepository.create(Entry.new(params[:entry]))

      redirect_to '/entries'
    end
  end
end
