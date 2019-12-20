class App < Karafka::App
  setup do |config|
    config.kafka.seed_brokers = ['kafka://kafka:9092']
    config.client_id = "client_#{ENV['APP_ID']}"
  end
end

App.boot!


