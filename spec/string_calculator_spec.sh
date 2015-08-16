#!/usr/bin/env sh
require "string_calculator.sh"

describe "StringCalculator"

  describe "add()"

    context "given an empty string"

      it "returns zero"
        expect $(add "") --to-eql 0
      end
    end

    context "given '4'"

      it "returns 4"
        expect $(add "4") --to-eql 4
      end
    end

    context "given '10'"

      it "returns 10"
        expect $(add "10") --to-eql 10
      end
    end

    context "given two numbers"

      context "given '2,4'"

        it "returns 6"
          expect $(add "2,4") --to-eql 6
        end
      end

      context "given '17,100'"

        it "returns 117"
          expect $(add "17,100") --to-eql 117
        end
      end
    end
  end
end
