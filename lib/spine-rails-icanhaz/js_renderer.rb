module SpineRailsIcanhaz

  class JsRenderer
    
    def initialize(filename, data)
      @filename = filename
      @data = data
    end

    def render
      function_wrapper "ich.addTemplate(\"#{ view_path }\", \"#{ escape_quotes(@data) }\");"
    end

    private

    def function_wrapper text
      "(function(){ #{text} })()"
    end

    def escape_quotes text
      text.gsub(/\'/, '\\\\\'').gsub(/"/, "\\\"").gsub(/\n/, '\n')
    end
    
    def valid_extensions
      %w( ich icanhaz mst mustache erb )
    end
    
    def basename
      valid_extensions.each_with_object(@filename.dup) do |extension, string|
        string.gsub!(".#{extension}", '')
      end
    end
    
    def view_path
      rails_root = Kernel.const_defined?("Rails") ? ::Rails.root : ''
      basename.gsub("#{rails_root}/app/assets/javascripts/", '')
        .gsub('app/views/', '')
    end

  end

end