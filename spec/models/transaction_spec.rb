require 'rails_helper'

describe Transaction do
  it 'needs to belong to a category to be created' do
    should belong_to(:category)
  end
end
