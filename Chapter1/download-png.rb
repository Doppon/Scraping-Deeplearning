require "open-uri"

# サンプル画像のダウンロード
open("http://ff-theworld.club/wp-content/uploads/2016/01/12-28.jpg") { |image|
  File.open("sample.jpg","wb") do |file|
    file.puts image.read
  end
}

puts "保存完了しました。"
