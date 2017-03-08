# Write your code here.
def dictionary
  dictionary = {
    "too" => "2",
    "to" => "2",
    "two" =>"2",
    "four" => "4",
    "for" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }
end

def word_substituter(tweet)
  tweet.split.collect do |word|
    if dictionary.keys.include?(word.downcase)
      word = dictionary[word.downcase]
    else
      word
    end
  end.join(" ")
end



def bulk_tweet_shortener(tweets)
  tweets.each do |tweet|
    puts word_substituter(tweet)
  end
end


def selective_tweet_shortener(tweet)
  if tweet.length > 140
    tweet.split.collect do |word|
      if dictionary.keys.include?(word.downcase)
        word = dictionary[word.downcase] #accessing the value of the key via brackets
      else
        word
      end
    end.join(" ") # turning the collected array back into a string with a space
  else
    tweet
  end
end

def shortened_tweet_truncator(tweet)
  if selective_tweet_shortener(tweet).length > 140
    "#{selective_tweet_shortener(tweet)[1..137]}..."
  else
    selective_tweet_shortener(tweet)
  end
end
