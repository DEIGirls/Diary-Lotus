module Web::Controllers::Entries
  class Destroy
    include Web::Action

    def call(params)
      @entry = EntryRepository.find(params[:id])
      EntryRepository.delete(@entry)
      redirect_to '/entries'
    end
  end
end
