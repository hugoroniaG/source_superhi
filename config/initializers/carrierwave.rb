CarrierWave.configure do |config|
  config.fog_credentials = {
	provider:              'AWS',                        
	aws_access_key_id:     Rails.application.credentials[Rails.env.to_sym][:access_key_id],                   aws_secret_access_key: Rails.application.credentials[Rails.env.to_sym][:secret_access_key],               use_iam_profile:       true,                        
  }
  config.fog_directory  = Rails.application.credentials[Rails.env.to_sym][:aws_bucket]                                      
end