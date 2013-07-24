require 'spec_helper'

feature 'View important dates' do
  scenario "Viewing important dates" do
	  importantdate = Factory.create(:importantdate, :importantdate => "2014-07-17", :name => "test")
	  visit '/en/importantdates'
	  click_link '2014-07-17 00:00:00 UTC'
	  page.current_url.should == importantdate_url(importantdate)
	 end
end



