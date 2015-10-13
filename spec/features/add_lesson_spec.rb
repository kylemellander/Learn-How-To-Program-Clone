require 'rails_helper'

describe "the add a lesson process" do
  it "adds a new lesson" do
    visit lessons_path
    click_on "new"
    fill_in "Title", with: "Boo"
    fill_in "Content", with: "Hoo"
    fill_in "Sort order", with: "1"
    click_on "Create Lesson"
    expect(page).to have_content "Boo"
  end

  it "gives error when no title is entered" do
    visit new_lesson_path
    click_on 'Create Lesson'
    expect(page).to have_content 'errors'
  end
end
