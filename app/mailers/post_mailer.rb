class PostMailer < ApplicationMailer
  def post_mail(post)
    @post = post
    mail to: "machiko.fujii@gmail.com", subject: "Your image has been successfully posted"
  end
end
