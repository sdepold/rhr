require 'spec_helper'

describe RHR do
  def rhr(command)
    `cd spec/site && ../../bin/rhr #{command}`
  end

  it "has a VERSION" do
    RHR::VERSION.should =~ /^[\.\da-z]+$/
  end

  it "has a commandline version" do
    rhr("-v").should =~ /^[\.\da-z]+$/m
  end

  it "has a commandline help" do
    rhr("-h").should =~ /Ruby Hypertext Refinement/
  end

  describe 'server' do
    include Rack::Test::Methods

    before :all do
      Dir.chdir 'spec/site'
    end

    def app
      RHR::Server.new
    end

    it "can get /" do
      get '/'
      last_response.body.should == 'TEST'
    end

    it "evaluates erb files" do
      get '/index.erb'
      last_response.body.should == 'TEST'
    end

    it "can get static files" do
      get '/plain.html'
      last_response.body.should == "<%= 'TEST' %>\n"
    end

    it "can get nested index.erb"
    it "can get static files with correct content-type"
    it "ignores common ruby files"
    it "ignores _files"
    it "ignores .files"
    it "ignores _folders"
  end
end
