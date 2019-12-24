class PartyController < ApplicationController
  def index
    @parties = Party.all
  end

  def create
    Party.create(
      uid: SecureRandom.uuid,
      first_name: Faker::Name.first_name,
      last_name: Faker::Name.last_name,
      date_of_birth: Faker::Date.birthday(18, 65)
    )
    redirect_to action: :index
  end
end
