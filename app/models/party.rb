class Party < ApplicationRecord
  after_save :send_change_nessage


  private

  def send_change_nessage
    WaterDrop::SyncProducer.call(self.to_json, topic: 'party')
  end
end
