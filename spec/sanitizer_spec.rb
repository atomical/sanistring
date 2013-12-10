require 'spec_helper'

describe Sanistring do

  describe '#sanitize' do
    it 'removes prohibited characters' do
      Sanistring.sanitize('../abc', whitelist: Sanistring::List::AlphaNumeric).should == 'abc'
    end

    it 'replaces characters' do 
      Sanistring.sanitize(' adam ', whitelist: Sanistring::List::AlphaNumeric, replace: {' '=> ''}).should == 'adam'
    end

    it 'returns empty string when string is entirely prohibited characters' do
      Sanistring.sanitize('..', whitelist: Sanistring::List::AlphaNumeric).should == ''
    end

    it 'upcases string' do
      Sanistring.sanitize('abc', upcase: true,  whitelist: Sanistring::List::AlphaNumeric).should == 'ABC'
    end

    it 'downcases string' do
      Sanistring.sanitize('ABC', downcase: true,  whitelist: Sanistring::List::AlphaNumeric,).should == 'abc'
    end

  end
end