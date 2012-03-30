require 'spec_helper'

describe Tilt::IcanhazTemplate do
  
  it "is registered for .ich files" do
    Tilt['test.ich'].should == Tilt::IcanhazTemplate
  end
  
  it "has a default MIME type of application/javascript" do
    Tilt::IcanhazTemplate.default_mime_type.should == 'application/javascript'
  end
  
  it "implements 'initialize_engine' (for Tilt compatibility)" do
    Tilt::IcanhazTemplate.instance_methods.should include(:initialize_engine)
  end

  it "implements 'prepare' (for Tilt compatibility)" do
    Tilt::IcanhazTemplate.instance_methods.should include(:prepare)
  end
  
  it "implements 'precompiled_template' (for Tilt compatibility)" do
    Tilt::IcanhazTemplate.instance_methods.should include(:precompiled_template)
  end
  
  it "renders the template" do
    filename = "#{rand(10000000)}"
    path = "/tmp/icanhaz_template/#{filename}.ich"
    `mkdir -p /tmp/icanhaz_template`
    `touch "#{path}" && echo "Hello, World" > "#{path}"`
    
    template = Tilt::IcanhazTemplate.new(path)
    
    puts template.evaluate
    template.evaluate.should == "(function(){ ich.addTemplate(\"/tmp/icanhaz_template/#{filename}\", \"Hello, World\\n\"); })()"
    
    File.delete path
  end
  
end