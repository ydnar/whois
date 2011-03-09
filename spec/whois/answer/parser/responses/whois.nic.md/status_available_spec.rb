# encoding: utf-8

# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/whois/answer/parser/responses/whois.nic.md/status_available_spec.rb
#
# and regenerate the tests with the following rake task
#
#   $ rake genspec:parsers
#

require 'spec_helper'
require 'whois/answer/parser/whois.nic.md.rb'

describe Whois::Answer::Parser::WhoisNicMd, "status_available.expected" do

  before(:each) do
    file = fixture("responses", "whois.nic.md/status_available.txt")
    part = Whois::Answer::Part.new(:body => File.read(file))
    @parser = klass.new(part)
  end

  context "#registrar" do
    it do
      lambda { @parser.registrar }.should raise_error(Whois::PropertyNotSupported)
    end
  end
  context "#registrant_contacts" do
    it do
      @parser.registrant_contacts.should be_a(Array)
    end
    it do
      @parser.registrant_contacts.should == []
    end
  end
  context "#admin_contacts" do
    it do
      lambda { @parser.admin_contacts }.should raise_error(Whois::PropertyNotSupported)
    end
  end
  context "#technical_contacts" do
    it do
      lambda { @parser.technical_contacts }.should raise_error(Whois::PropertyNotSupported)
    end
  end
end
