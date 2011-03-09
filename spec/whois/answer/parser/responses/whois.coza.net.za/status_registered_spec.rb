# encoding: utf-8

# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/whois/answer/parser/responses/whois.coza.net.za/status_registered_spec.rb
#
# and regenerate the tests with the following rake task
#
#   $ rake genspec:parsers
#

require 'spec_helper'
require 'whois/answer/parser/whois.coza.net.za.rb'

describe Whois::Answer::Parser::WhoisCozaNetZa, "status_registered.expected" do

  before(:each) do
    file = fixture("responses", "whois.coza.net.za/status_registered.txt")
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
      lambda { @parser.registrant_contacts }.should raise_error(Whois::PropertyNotSupported)
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
