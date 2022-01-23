CarrierWave.configure do |config|
    config.fog_credentials = {
      provider:              'AWS',                        # required
      aws_access_key_id:     'AKIATZXB6H5YKRNMSMON',                        # required unless using use_iam_profile
      aws_secret_access_key: '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',                        # required unless using use_iam_profile
      use_iam_profile:       false,                         # optional, defaults to false
      region:                'eu-central-1',                  # optional, defaults to 'us-east-1'
    }
    config.fog_directory  = 'noizer'                                      # required
    # config.fog_public     = false                                                 # optional, defaults to true
    config.fog_attributes = { cache_control: "public, max-age=#{365.days.to_i}" } # optional, defaults to {}
    # For an application which utilizes multiple servers but does not need caches persisted across requests,
    # uncomment the line :file instead of the default :storage.  Otherwise, it will use AWS as the temp cache store.
    # config.cache_storage = :file
  end