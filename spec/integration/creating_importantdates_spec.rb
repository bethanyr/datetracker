require 'spec_helper'

feature 'create importantdates' do
	scenario "create importantdates" do
	  visit '/en/importantdates'
	  click_link I18n.t(:add_date)
	  page.select 'July', :from => 'importantdate[importantdate(2i)]'
	  page.select '2013', :from => 'importantdate[importantdate(1i)]'
	  page.select '17', :from => 'importantdate[importantdate(3i)]'
	  fill_in 'Name', :with => 'Day 7 assignment due'
	  fill_in 'Description', :with => 'for this assignment you need to write a program'
	  click_button 'Create Importantdate'
	  page.should have_content(I18n.t(:date_added))
	end

	scenario "validation works on creating important dates" do
		visit '/en/importantdates'
		click_link I18n.t(:add_date)
		click_button 'Create Importantdate'
	    page.should have_content(I18n.t(:date_added))
	end
end
