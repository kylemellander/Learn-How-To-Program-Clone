require 'rails_helper'

describe Section do
  it { should validate_presence_of :title }
  it { should have_many :lessons }
end
