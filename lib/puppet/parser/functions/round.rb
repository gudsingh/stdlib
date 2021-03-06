# frozen_string_literal: true

#
# round.rb
#
module Puppet::Parser::Functions
  newfunction(:round, type: :rvalue, doc: <<-DOC
    @summary
      Rounds a number to the nearest integer

    @return
      the rounded value as integer

    @example Example usage
        round(2.9) #=> 3
        round(2.4) #=> 2

    > *Note:* from Puppet 6.0.0, the compatible function with the same name in Puppet core
      will be used instead of this function.
  DOC
  ) do |args|
    raise Puppet::ParseError, "round(): Wrong number of arguments given #{args.size} for 1" if args.size != 1
    raise Puppet::ParseError, "round(): Expected a Numeric, got #{args[0].class}" unless args[0].is_a? Numeric

    value = args[0]

    if value >= 0
      Integer(value + 0.5)
    else
      Integer(value - 0.5)
    end
  end
end
