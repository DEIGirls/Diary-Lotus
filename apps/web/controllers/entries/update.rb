module Web::Controllers::Entries
  class Update
    include Web::Action

    def call(params)
	  @entry = EntryRepository.find(params[:id])
      @entry.update(params[:entry])
      EntryRepository.update(@entry)
	  @entries = EntryRepository.all
      redirect_to '/entries'
    end
  end
end
