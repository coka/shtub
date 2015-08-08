#!/usr/bin/env sh

require "shtub_greeter.sh"

describe "shtub greeter"
  describe "greet()"
    it "returns 'Hello, world!'"
      expect greet "Hello, world!"
    end

    it "returns 'Goodbye, cruel world!'"
      expect greet "Goodbye, cruel world!"
    end
  end
end
