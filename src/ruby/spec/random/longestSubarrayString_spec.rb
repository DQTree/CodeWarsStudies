require_relative '../../lib/random/longestSubarrayString'

RSpec.describe('Tests longest common substring') do
  it('empty strings') do
    expect(longest_substring_of_string('', '')).to eq('')
  end
  puts '_____ So far so good _____'
  it('small strings') do
    expect(longest_substring_of_string('aabcdefg', 'abcdeff')).to eq('abcdef')
  end
  it('medium strings') do
    expect(longest_substring_of_string(
             "progressively gets more difficult as it continues. The 20 meter pacer test will begin in 30 seconds. On your mark, get ready, start.", "progressively gets more difficult as it continues. The 20 meter pacer test will begin in 30 seconds."))
      .to eq(
            "progressively gets more difficult as it continues. The 20 meter pacer test will begin in 30 seconds."
          )
  end
  it('long strings') do
    expect(longest_substring_of_string(
             'The FitnessGram™ Pacer Test is a multistage aerobic capacity test that progressively gets more difficult as it continues. The 20 meter pacer test will begin in 30 seconds. Line up at the start. The running speed starts slowly, but gets faster each minute after you hear this signal. [beep] A single lap should be completed each time you hear this sound. [ding] Remember to run in a straight line, and run as long as possible. The second time you fail to complete a lap before the sound, your test is over. The test will begin on the word start. On your mark, get ready, start.',
             'progressively gets more difficult as it continues. The 20 meter pacer test will begin in 30 seconds. On your mark, get ready, start.')
    ).to eq(
           'progressively gets more difficult as it continues. The 20 meter pacer test will begin in 30 seconds.'
         )
  end
end
