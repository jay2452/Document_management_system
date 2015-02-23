if Rails.env.production?
  CarrierWave.configure do |config|
    config.fog_credentials = {
      # Configuration for Amazon S3
      :provider              => 'AWS',
      :aws_access_key_id     => 'AKIAIWVCVAXTEOXBOEUA',
      :aws_secret_access_key => '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'
    }
    config.fog_directory     =  ENV['S3_BUCKET']
  end
end