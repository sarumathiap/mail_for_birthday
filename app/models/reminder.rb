class Reminder < ApplicationRecord
  acts_as_birthday :date_of_birth
	validates_presence_of :name
 	validate :user_must_have_been_born
  validates_date :date_of_birth,:on => :create, :on => :today
  # validates_date :date_of_birth
  #validate :birthday
 def self.automatic
  reminder = Reminder.where("extract(month from date_of_birth) = ? AND extract(day from date_of_birth) = ?", Date.today.strftime('%m'), Date.today.strftime('%d'))

    reminder.each do |reminder|
      UserMailer.delay.welcome_email(reminder)
    end
  end 

 #def birthday

  #reminder = Reminder.all.where(:date_of_birth => Date.current)
 
#end
#def birthday_today?
#date_of_birth.month == Time.now.month &&  
#date_of_birth.day == Time.now.day
  
#end
  	def next_birthday
    Date.distance_to(self.date_of_birth)
  	end

  
  	def is_birthday?
  	self.next_birthday[:months] == 0 and self.next_birthday[:days] == 0
 end
  	def user_must_have_been_born
    	if date_of_birth and date_of_birth > Date.today
      errors.add(:date_of_birth, "User must have been born.")
  end
 end
end
