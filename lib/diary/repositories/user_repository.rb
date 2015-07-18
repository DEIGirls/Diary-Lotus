class UserRepository
  include Lotus::Repository

  class << self
    def user_by_email(email)
      query do
        where(email: email)
      end.first
    end
  end
end
