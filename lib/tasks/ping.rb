require 'rufus-scheduler'
require 'net/ping'

@icmp = Net::Ping::ICMP.new('http://etsydemostore.herokuapp.com')

scheduler = Rufus::Scheduler.new

scheduler.every '10m' do
  @icmp.ping
end