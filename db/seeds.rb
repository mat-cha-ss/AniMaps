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

tokyo = Prefecture.find_by!(code: "13")

tokyo_wards = [
  { name_ja: "千代田区", name_en: "Chiyoda" },
  { name_ja: "中央区",   name_en: "Chuo" },
  { name_ja: "港区",     name_en: "Minato" },
  { name_ja: "新宿区",   name_en: "Shinjuku" },
  { name_ja: "文京区",   name_en: "Bunkyo" },
  { name_ja: "台東区",   name_en: "Taito" },
  { name_ja: "墨田区",   name_en: "Sumida" },
  { name_ja: "江東区",   name_en: "Koto" },
  { name_ja: "品川区",   name_en: "Shinagawa" },
  { name_ja: "目黒区",   name_en: "Meguro" },
  { name_ja: "大田区",   name_en: "Ota" },
  { name_ja: "世田谷区", name_en: "Setagaya" },
  { name_ja: "渋谷区",   name_en: "Shibuya" },
  { name_ja: "中野区",   name_en: "Nakano" },
  { name_ja: "杉並区",   name_en: "Suginami" },
  { name_ja: "豊島区",   name_en: "Toshima" },
  { name_ja: "北区",     name_en: "Kita" },
  { name_ja: "荒川区",   name_en: "Arakawa" },
  { name_ja: "板橋区",   name_en: "Itabashi" },
  { name_ja: "練馬区",   name_en: "Nerima" },
  { name_ja: "足立区",   name_en: "Adachi" },
  { name_ja: "葛飾区",   name_en: "Katsushika" },
  { name_ja: "江戸川区", name_en: "Edogawa" }
]

tokyo_wards.each do |ward|
  City.find_or_create_by!(
    prefecture: tokyo,
    name_ja: ward[:name_ja]
  ) do |city|
    city.name_en = ward[:name_en]
  end
end

chiba = Prefecture.find_by!(code: "12")

chiba_municipalities = [
  { name_ja: "千葉市",     name_en: "Chiba" },
  { name_ja: "銚子市",     name_en: "Choshi" },
  { name_ja: "市川市",     name_en: "Ichikawa" },
  { name_ja: "船橋市",     name_en: "Funabashi" },
  { name_ja: "館山市",     name_en: "Tateyama" },
  { name_ja: "木更津市",   name_en: "Kisarazu" },
  { name_ja: "松戸市",     name_en: "Matsudo" },
  { name_ja: "野田市",     name_en: "Noda" },
  { name_ja: "茂原市",     name_en: "Mobara" },
  { name_ja: "成田市",     name_en: "Narita" },
  { name_ja: "佐倉市",     name_en: "Sakura" },
  { name_ja: "東金市",     name_en: "Togane" },
  { name_ja: "旭市",       name_en: "Asahi" },
  { name_ja: "習志野市",   name_en: "Narashino" },
  { name_ja: "柏市",       name_en: "Kashiwa" },
  { name_ja: "勝浦市",     name_en: "Katsuura" },
  { name_ja: "市原市",     name_en: "Ichihara" },
  { name_ja: "流山市",     name_en: "Nagareyama" },
  { name_ja: "八千代市",   name_en: "Yachiyo" },
  { name_ja: "我孫子市",   name_en: "Abiko" },
  { name_ja: "鴨川市",     name_en: "Kamogawa" },
  { name_ja: "鎌ケ谷市",   name_en: "Kamagaya" },
  { name_ja: "君津市",     name_en: "Kimitsu" },
  { name_ja: "富津市",     name_en: "Futtsu" },
  { name_ja: "浦安市",     name_en: "Urayasu" },
  { name_ja: "四街道市",   name_en: "Yotsukaido" },
  { name_ja: "袖ケ浦市",   name_en: "Sodegaura" },
  { name_ja: "八街市",     name_en: "Yachimata" },
  { name_ja: "印西市",     name_en: "Inzai" },
  { name_ja: "白井市",     name_en: "Shiroi" },
  { name_ja: "富里市",     name_en: "Tomisato" },
  { name_ja: "南房総市",   name_en: "Minamiboso" },
  { name_ja: "匝瑳市",     name_en: "Sosa" },
  { name_ja: "香取市",     name_en: "Katori" },
  { name_ja: "山武市",     name_en: "Sammu" },
  { name_ja: "いすみ市",   name_en: "Isumi" },
  { name_ja: "大網白里市", name_en: "Oamishirasato" },

  { name_ja: "酒々井町",   name_en: "Shisui" },
  { name_ja: "栄町",       name_en: "Sakae" },
  { name_ja: "神崎町",     name_en: "Kozaki" },
  { name_ja: "多古町",     name_en: "Tako" },
  { name_ja: "東庄町",     name_en: "Tonosho" },
  { name_ja: "九十九里町", name_en: "Kujukuri" },
  { name_ja: "芝山町",     name_en: "Shibayama" },
  { name_ja: "横芝光町",   name_en: "Yokoshibahikari" },
  { name_ja: "一宮町",     name_en: "Ichinomiya" },
  { name_ja: "睦沢町",     name_en: "Mutsuzawa" },
  { name_ja: "白子町",     name_en: "Shirako" },
  { name_ja: "長柄町",     name_en: "Nagara" },
  { name_ja: "長南町",     name_en: "Chonan" },
  { name_ja: "大多喜町",   name_en: "Otaki" },
  { name_ja: "御宿町",     name_en: "Onjuku" },
  { name_ja: "鋸南町",     name_en: "Kyonan" },

  { name_ja: "長生村",     name_en: "Chosei" }
]

