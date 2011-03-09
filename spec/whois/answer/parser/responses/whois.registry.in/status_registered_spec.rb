# encoding: utf-8

# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/whois/answer/parser/responses/whois.registry.in/status_registered_spec.rb
#
# and regenerate the tests with the following rake task
#
#   $ rake genspec:parsers
#

require 'spec_helper'
require 'whois/answer/parser/whois.registry.in.rb'

describe Whois::Answer::Parser::WhoisRegistryIn, "status_registered.expected" do

  before(:each) do
    file = fixture("responses", "whois.registry.in/status_registered.txt")
    part = Whois::Answer::Part.new(:body => File.read(file))
    @parser = klass.new(part)
  end

  context "#status" do
    it do
      @parser.status.should == %w( ok )
    end
  end
  context "#available?" do
    it do
      @parser.available?.should == false
    end
  end
  context "#registered?" do
    it do
      @parser.registered?.should == true
    end
  end
  context "#created_on" do
    it do
      @parser.created_on.should == Time.parse("2005-02-14 20:35:14 UTC")
    end
  end
  context "#updated_on" do
    it do
      @parser.updated_on.should == Time.parse("2009-04-06 18:20:09 UTC")
    end
  end
  context "#expires_on" do
    it do
      @parser.expires_on.should == Time.parse("2011-02-14 20:35:14 UTC")
    end
  end
  context "#registrar" do
    it do
      @parser.registrar.should be_a(Whois::Answer::Registrar)
    end
    it do
      @parser.registrar.id.should == "R84-AFIN"
    end
    it do
      @parser.registrar.name.should == "Mark Monitor"
    end
  end
  context "#nameservers" do
    it do
      @parser.nameservers.should be_a(Array)
    end
    it do
      @parser.nameservers.should have(4).items
    end
    it do
      @parser.nameservers[0].should be_a(_nameserver)
    end
    it do
      @parser.nameservers[0].should == _nameserver.new(:name => "ns1.google.com")
    end
    it do
      @parser.nameservers[1].should be_a(_nameserver)
    end
    it do
      @parser.nameservers[1].should == _nameserver.new(:name => "ns2.google.com")
    end
    it do
      @parser.nameservers[2].should be_a(_nameserver)
    end
    it do
      @parser.nameservers[2].should == _nameserver.new(:name => "ns3.google.com")
    end
    it do
      @parser.nameservers[3].should be_a(_nameserver)
    end
    it do
      @parser.nameservers[3].should == _nameserver.new(:name => "ns4.google.com")
    end
  end
end
