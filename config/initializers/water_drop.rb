WaterDrop.setup do |config|
  config.deliver = true
  config.kafka.seed_brokers = %w[kafka://kafka:9092]
end  
# setup do |config|
#     config.kafka.seed_brokers = ['kafka://kafka:9092']
#     config.client_id = "client_#{ENV['APP_ID']}"
#     # config.backend = :sidekiq
#   end
# end

# App.boot!


