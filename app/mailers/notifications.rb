class Notifications < ActionMailer::Base
  default :from => "brad.heller@gmail.com"

  def newsletter_signup(email)
    @email = email
    subject = "[Wedding Newsletter Signup] #{email}"

    mail(:subject => subject, :to => 'brad.heller@gmail.com', :reply_to => email) do |format|
      format.html
    end

    mail(:subject => subject, :to => 'wardmel@gmail.com', :reply_to => email) do |format|
      format.html
    end
  end

  def rsvp(rsvp)
    @rsvp = rsvp

    mail(:subject => "RSVP: #{rsvp.names}", :to => 'wardmel@gmail.com') do |format|
      format.html
    end
  end
end
