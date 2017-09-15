Given(/^I access our\-cars page$/) do
  #visit home page defined on environment.rb
  visit "/"

When(/^I filter by BMW manufacture$/) do
  # finds manufacture checkbox element
  bmw_checkbox = find(:xpath, "/html/body/div/div/div[1]/div[2]/aside/form/div/ul/li[6]/div")
  #scroll the screen to focus on checkbox
  execute_script('window.scroll(0,1000);')
  #click on bmw checkbox
  bmw_checkbox.click
  save_and_open_screenshot
  using_wait_time 3 do
  #find bmw selector
  bmw_selector = find(:xpath, "/html/body/div/div/div[1]/div[2]/aside/form/div/div/span/span[1]/span/ul/li[1]")
  #expect selector to be visible
  expect(bmw_selector).to be_visible
  end
end

Then(/^All results are from BMW cars$/) do
  # pending
  # get number of total results present on ul li
  # iteract trough the list (all, for each) and check all car names are BMW
end

Then(/^Each car has a picture$/) do
  # pending
  # interact through the list (all, for each) and check all car results have [:src] that retuns status code 200
end

Then(/^Each car has complete information$/) do
  # pending
end
