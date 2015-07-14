module Web::Controllers::Entries
  class Destroy
    include Web::Action

    def call(params)
		puts "oi"
      @entry = EntryRepository.find(params[:id])
      puts "oi1"
      EntryRepository.delete(@entry)
      redirect_to '/entries'
    end
  end
end
