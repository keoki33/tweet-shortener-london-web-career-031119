# Write your code here.

def dictionary
  dictionary = {
    "hello" => 'hi',
    "to" => '2',
    "two" => '2',
    "too" =>'2',
    "for" => '4',
    "four" => '4',
     'be' => 'b',
     'you' => 'u',
     "at" => "@",
     "and" => "&"
  }
end



def word_substituter(string)
  # p string
  array = string.split
 array.each_with_index do |words, i|
   if dictionary.keys.include?(words.downcase)
     array[i] = dictionary[words.downcase]
end
end
 array.join(" ")
end

# string = "Hey guys, can anyone teach me how to be cool? I really want to be the best at everything, you know what I mean? Tweeting is super fun you guys!!!!"
#
# word_substituter(string)

def bulk_tweet_shortener(tweets)
tweets.each_with_index do |sentence, i|
  puts word_substituter(sentence)
end
end

def selective_tweet_shortener(tweet)
if tweet.length < 141
  tweet
else
  word_substituter(tweet)
end
end

def shortened_tweet_truncator(tweet)
  sentence = word_substituter(tweet)
  if sentence.length < 141
   sentence
  else
   sentence[0..136] << "..."
  end
end
