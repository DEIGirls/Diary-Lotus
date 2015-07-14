module Web::Controllers::Home
  class Index
    include Web::Action

	expose :entries

    def call(params)
		@entries = EntryRepository.all
    end
  end
end
