# Hamming

## Install

```bash
gem install hamming
```

## Usage

Hamming calculates the distance between two hashes or two vectors.

### Distance

Since hashes exist on a metric space you can measure how far a hash is from another.

```ruby
hash_a = "859091ce633aaebb"
hash_b = "859091ce633aaeba"
Hamming.distance(hash_a, hash_b)

# You can also transform hashes based on your storage:
Hamming.vector_to_hash(hash)
Hamming.hash_to_vector(vector)
```
