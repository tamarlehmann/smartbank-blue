require 'rails_helper'

feature '#Transactions' do
  context 'No transactions:' do
      scenario 'should display a no transactions message' do
        visit transactions_path
        expect(page).to have_content 'You have no transactions to show'
      end
    end
end
