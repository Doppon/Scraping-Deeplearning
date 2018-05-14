require "open-uri"

puts "URLを指定してください(空白の場合FFの画像をDWします)"
print "URL:"; url = gets.chomp

url = "http://ff-theworld.club/wp-content/uploads/2016/01/12-28.jpg" if url.empty?

# サンプル画像のダウンロード
open(url) { |image|
  File.open("sample.jpg","wb") do |file|
    file.puts image.read
  end
}

puts "保存完了しました。"
