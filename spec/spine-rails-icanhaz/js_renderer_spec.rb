require 'spec_helper'

module SpineRailsIcanhaz

  describe JsRenderer do

    before(:each) do
      @js_renderer = JsRenderer.new 'app/views/todos/new', "<html><body class=\"stuff\" id='main'><h1>New Todo</h1>
</body></html>"
    end

    it "creates instances" do
      @js_renderer.should be_a JsRenderer
    end
    
    it "outputs the JavaScript to register an ICanHaz view" do
      @js_renderer.render.should == "(function(){ ich.addTemplate(\"todos/new\", \"<html><body class=\\\"stuff\\\" id=\\'main\\'><h1>New Todo</h1>\\n</body></html>\"); })()"
    end

    describe "file extensions" do
      
      it "strips the ich extension from the template name" do
        js_renderer = JsRenderer.new 'app/views/todos/new.ich', "Just Testing"
        js_renderer.render.should == "(function(){ ich.addTemplate(\"todos/new\", \"Just Testing\"); })()"
      end

      it "strips the icanhaz extension from the template name" do
        js_renderer = JsRenderer.new 'app/views/todos/new.icanhaz', "Just Testing"
        js_renderer.render.should == "(function(){ ich.addTemplate(\"todos/new\", \"Just Testing\"); })()"
      end

      it "strips the mst extension from the template name" do
        js_renderer = JsRenderer.new 'app/views/todos/new.mst', "Just Testing"
        js_renderer.render.should == "(function(){ ich.addTemplate(\"todos/new\", \"Just Testing\"); })()"
      end

      it "strips the mustache extension from the template name" do
        js_renderer = JsRenderer.new 'app/views/todos/new.mustache', "Just Testing"
        js_renderer.render.should == "(function(){ ich.addTemplate(\"todos/new\", \"Just Testing\"); })()"
      end

      it "strips the erb and ich extensions from the template name" do
        js_renderer = JsRenderer.new 'app/views/todos/new.ich.erb', "Just Testing"
        js_renderer.render.should == "(function(){ ich.addTemplate(\"todos/new\", \"Just Testing\"); })()"
      end
      
      it "strips all valid extensions, just for fun" do
        js_renderer = JsRenderer.new "app/views/todos/new.ich.icanhaz.mst.mustache.erb", "Just Testing"
        js_renderer.render.should == "(function(){ ich.addTemplate(\"todos/new\", \"Just Testing\"); })()"
      end
      
    end
  end

end