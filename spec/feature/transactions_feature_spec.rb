require 'rails_helper'

feature '#Transactions' do
  context 'No transactions:' do
      scenario 'should display a no transactions message' do
        visit transactions_path
        expect(page).to have_content 'You have no transactions to show'
      end
      scenario 'should display table headings' do
        visit transactions_path
        expect(page).to have_content 'Category'
        expect(page).to have_content 'Amount'
      end
    end

  context 'Transactions:' do

    before do
      @category = Category.create(name: 'food')
      # @restaurant = @user.restaurants.create(name: 'KFC')
      Transaction.create(date: '10/03/2017', amount: '23.00', vendor: 'Pret', trans_type: 'debit', category_id: 1)
      Transaction.create(date: '15/03/2017', amount: '27.00', vendor: 'Orange', trans_type: 'debit', category_id: 1)
      Transaction.create(date: '19/03/2017', amount: '40.00', vendor: 'Sainsburys', trans_type: 'debit', category_id: 2)

    end

    scenario 'should display categories for existing transactions' do
      visit transactions_path
      expect(page).to have_content 'food'
    end

    scenario "should display transaction total for category" do
      visit transactions_path
      @transactions = Transaction.all
      p @transactions
      expect(page).to have_content '50'
    end
  end
end
