require 'spec_helper'
require 'rails_helper'

feature 'create customer' do
scenario "can create customer" do
visit'/customers/new'
expect(page).tohave_content('Add a New Customer')

fill_in 'first_name',:with=>'john'
fill_in 'last_name',:with=>'goodman'
fill_in 'credit_value', :with=>1
click_button 'CreateCustomer'
expect(page).tohave_content('first_name: john')
expect(page).tohave_content('last_name: goodman')
end
end