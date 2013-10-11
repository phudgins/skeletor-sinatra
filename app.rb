require 'sinatra'
require 'sinatra/assetpack'

assets do
  serve '/js', from: 'public/javascripts'

  js :foundation, [
    '/js/foundation/foundation.js',
    '/js/foundation/foundation.*.js' ]

  js :application, [
    '/js/vendor/*.js',
    '/js/app.js' ]

  serve '/css', from: 'public/stylesheets'

  css :application, [
    '/css/normalize.css',
    '/css/app.css' ]

  js_compression :jsmin
  css_compression :sass
end

get '/' do
  slim :index
end
