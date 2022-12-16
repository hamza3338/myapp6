# Preview all emails at http://localhost:3000/rails/mailers/story_mailer
class StoryMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/story_mailer/story_created
  def story_created
    StoryMailer.story_created
  end

end
