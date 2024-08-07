def encode_rail_fence_cipher(str, num_rails)
  return str if num_rails <= 1

  encoded = [''] * num_rails
  current_rail = 0
  direction = 1

  # Add char to corresponding rail, reversing direction when reaching the end or the beginning
  str.chars.each do |char|
    encoded[current_rail] += char
    current_rail += direction

    if current_rail == 0 || current_rail == num_rails - 1
      direction *= -1
    end
  end

  encoded.join
end

def decode_rail_fence_cipher(str, num_rails)
  return str if num_rails <= 1

  # Calculate the position of characters in each rail
  rail_lengths = Array.new(num_rails, 0)
  current_rail = 0
  direction = 1

  str.chars.each do |_|
    rail_lengths[current_rail] += 1
    current_rail += direction

    if current_rail == 0 || current_rail == num_rails - 1
      direction *= -1
    end
  end

  # Create an array to store the characters for each rail
  rails = Array.new(num_rails) { '' }
  current_index = 0

  rail_lengths.each_with_index do |length, rail|
    rails[rail] = str[current_index, length]
    current_index += length
  end

  # Reconstruct the original string by reading in zigzag order
  decoded = ''
  current_rail = 0
  direction = 1
  rail_pointers = Array.new(num_rails, 0)

  str.length.times do
    decoded += rails[current_rail][rail_pointers[current_rail]]
    rail_pointers[current_rail] += 1
    current_rail += direction

    if current_rail == 0 || current_rail == num_rails - 1
      direction *= -1
    end
  end

  decoded
end