module Web::Controllers::Entries
  class Show
    include Web::Action

    def call(params)
		redirect_to "/entries"
    end
  end
end
