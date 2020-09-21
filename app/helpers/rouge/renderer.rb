# Ref. https://www.lukeko.com/11/using-rouge-with-redcarpet
require 'redcarpet'
require 'rouge'
# require 'rouge/plugins/redcarpet'
require_dependency 'rouge/plugins/redcarpet'

class Rouge::Renderer < Redcarpet::Render::HTML
  include Rouge::Plugins::Redcarpet
end
