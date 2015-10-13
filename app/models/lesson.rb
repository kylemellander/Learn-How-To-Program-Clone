class Lesson < ActiveRecord::Base
  validates_presence_of :title, :sort_order, :content
  belongs_to :section

  def next
    lessons = Lesson.all.order(sort_order: :asc)
    @next_lesson = lessons.select{ |lesson|
      lesson.sort_order > sort_order
    }[0]
  end

  def prev
    lessons = Lesson.all.order(sort_order: :asc)
    @prev_lesson = lessons.select{ |lesson|
      lesson.sort_order < sort_order
    }[-1]
  end
end
