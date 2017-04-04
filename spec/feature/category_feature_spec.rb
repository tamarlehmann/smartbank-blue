require 'rails_helper'

feature '#Categories' do

  before do
    Transaction.create(date: '10/03/2017', amount: '23.00', vendor: 'Pret', trans_type: 'debit', category_id: 8)
    Transaction.create(date: '15/03/2017', amount: '27.00', vendor: 'Orange', trans_type: 'debit', category_id: 8)
    Transaction.create(date: '19/03/2017', amount: '50.00', vendor: 'Sainsburys', trans_type: 'debit', category_id: 9)

    visit transactions_path
    click_link 'food'
  end

  scenario 'should display table headings' do
    expect(page).to have_content 'Date'
    expect(page).to have_content 'Transaction'
    expect(page).to have_content 'Amount'
  end
  
   scenario 'should display a target spending creation link' do
    expect(page).to have_link 'Create Spending Target'
   end

  scenario 'should display a category' do
    expect(page).to have_content 'Food'
  end

  xcontext 'Edit category:' do
    scenario 'should allow you to set a category target' do
      visit edit_category_path(1)
      expect(page).to have_content 'Food'
    end
  end
end
