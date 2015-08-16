#!/usr/bin/env sh
require "shtub_greeter.sh"

describe "shtub greeter"

  describe "greet()"

    it "returns 'Hello, world!'"
      expect "$(greet)" --to-eql "Hello, world!"
    end

    it "does not return 'Goodbye, cruel world!'"
      expect "$(greet)" --not-to-eql "Goodbye, cruel world!"
    end
  end

  describe "bid_farewell()"

    describe "when it has cake"

      it "returns 'Yum!'"
        allow has_cake --to-return "Yes."
        expect "$(bid_farewell)" --to-eql "Yum!"
      end
    end

    describe "when it doesn't have cake"

      it "returns 'Goodbye, cruel world!'"
        allow has_cake --to-return "No!"
        expect "$(bid_farewell)" --to-eql "Goodbye, cruel world!"
      end
    end
  end
end
