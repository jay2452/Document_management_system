if Rails.env.production?
  CarrierWave.configure do |config|
    config.fog_credentials = {
      # Configuration for Amazon S3
      :provider              => 'AWS',
      :aws_access_key_id     => 'xxxxxxxxxxxxxxxxx',
      :aws_secret_access_key => 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'
    }
    config.fog_directory     =  ENV['S3_BUCKET']
  end
end
