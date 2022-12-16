require 'test_helper'

class StoryMailerTest < ActionMailer::TestCase
  test "story_created" do
    mail = StoryMailer.story_created
    assert_equal "Story created", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
