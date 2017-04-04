require 'rails_helper'

feature '#Categories' do
  context 'No transactions:' do

    # scenario 'should display a no transactions message' do
    #   visit categories_path
    #   expect(page).to have_content 'You have no transactions to show for this category'
    # end

    scenario 'should display table headings' do
      visit categories_path
      expect(page).to have_content 'Date'
      expect(page).to have_content 'Transaction'
      expect(page).to have_content 'Amount'
    end
  end

  context 'With transactions:' do
    scenario 'should display a category' do
      visit categories_path
      expect(page).to have_content 'Food'
    end
  end
end
