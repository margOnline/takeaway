require 'sinatra'
require 'haml'


require_relative 'lib/dish'
require_relative 'lib/customer'
require_relative 'lib/takeaway'
require_relative 'lib/order'
require_relative 'lib/order_line'

get ('/') do 
  haml :index
end

get ('/dish') do 
  haml :dish
end

get ('/customer') do
  haml :customer
end

get ('/order') do
  haml :order
end
