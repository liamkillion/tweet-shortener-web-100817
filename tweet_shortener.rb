# Write your code here.
def dictionary
  dictionary= {
    "hello" => 'hi',
    "to"=>"2",
    "two"=>"2",
    "too"=>'2',
    "for"=>"4",
    "four"=>'4',
    'be' => 'b',
    'you' => 'u',
    "at" => "@",
    "and" => "&"
  }
end

def word_substituter(tweet)
  array = tweet.split
  array.each_with_index do |word, index|
    dictionary.each do |key, value|
      if word.downcase == key
        array[index] = value
      end
    end
  end
  array.join(" ")
end

def bulk_tweet_shortener(array)
  array.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  if tweet.length <= 140
    return tweet
  else
    word_substituter(tweet)
  end
end

def shortened_tweet_truncator(tweet)
  if selective_tweet_shortener(tweet).length > 140
    return "#{selective_tweet_shortener(tweet)[0...136]}+..."
  else
    return tweet
  end
end
