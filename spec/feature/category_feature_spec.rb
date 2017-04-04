require 'rails_helper'

feature '#Categories' do
  context 'Transactions:' do
    scenario 'should display a target spending creation link' do
      visit categories_path
      expect(page).to have_link 'Create Spending Target'
    end

    scenario 'should display table headings' do
      visit categories_path
      expect(page).to have_content 'Date'
      expect(page).to have_content 'Transaction'
      expect(page).to have_content 'Amount'
    end

    scenario 'should display a category' do
      visit categories_path
      expect(page).to have_content 'Food'
    end
  end

  xcontext 'Edit category:' do
    scenario 'should allow you to set a category target' do
      visit edit_category_path(1)
      expect(page).to have_content 'Food'
    end
  end
end
