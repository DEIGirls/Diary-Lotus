module Web::Controllers::Entries
  class Edit
    include Web::Action
    expose :entry

    def call(params)
		@entry = EntryRepository.find(params[:id])
    end
  end
end
