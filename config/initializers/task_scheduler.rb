require 'rubygems'
require 'rake'
require 'rufus/scheduler'
scheduler = Rufus::Scheduler.new
scheduler.every '2m' do
system 'bundle exec rake demo:mail_users'
end 