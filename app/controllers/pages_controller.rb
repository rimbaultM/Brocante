class PagesController < ApplicationController
  def home
  end

  def path
    data = params[:body]
    subject = arams[:subject]
    user = params[:email]
    Mailer.mail_method(data, user, subject).deliver
  end
end
