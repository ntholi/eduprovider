module LessonsHelper
  def questions_count(lesson)
    Question.where(lesson: lesson).count
  end
end
