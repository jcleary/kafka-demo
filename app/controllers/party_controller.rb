class PartyController < ApplicationController
  def index
    @parties = Party.all.order(:uid)
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

  def change
    party = Party.find(params[:party_id])

    case rand(3)
    when 0
      party.date_of_birth = Faker::Date.birthday(18, 65)
    when 1
      party.first_name = Faker::Name.first_name
    when 2
      party.last_name = Faker::Name.last_name
    end

    party.save!

    redirect_to action: :index
  end
end
