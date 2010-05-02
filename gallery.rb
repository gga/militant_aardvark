require 'rubygems'
require 'sinatra'

require 'haml'
require 'yaml'

get '/' do
  # Find every directory inside the sub-directory 'galleries'. Each of
  # those will become a gallery
#   @galleries = Dir['galleries/*'].collect do |name|
#     if File.directory?(name)
#       settings = { :path => name }
#       settings.merge(YAML::load(name + $/ + 'info.yml')) if File.exists?(name + $/ + 'info.yml')
#     end
#   end.compact
  @galleries = Dir['*']
  haml :index
end

get '/:gallery' do
  haml :gallery
end

get '/:gallery/:image' do
  haml :image
end
