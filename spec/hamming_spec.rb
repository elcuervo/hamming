require "spec_helper"

describe Hamming do
  describe "comparing hashes" do
    let(:hash_a) { "859091ce633aaebb" }
    let(:hash_b) { "859091ce633aaeba" }

    let(:vector_a) do
      [
        1, 0, 0, 0, 0, 1, 0, 1, 1, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 1, 1, 1, 0, 0, 1, 1, 1,
        0, 0, 1, 1, 0, 0, 0, 1, 1, 0, 0, 1, 1, 1, 0, 1, 0, 1, 0, 1, 0, 1, 1, 1, 0, 1, 0, 1, 1, 1, 0,
        1, 1
      ]
    end

    let(:vector_b) do
      [
        1, 0, 0, 0, 0, 1, 0, 1, 1, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 1, 1, 1, 0, 0, 1, 1, 1,
        0, 0, 1, 1, 0, 0, 0, 1, 1, 0, 0, 1, 1, 1, 0, 1, 0, 1, 0, 1, 0, 1, 1, 1, 0, 1, 0, 1, 1, 1, 0,
        1, 0
      ]
    end

    it "conversion" do
      assert_equal vector_a, Hamming.hash_to_vector(hash_a)
      assert_equal hash_b, Hamming.vector_to_hash(vector_b)
    end

    it "#distance" do
      assert_equal 0, Hamming.distance(vector_b, vector_b)
      assert_equal 0, Hamming.distance(hash_a, hash_a)
      assert_equal 1, Hamming.distance(hash_a, vector_b)
    end
  end
end
