require 'rails_helper'

describe Lesson do
  it { should validate_presence_of :title }
  it { should validate_presence_of :sort_order }
  it { should validate_presence_of :content }
  it { should belong_to :section }

  context '#next' do
    it 'returns the lesson with the next-highest number than the current lesson' do
      current_lesson = Lesson.create({:title => 'lesson1', :sort_order => 1, content: "hi"})
      next_lesson = Lesson.create({:title => 'lesson2', :sort_order => 2, content: "hi"})
      expect(current_lesson.next).to eq next_lesson
    end
  end

  context '#prev' do
    it 'returns the lesson with the next-lowest number than the current lesson' do
      current_lesson = Lesson.create({:title => 'lesson1', :sort_order => 1, content: "hi"})
      next_lesson = Lesson.create({:title => 'lesson2', :sort_order => 2, content: "hi"})
      expect(next_lesson.prev).to eq current_lesson
    end
  end
end
