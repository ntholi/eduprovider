class VideoLesson < ApplicationRecord
  belongs_to :lesson
  mount_uploader :video, VideoUploader
end
