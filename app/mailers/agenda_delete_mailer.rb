class AgendaDeleteMailer < ApplicationMailer
  def agenda_delete_mail(member_email,title)
    @member_email = member_email
    @title = title

    mail to: @member_email.join(","), subject: "アジェンダ#{@title}が削除されました"
  end
end