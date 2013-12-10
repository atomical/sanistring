require 'spec_helper'

describe Sanistring do

  describe '#sanitize' do
    it 'removes prohibited characters' do
      Sanistring.sanitize('../abc', whitelist: :alphanumeric).should == 'abc'
    end

    it 'replaces characters' do 
      Sanistring.sanitize(' adam ', whitelist: :alphanumeric, replace: {' '=> ''}).should == 'adam'
    end

    it 'returns empty string when string is entirely prohibited characters' do
      Sanistring.sanitize('..', whitelist: :alphanumeric).should == ''
    end

    it 'upcases string' do
      Sanistring.sanitize('abc', upcase: true,  whitelist: :alphanumeric).should == 'ABC'
    end

    it 'downcases string' do
      Sanistring.sanitize('ABC', downcase: true,  whitelist: :alphanumeric).should == 'abc'
    end

  end
end