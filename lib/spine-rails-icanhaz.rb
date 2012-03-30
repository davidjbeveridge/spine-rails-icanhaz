$: << File.join(File.dirname(__FILE__), '/spine-rails-icanhaz')

require 'rubygems'
require 'bundler/setup'

require 'sprockets'

require "version"
require 'js_renderer'
require 'tilt-icanhaz_template'

module Spine
  module Rails
    module Icanhaz
      
      Sprockets.register_engine '.ich', Tilt::IcanhazTemplate
      
    end
  end
end