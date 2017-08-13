class ModelMailer < ApplicationMailer
  default from: "sandboxee95f37da1cb4fdf8b0d5034c724ed32.mailgun.org"
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.model_mailer.new_record_notification.subject
  #
  def new_record_notification
    @greeting = "Hi"
    @record = record
    mail to: "kdpark1623@gmail.com", subject: "Success! You did it."
  end
end
