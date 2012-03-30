module Spine
  module Rails
    module Icanhaz

      class JsRenderer
        def initialize(filename, data)
          @filename = filename
          @data = data
        end

        def render
          function_wrapper "ich.addTemplate(\"#{ template_name }\", \"#{ escape_quotes(@data) }\");"
        end

        private

        def function_wrapper text
          "(function(){ #{text} })()"
        end

        def template_name
          rails_root = Kernel.const_defined?("Rails") ? Rails.root : ''
          @filename
          .gsub('.ich', '')
          .gsub("#{rails_root}/app/assets/javascripts/", '')
          .gsub('app/views/', '')
        end

        def escape_quotes text
          text.gsub(/\'/, '\\\\\'').gsub(/"/, "\\\"").gsub(/\n/, '\n')
        end

      end

    end
  end
end