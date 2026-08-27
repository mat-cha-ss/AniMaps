# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

TitleType.find_or_create_by!(code: "official") do |type|
  type.name = "Official"
end

TitleType.find_or_create_by!(code: "abbreviation") do |type|
  type.name = "Abbreviation"
end

EventType.find_or_create_by!(code: "popup_shop") do |type|
  type.name_ja = "ポップアップショップ"
  type.name_en = "Popup Shop"
end

EventType.find_or_create_by!(code: "exhibition") do |type|
  type.name_ja = "展示会"
  type.name_en = "Exhibition"
end

EventType.find_or_create_by!(code: "concert") do |type|
  type.name_ja = "ライブ"
  type.name_en = "Concert"
end

Genre.find_or_create_by!(code: "scifi") do |type|
  type.name_ja = "SF"
  type.name_en = "Science Fiction"
end

Genre.find_or_create_by!(code: "fantasy") do |type|
  type.name_ja = "ファンタジー"
  type.name_en = "Fantasy"
end

Genre.find_or_create_by!(code: "isekai") do |type|
  type.name_ja = "異世界"
  type.name_en = "Isekai"
end

Genre.find_or_create_by!(code: "slice_of_life") do |type|
  type.name_ja = "日常"
  type.name_en = "Slice of Life"
end

Prefecture.find_or_create_by!(code: "01") do |type|
  type.name_ja = "北海道"
  type.name_en = "Hokkaido"
end

Prefecture.find_or_create_by!(code: "02") do |type|
  type.name_ja = "青森県"
  type.name_en = "Aomori"
end

Prefecture.find_or_create_by!(code: "03") do |type|
  type.name_ja = "岩手県"
  type.name_en = "Iwate"
end

Prefecture.find_or_create_by!(code: "04") do |type|
  type.name_ja = "宮城県"
  type.name_en = "Miyagi"
end

Prefecture.find_or_create_by!(code: "05") do |type|
  type.name_ja = "秋田県"
  type.name_en = "Akita"
end

Prefecture.find_or_create_by!(code: "06") do |type|
  type.name_ja = "山形県"
  type.name_en = "Yamagata"
end

Prefecture.find_or_create_by!(code: "07") do |type|
  type.name_ja = "福島県"
  type.name_en = "Fukushima"
end

Prefecture.find_or_create_by!(code: "08") do |type|
  type.name_ja = "茨城県"
  type.name_en = "Ibaraki"
end

Prefecture.find_or_create_by!(code: "09") do |type|
  type.name_ja = "栃木県"
  type.name_en = "Tochigi"
end

Prefecture.find_or_create_by!(code: "10") do |type|
  type.name_ja = "群馬県"
  type.name_en = "Gunma"
end

Prefecture.find_or_create_by!(code: "11") do |type|
  type.name_ja = "埼玉県"
  type.name_en = "Saitama"
end

Prefecture.find_or_create_by!(code: "12") do |type|
  type.name_ja = "千葉県"
  type.name_en = "Chiba"
end

Prefecture.find_or_create_by!(code: "13") do |type|
  type.name_ja = "東京都"
  type.name_en = "Tokyo"
end

Prefecture.find_or_create_by!(code: "14") do |type|
  type.name_ja = "神奈川県"
  type.name_en = "Kanagawa"
end

Prefecture.find_or_create_by!(code: "15") do |type|
  type.name_ja = "新潟県"
  type.name_en = "Niigata"
end

Prefecture.find_or_create_by!(code: "16") do |type|
  type.name_ja = "富山県"
  type.name_en = "Toyama"
end

Prefecture.find_or_create_by!(code: "17") do |type|
  type.name_ja = "石川県"
  type.name_en = "Ishikawa"
end

Prefecture.find_or_create_by!(code: "18") do |type|
  type.name_ja = "福井県"
  type.name_en = "Fukui"
end

Prefecture.find_or_create_by!(code: "19") do |type|
  type.name_ja = "山梨県"
  type.name_en = "Yamanashi"
end

