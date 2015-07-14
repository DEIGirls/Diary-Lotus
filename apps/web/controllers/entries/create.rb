module Web::Controllers::Entries
  class Create
    include Web::Action

    expose :entry

    def call(params)
      @entry = EntryRepository.create(Entry.new(params[:entry]))

      redirect_to '/'
    end
  end
end
