class StoryMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.story_mailer.story_created.subject
  #
  def story_created
    @greeting = "Hi"
    mail to: "to@example.org"
  end
end
