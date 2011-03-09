# encoding: utf-8

# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/whois/answer/parser/responses/whois.publicinterestregistry.net/status_available_spec.rb
#
# and regenerate the tests with the following rake task
#
#   $ rake genspec:parsers
#

require 'spec_helper'
require 'whois/answer/parser/whois.publicinterestregistry.net.rb'

describe Whois::Answer::Parser::WhoisPublicinterestregistryNet, "status_available.expected" do

  before(:each) do
    file = fixture("responses", "whois.publicinterestregistry.net/status_available.txt")
    part = Whois::Answer::Part.new(:body => File.read(file))
    @parser = klass.new(part)
  end

  context "#registrar" do
    it do
      @parser.registrar.should == nil
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
      @parser.admin_contacts.should be_a(Array)
    end
    it do
      @parser.admin_contacts.should == []
    end
  end
  context "#technical_contacts" do
    it do
      @parser.technical_contacts.should be_a(Array)
    end
    it do
      @parser.technical_contacts.should == []
    end
  end
end
