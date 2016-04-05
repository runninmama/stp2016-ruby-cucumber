Given(/^I have entered a valid address$/) do
  visit 'http://www.dominos.com'
  find('.qa-Cl_order').click
end

When(/^I continue to delivery$/) do
  find('.js-delivery').click
  find('#Address_Type_Select').send_keys 'House'
  find('#Street').send_keys '17 Main Street'
  find('#City').send_keys 'Neenah'
  find('#Region').send_keys 'WI'
  find('#Postal_Code').send_keys '54956'
  find('.js-search-cta').click
  end

Then(/^all entrees available for order$/) do
  expect(page).to have_css('#entreesPage')
  end
