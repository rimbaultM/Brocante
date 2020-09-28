# Preview all emails at http://localhost:3000/rails/mailers/user_mailer
class UserMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/user_mailer/welcome
  def welcome
    mat = User.create(email: "rimbaultando@gmail.com")
    user = mat
    # This is how you pass value to params[:user] inside mailer definition!
    UserMailer.welcome(mat)
  end

end
