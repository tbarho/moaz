CarrierWave.configure do |config|
  config.fog_credentials = {
    :provider => 'AWS',
    :aws_access_key_id => 'AKIAIIA5NINI4TW4ZHMQ',
    :aws_secret_access_key => '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',
    :region => 'us-east-1'
  }
  config.fog_directory = 'moazami'
end
