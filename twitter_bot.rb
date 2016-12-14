require 'rubygems'
require "twitter"


client = Twitter::REST::Client.new do |config|
  config.consumer_key        = ""
  config.consumer_secret     = ""
  config.access_token        = ""
  config.access_token_secret = ""
end

# fromのTweetを検索する
# query = "検索したい文字列"
# result_tweets = client.search(query, from: "ユーザーID")
# result_tweets.take(10).each_with_index do |tw, i|
#   puts("#{i} : #{tw.user.screen_name} : #{tw.full_text}")
# end

#配列の中をランダムで返す。後はcrontabに書き込めばbotの完成ds
text = ["サンプル１",
      "サンプル2",
      "サンプル3"]
client.update(text.sample)
