module Web::Controllers::Entries
  class Destroy
    include Web::Action
	include Web::Controllers::Authentication
	include Lotus::Action::Session

    def call(params)
      @entry = EntryRepository.find(params[:id])
      EntryRepository.delete(@entry)
      redirect_to '/entries'
    end
  end
end
