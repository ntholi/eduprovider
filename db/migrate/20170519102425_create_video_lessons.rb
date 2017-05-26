class CreateVideoLessons < ActiveRecord::Migration[5.1]
  def change
    create_table :video_lessons do |t|
      t.references :lesson, foreign_key: true
      t.attachment :video

      t.timestamps
    end
  end
end
