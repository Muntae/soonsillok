CarrierWave.configure do |config|
  config.fog_credentials = {
    provider:              'AWS',                        # required
    aws_access_key_id:     'AKIAIG5C7GXKL4ZLIH7Q',                        # required
    aws_secret_access_key: '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',                        # required
    region:                'ap-northeast-2'                  # optional, defaults to 'us-east-1'
  }
  config.fog_directory  = 'soonsillok'                          # required
  
end