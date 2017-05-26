class CreateAudioLessons < ActiveRecord::Migration[5.1]
  def change
    create_table :audio_lessons do |t|
      t.references :lesson, foreign_key: true
      t.attachment :audio

      t.timestamps
    end
  end
end
