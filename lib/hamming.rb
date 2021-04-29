# frozen_string_literal: true
#
class Hamming
  class << self
    def vector_to_hash(vector)
      vector.join.to_i(2).to_s(16)
    end

    def hash_to_vector(hash)
      hash.hex.to_s(2).split("").map(&:to_i)
    end

    def distance(a, b)
      a = a.kind_of?(Array) ? vector_to_hash(a) : a
      b = b.kind_of?(Array) ? vector_to_hash(b) : b

      n = a.hex ^ b.hex

      ones = 0

      while n > 0
        n &= n - 1
        ones += 1
      end

      ones
    end
  end
end
