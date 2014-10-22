When(/^shouldn't have requested the page$/) do  
  WebMock.should_not have_requested(:get, "paulswilliams.me.uk/about")
end

