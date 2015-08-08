#!/usr/bin/env sh

require "shtub_greeter.sh"

describe "shtub greeter"
  describe "greet()"
    it "returns 'Hello, world!'"
      expect greet --to-eql "Hello, world!"
    end

    it "does not return 'Goodbye, cruel world!'"
      expect greet --not-to-eql "Goodbye, cruel world!"
    end
  end
end
