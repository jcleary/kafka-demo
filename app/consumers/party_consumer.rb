class PartyConsumer < ApplicationConsumer
  def consume
    party = Party.find_or_initialize_by(uid: party_params['uid'])
    party.broadcast_changes = false
    party.attributes = party_params
    party.save!
  end

  def party_params
    params.payload.select {|key, value| party_keys.include?(key) }
  end

  def party_keys
    @keys ||= [ "first_name", "last_name", "date_of_birth", "uid" ]
  end
end
