class Party < ApplicationRecord
  attr_accessor :broadcast_changes

  after_initialize :set_defaults
  after_save :send_change_message

  private

  def set_defaults 
    @broadcast_changes = true
  end

  def send_change_message
    WaterDrop::SyncProducer.call(self.to_json, topic: 'party') if broadcast_changes
  end

end
