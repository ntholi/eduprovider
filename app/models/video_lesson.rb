class VideoLesson < ApplicationRecord
  belongs_to :lesson

  has_attached_file :video, styles: {
    :medium => {
      :geometry => "640x480",
      :format => 'mp4'
    },
    :thumb => { :geometry => "160x120", :format => 'jpeg', :time => 10}
    }, :processors => [:transcoder]
    validates_attachment_content_type :video, content_type: /\Avideo\/.*\Z/
    validates_presence_of :video

    process_in_background :video
end
