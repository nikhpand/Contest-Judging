Then /^I should see .* list of judges$/ do
    page.should have_content('Judges')
    page.should have_selector('table')
end