Prefecture.find_or_create_by!(code: "20") do |type|
  type.name_ja = "長野県"
  type.name_en = "Nagano"
end

Prefecture.find_or_create_by!(code: "21") do |type|
  type.name_ja = "岐阜県"
  type.name_en = "Gifu"
end

Prefecture.find_or_create_by!(code: "22") do |type|
  type.name_ja = "静岡県"
  type.name_en = "Shizuoka"
end

Prefecture.find_or_create_by!(code: "23") do |type|
  type.name_ja = "愛知県"
  type.name_en = "Aichi"
end

Prefecture.find_or_create_by!(code: "24") do |type|
  type.name_ja = "三重県"
  type.name_en = "Mie"
end

Prefecture.find_or_create_by!(code: "25") do |type|
  type.name_ja = "滋賀県"
  type.name_en = "Shiga"
end

Prefecture.find_or_create_by!(code: "26") do |type|
  type.name_ja = "京都府"
  type.name_en = "Kyoto"
end

Prefecture.find_or_create_by!(code: "27") do |type|
  type.name_ja = "大阪府"
  type.name_en = "Osaka"
end

Prefecture.find_or_create_by!(code: "28") do |type|
  type.name_ja = "兵庫県"
  type.name_en = "Hyogo"
end

Prefecture.find_or_create_by!(code: "29") do |type|
  type.name_ja = "奈良県"
  type.name_en = "Nara"
end

Prefecture.find_or_create_by!(code: "30") do |type|
  type.name_ja = "和歌山県"
  type.name_en = "Wakayama"
end

Prefecture.find_or_create_by!(code: "31") do |type|
  type.name_ja = "鳥取県"
  type.name_en = "Tottori"
end

Prefecture.find_or_create_by!(code: "32") do |type|
  type.name_ja = "島根県"
  type.name_en = "Shimane"
end

Prefecture.find_or_create_by!(code: "33") do |type|
  type.name_ja = "岡山県"
  type.name_en = "Okayama"
end

Prefecture.find_or_create_by!(code: "34") do |type|
  type.name_ja = "広島県"
  type.name_en = "Hiroshima"
end

Prefecture.find_or_create_by!(code: "35") do |type|
  type.name_ja = "山口県"
  type.name_en = "Yamaguchi"
end

Prefecture.find_or_create_by!(code: "36") do |type|
  type.name_ja = "徳島県"
  type.name_en = "Tokushima"
end

Prefecture.find_or_create_by!(code: "37") do |type|
  type.name_ja = "香川県"
  type.name_en = "Kagawa"
end

Prefecture.find_or_create_by!(code: "38") do |type|
  type.name_ja = "愛媛県"
  type.name_en = "Ehime"
end

Prefecture.find_or_create_by!(code: "39") do |type|
  type.name_ja = "高知県"
  type.name_en = "Kochi"
end

Prefecture.find_or_create_by!(code: "40") do |type|
  type.name_ja = "福岡県"
  type.name_en = "Fukuoka"
end

Prefecture.find_or_create_by!(code: "41") do |type|
  type.name_ja = "佐賀県"
  type.name_en = "Saga"
end

Prefecture.find_or_create_by!(code: "42") do |type|
  type.name_ja = "長崎県"
  type.name_en = "Nagasaki"
end

Prefecture.find_or_create_by!(code: "43") do |type|
  type.name_ja = "熊本県"
  type.name_en = "Kumamoto"
end

Prefecture.find_or_create_by!(code: "44") do |type|
  type.name_ja = "大分県"
  type.name_en = "Oita"
end

Prefecture.find_or_create_by!(code: "45") do |type|
  type.name_ja = "宮崎県"
  type.name_en = "Miyazaki"
end

Prefecture.find_or_create_by!(code: "46") do |type|
  type.name_ja = "鹿児島県"
  type.name_en = "Kagoshima"
end

Prefecture.find_or_create_by!(code: "47") do |type|
  type.name_ja = "沖縄県"
  type.name_en = "Okinawa"
end