chiba_municipalities.each do |municipality|
  City.find_or_create_by!(
    prefecture: chiba,
    name_ja: municipality[:name_ja]
  ) do |city|
    city.name_en = municipality[:name_en]
  end
end

kanagawa = Prefecture.find_by!(code: "14")

kanagawa_municipalities = [
  { name_ja: "横浜市",     name_en: "Yokohama" },
  { name_ja: "川崎市",     name_en: "Kawasaki" },
  { name_ja: "相模原市",   name_en: "Sagamihara" },
  { name_ja: "横須賀市",   name_en: "Yokosuka" },
  { name_ja: "平塚市",     name_en: "Hiratsuka" },
  { name_ja: "鎌倉市",     name_en: "Kamakura" },
  { name_ja: "藤沢市",     name_en: "Fujisawa" },
  { name_ja: "小田原市",   name_en: "Odawara" },
  { name_ja: "茅ヶ崎市",   name_en: "Chigasaki" },
  { name_ja: "逗子市",     name_en: "Zushi" },
  { name_ja: "三浦市",     name_en: "Miura" },
  { name_ja: "秦野市",     name_en: "Hadano" },
  { name_ja: "厚木市",     name_en: "Atsugi" },
  { name_ja: "大和市",     name_en: "Yamato" },
  { name_ja: "伊勢原市",   name_en: "Isehara" },
  { name_ja: "海老名市",   name_en: "Ebina" },
  { name_ja: "座間市",     name_en: "Zama" },
  { name_ja: "南足柄市",   name_en: "Minamiashigara" },
  { name_ja: "綾瀬市",     name_en: "Ayase" },

  { name_ja: "葉山町",     name_en: "Hayama" },
  { name_ja: "寒川町",     name_en: "Samukawa" },
  { name_ja: "大磯町",     name_en: "Oiso" },
  { name_ja: "二宮町",     name_en: "Ninomiya" },
  { name_ja: "中井町",     name_en: "Nakai" },
  { name_ja: "大井町",     name_en: "Oi" },
  { name_ja: "松田町",     name_en: "Matsuda" },
  { name_ja: "山北町",     name_en: "Yamakita" },
  { name_ja: "開成町",     name_en: "Kaisei" },
  { name_ja: "箱根町",     name_en: "Hakone" },
  { name_ja: "真鶴町",     name_en: "Manazuru" },
  { name_ja: "湯河原町",   name_en: "Yugawara" },
  { name_ja: "愛川町",     name_en: "Aikawa" },

  { name_ja: "清川村",     name_en: "Kiyokawa" }
]

kanagawa_municipalities.each do |municipality|
  City.find_or_create_by!(
    prefecture: kanagawa,
    name_ja: municipality[:name_ja]
  ) do |city|
    city.name_en = municipality[:name_en]
  end
end

if Rails.env.development?
  load Rails.root.join("db/seeds/development.rb")
end