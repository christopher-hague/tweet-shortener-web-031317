# Write your code here.
def dictionary(word_to_sub)
  dictionary = {
    hello: 'hi',
    to: '2',
    two: '2',
    too: '2',
    for: '4',
    four: '4',
    be: 'b',
    you: 'u',
    at: "@",
    and: "&"
  }

  if dictionary.keys.include?(word_to_sub.downcase.to_sym)
    return dictionary[word_to_sub.downcase.to_sym]
  else
    return word_to_sub
  end
end


def word_substituter(str)
  str.split(" ").map { |word| dictionary(word) }.join(" ")
end


def bulk_tweet_shortener(arr)
  arr.each { |str| puts word_substituter(str) }
end


def selective_tweet_shortener(str)
  if str.length > 140
    bulk_tweet_shortener(str.split(" "))
  else
    str
  end
end


def shortened_tweet_truncator(str)
  if word_substituter(str).length > 140
    str[0..136] + "..."
  else
    word_substituter(str)
  end
end
