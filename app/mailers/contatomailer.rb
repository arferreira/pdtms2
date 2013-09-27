class Contatomailer < ActionMailer::Base
    attr_accessor :name, :email
  default to: "antonioricardo@ifollowagencia.com.br",
          from: "antonioricardo@ifollowagencia.com.br"

  headers = {'Return-Path' => 'antonioricardo@ifollowagencia.com.br'}

  def send_email(user_info)
    @user_info = user_info

    mail(
      to: "antonioricardo@ifollowagencia.com.br",
      subject: "Email recebido pelo site do PDT",
      from: "Site PDT <antonioricardo@ifollowagencia.com.br>",
      return_path: "antonioricardo@ifollowagencia.com.br",
      date: Time.now,
      content_type: "text/html"
    )
  end
end
