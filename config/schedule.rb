#require 'rufus-scheduler'

#scheduler = Rufus::Scheduler::singleton
#scheduler.at '2017/12/05 00:01:00' do
  # do something
 # UserMailer.welcome_email(@reminder).deliver
#end

every 2.minutes, mailto: 'sarumathiap@gmail.com'  do
  runner "UserMailer.welcome_email"
end
#every 2.minutes do
#   command "/usr/bin/some_great_command"
 #  runner "Reminder.automatic", :environment => 'development'
#   rake "some:great:rake:task"
#end
# Use this file to easily define all of your cron jobs.
#
# It's helpful, but not entirely necessary to understand cron before proceeding.
# http://en.wikipedia.org/wiki/Cron

# Example:
#
# set :output, "/path/to/my/cron_log.log"
#
# every 2.hours do
#   command "/usr/bin/some_great_command"
#   runner "MyModel.some_method"
#   rake "some:great:rake:task"
# end
#
# every 4.days do
#   runner "AnotherModel.prune_old_records"
# end

# Learn more: http://github.com/javan/whenever
