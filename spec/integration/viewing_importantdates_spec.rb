require 'spec_helper'

feature 'View important dates' do
  scenario "Viewing important dates" do
	  importantdate = Factory.create(:importantdate => "2013-07-17", :name => "test",)
	  visit '/'
	  click_link '2013-07-17 00:00:00 UTC'
	  page.current_url.should == importantdate_url(importantdate)
	 end
end
	


