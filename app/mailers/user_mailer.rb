class UserMailer < ApplicationMailer
	default from: 'markucinet@gmail.com'
 
  def welcome_email(reminder)
    @reminder = reminder
    attachments.inline['birthday.gif'] = File.read('app/assets/images/birthday.gif')
    #@attachments.inline['birthday.gif'] = File.read( Rails.root.join('app/assets/images/birthday.gif') )
 
    mail(to: reminder.email, subject: 'Birthday wishes')
  end
end
