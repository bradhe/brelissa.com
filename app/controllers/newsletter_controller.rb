class NewsletterController < ApplicationController
  def signup
    @newsletter_signup = NewsletterSignup.new :email => params[:email]
    
    respond_to do |format|
      if @newsletter_signup.valid? and @newsletter_signup.save
        Notifications.newsletter_signup(params[:email]).deliver
        
        format.json { render :json => true }
        format.html { redirect_to :root_url, :notice => 'You have been signed up!' }
      else
        format.json { render :json => { :message => @newsletter_signup.errors }, :status => 400 }
        format.html { render :template => 'newsletter/index' }
      end
    end
  end
  
  def index
    @newsletter_signup = NewsletterSignup.new
  end
end
