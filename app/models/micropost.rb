class Micropost < ActiveRecord::Base
  belongs_to :user
  default_scope -> { order(created_at: :desc) }
  mount_uploader :file, FileUploader
  validates :user_id, presence: true
  validates :content, presence: true, length: { maximum: 140 }
  validate :file_size

  private

  	# Validates the size of an uploaded file
  	def file_size
  		if file.size > 5.megabytes
  			errors.add(:file, "should be less than 5MB")
  		end
  	end
end
