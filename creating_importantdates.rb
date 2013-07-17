require 'spec_helper'

feature 'create importantdates' do
	scenario "create importantdates" do
	  visit '/'
	  click_link 'Add date'
	  #fill_in 'importantdate', :with => '2013/07/16'
	  page.select 'July', :from => 'importantdate[importantdate(2i)]'
	  page.select '2013', :from => 'importantdate[importantdate(1i)]'
	  page.select '17', :from => 'importantdate[importantdate(3i)]'
	  fill_in 'Name', :with => 'Day 7 assignment due'
	  fill_in 'Description', :with => 'for this assignment you need to write a program'
	  click_button 'Create Importantdate'
	  page.should have_content('Date added.')
	end

	scenario "validation works on creating important dates" do
		visit '/'
		click_link 'Add date'
		click_button 'Create Importantdate'
	    page.should have_content('Date added.')
	end
end