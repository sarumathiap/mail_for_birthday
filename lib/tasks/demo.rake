#class Date
#	def distance_to(end_date)
#		years = end_date.year - year
#		months = end_date.month - month
#		days = end_date.day - day
#		if days < 0
#			days += 30
#			months -= 1
#		end
#		if months < 0
#			months += 12
#			years -= 1
#		end
#		{:years => years, :months => months, :days => days}
#	end
#end
require 'rufus-scheduler'
   namespace :demo do
     desc "This is to send an email to users"
     task(:mail_users => :environment) do
     UserMailer.welcome_email(@reminder).deliver!    # as we saw in Step7 above                        
     end
     end