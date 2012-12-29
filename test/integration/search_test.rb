require 'test_helper'

class SearchTest < ActionDispatch::IntegrationTest

  test "search for item in database works" do
    visit pages_path
    assert_equal pages_path, current_path

    link = Link.create(:title => "Random Title: #{Time.now.to_f}", :url => 'http://testlink.com')

    fill_in "q", :with => "Random Title"
    click_button 'Search'
    assert_equal search_path, current_path

    assert has_content?(link.title)
  end

end