require "snob/version"

module Snob

  def self.foo
    'foo'
  end

  def self.new_method
    'new method'
  end

  def self.bad_method
    # this method should produce some smells
    [1,2,3].map { |index|
      # don't use index, do other things
      'foo'.capitalize.split.join(' ')
    }.inject do |object, index|
      [object, index]
    end
  end

end
