require 'spec_helper'

module Spine::Rails::Icanhaz

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

  end

end