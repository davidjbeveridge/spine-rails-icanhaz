require 'tilt'
require 'tilt/template'

module Tilt
  
  class IcanhazTemplate < Template
    
    def self.default_mime_type
      'application/javascript'
    end
    
    def initialize_engine
    end

    def prepare
    end
    
    def precompiled_template(locals)
    end
    
    def evaluate(scope=Object.new, locals={}, &block)
      Spine::Rails::Icanhaz::JsRenderer.new(file, data).render
    end
    
    
  end
  
  register IcanhazTemplate, 'ich'
  
end