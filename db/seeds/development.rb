official = TitleType.find_or_create_by!(code: "official")
abbreviation = TitleType.find_or_create_by!(code: "abbreviation")
alternate = TitleType.find_or_create_by!(code: "alternate")
unofficial = TitleType.find_or_create_by!(code: "unofficial")

steins_gate = Series.find_or_create_by!(id: 1)

SeriesTitle.find_or_create_by!(
  series: steins_gate,
  title_type: official,
  title: "STEINS;GATE",
  language: "ja"
)

SeriesTitle.find_or_create_by!(
  series: steins_gate,
  title_type: official,
  title: "Steins;Gate",
  language: "en"
)

SeriesTitle.find_or_create_by!(
  series: steins_gate,
  title_type: abbreviation,
  title: "シュタゲ",
  language: "ja"
)

railgun = Series.find_or_create_by!(id: 2)

SeriesTitle.find_or_create_by!(
  series: railgun,
  title_type: official,
  title: "とある科学の超電磁砲",
  language: "ja"
)

SeriesTitle.find_or_create_by!(
  series: railgun,
  title_type: official,
  title: "Toaru Kagaku no Railgun",
  language: "en"
)

SeriesTitle.find_or_create_by!(
  series: railgun,
  title_type: alternate,
  title: "A Certain Scientific Railgun",
  language: "en"
)

bocchi = Series.find_or_create_by!(id: 3)

SeriesTitle.find_or_create_by!(
  series: bocchi,
  title_type: official,
  title: "ぼっち・ざ・ろっく！",
  language: "ja"
)

SeriesTitle.find_or_create_by!(
  series: bocchi,
  title_type: official,
  title: "Bocchi the Rock!",
  language: "en"
)

SeriesTitle.find_or_create_by!(
  series: bocchi,
  title_type: abbreviation,
  title: "ぼざろ",
  language: "ja"
)

oregairu = Series.find_or_create_by!(id: 4)

SeriesTitle.find_or_create_by!(
  series: oregairu,
  title_type: official,
  title: "やはり俺の青春ラブコメはまちがっている。",
  language: "ja"
)

SeriesTitle.find_or_create_by!(
  series: oregairu,
  title_type: official,
  title: "Yahari Ore no Seishun Love Comedy wa Machigatteiru.",
  language: "en"
)

SeriesTitle.find_or_create_by!(
  series: oregairu,
  title_type: alternate,
  title: "My Teen Romantic Comedy SNAFU",
  language: "en"
)

SeriesTitle.find_or_create_by!(
  series: oregairu,
  title_type: abbreviation,
  title: "俺ガイル",
  language: "ja"
)

SeriesTitle.find_or_create_by!(
  series: oregairu,
  title_type: abbreviation,
  title: "Oregairu",
  language: "en"
)

aobuta = Series.find_or_create_by!(id: 5)

SeriesTitle.find_or_create_by!(
  series: aobuta,
  title_type: official,
  title: "青春ブタ野郎シリーズ",
  language: "ja"
)

SeriesTitle.find_or_create_by!(
  series: aobuta,
  title_type: official,
  title: "Seishun Buta Yarou Series",
  language: "en"
)

SeriesTitle.find_or_create_by!(
  series: aobuta,
  title_type: abbreviation,
  title: "青ブタ",
  language: "ja"
)

SeriesTitle.find_or_create_by!(
  series: aobuta,
  title_type: abbreviation,
  title: "AoButa",
  language: "en"
)

steins_gate_anime = Anime.find_or_create_by!(
  series: steins_gate,
  release_date: Date.new(2011, 4, 6),
  description: "Steins;Gate television anime."
)

AnimeTitle.find_or_create_by!(
  anime: steins_gate_anime,
  title_type: official,
  title: "STEINS;GATE",
  language: "ja"
)

AnimeTitle.find_or_create_by!(
  anime: steins_gate_anime,
  title_type: official,
  title: "Steins;Gate",
  language: "en"
)

railgun_anime = Anime.find_or_create_by!(
  series: railgun,
  release_date: Date.new(2009, 10, 3),
  description: "A Certain Scientific Railgun television anime."
)

AnimeTitle.find_or_create_by!(
  anime: railgun_anime,
  title_type: official,
  title: "とある科学の超電磁砲",
  language: "ja"
)

AnimeTitle.find_or_create_by!(
  anime: railgun_anime,
  title_type: official,
  title: "Toaru Kagaku no Railgun",
  language: "en"
)

AnimeTitle.find_or_create_by!(
  anime: railgun_anime,
  title_type: alternate,
  title: "A Certain Scientific Railgun",
  language: "en"
)

railgun_anime2 = Anime.find_or_create_by!(
  series: railgun,
  release_date: Date.new(2009, 10, 3),
  description: "A Certain Scientific Railgun television anime 2nd season."
)

AnimeTitle.find_or_create_by!(
  anime: railgun_anime2,
  title_type: official,
  title: "とある科学の超電磁砲S",
  language: "ja"
)

AnimeTitle.find_or_create_by!(
  anime: railgun_anime2,
  title_type: official,
  title: "Toaru Kagaku no Railgun S",
  language: "en"
)

AnimeTitle.find_or_create_by!(
  anime: railgun_anime2,
  title_type: alternate,
  title: "A Certain Scientific Railgun S",
  language: "en"
)

railgun_anime3 = Anime.find_or_create_by!(
  series: railgun,
  release_date: Date.new(2009, 10, 3),
  description: "A Certain Scientific Railgun television anime 3rd season."
)

AnimeTitle.find_or_create_by!(
  anime: railgun_anime3,
  title_type: official,
  title: "とある科学の超電磁砲T",
  language: "ja"
)

AnimeTitle.find_or_create_by!(
  anime: railgun_anime3,
  title_type: official,
  title: "Toaru Kagaku no Railgun T",
  language: "en"
)

AnimeTitle.find_or_create_by!(
  anime: railgun_anime3,
  title_type: alternate,
  title: "A Certain Scientific Railgun T",
  language: "en"
)

bocchi_anime = Anime.find_or_create_by!(
  series: bocchi,
  release_date: Date.new(2022, 10, 9),
  description: "Bocchi the Rock! television anime."
)

AnimeTitle.find_or_create_by!(
  anime: bocchi_anime,
  title_type: official,
  title: "ぼっち・ざ・ろっく！",
  language: "ja"
)

AnimeTitle.find_or_create_by!(
  anime: bocchi_anime,
  title_type: official,
  title: "Bocchi the Rock!",
  language: "en"
)

aobuta_anime = Anime.find_or_create_by!(
  series: aobuta,
  release_date: Date.new(2022, 10, 9),
  description: "Aobuta television anime."
)

AnimeTitle.find_or_create_by!(
  anime: aobuta_anime,
  title_type: official,
  title: "青春ブタ野郎はバニーガール先輩の夢を見ない",
  language: "ja"
)

AnimeTitle.find_or_create_by!(
  anime: aobuta_anime,
  title_type: official,
  title: "Seishun Buta Yarou wa Bunny Girl Senpai no Yume wo Minai",
  language: "en"
)

AnimeTitle.find_or_create_by!(
  anime: aobuta_anime,
  title_type: official,
  title: "Rascal Does Not Dream of Bunny Girl Senpai",
  language: "en"
)

oregairu_anime = Anime.find_or_create_by!(
  series: oregairu,
  release_date: Date.new(2013, 4, 5),
  description: "My Teen Romantic Comedy SNAFU television anime."
)

AnimeTitle.find_or_create_by!(
  anime: oregairu_anime,
  title_type: official,
  title: "やはり俺の青春ラブコメはまちがっている。",
  language: "ja"
)

AnimeTitle.find_or_create_by!(
  anime: oregairu_anime,
  title_type: official,
  title: "Yahari Ore no Seishun Love Comedy wa Machigatteiru.",
  language: "en"
)

AnimeTitle.find_or_create_by!(
  anime: oregairu_anime,
  title_type: alternate,
  title: "My Teen Romantic Comedy SNAFU",
  language: "en"
)

AnimeTitle.find_or_create_by!(
  anime: oregairu_anime,
  title_type: abbreviation,
  title: "俺ガイル",
  language: "ja"
)

AnimeTitle.find_or_create_by!(
  anime: oregairu_anime,
  title_type: abbreviation,
  title: "Oregairu",
  language: "en"
)

oregairu_anime2 = Anime.find_or_create_by!(
  series: oregairu,
  release_date: Date.new(2015, 4, 3),
  description: "My Teen Romantic Comedy SNAFU television anime second season."
)

AnimeTitle.find_or_create_by!(
  anime: oregairu_anime2,
  title_type: official,
  title: "やはり俺の青春ラブコメはまちがっている。続",
  language: "ja"
)

AnimeTitle.find_or_create_by!(
  anime: oregairu_anime2,
  title_type: official,
  title: "Yahari Ore no Seishun Love Comedy wa Machigatteiru. Zoku",
  language: "en"
)

AnimeTitle.find_or_create_by!(
  anime: oregairu_anime2,
  title_type: alternate,
  title: "My Teen Romantic Comedy SNAFU TOO!",
  language: "en"
)

oregairu_anime3 = Anime.find_or_create_by!(
  series: oregairu,
  release_date: Date.new(2020, 7, 10),
  description: "My Teen Romantic Comedy SNAFU television anime third season."
)

AnimeTitle.find_or_create_by!(
  anime: oregairu_anime3,
  title_type: official,
  title: "やはり俺の青春ラブコメはまちがっている。完",
  language: "ja"
)

AnimeTitle.find_or_create_by!(
  anime: oregairu_anime3,
  title_type: official,
  title: "Yahari Ore no Seishun Love Comedy wa Machigatteiru. Kan",
  language: "en"
)

AnimeTitle.find_or_create_by!(
  anime: oregairu_anime3,
  title_type: alternate,
  title: "My Teen Romantic Comedy SNAFU Climax!",
  language: "en"
)

Location.find_or_create_by!(
  city_id: 1,
  address_ja: "外神田1丁目",
  address_en: "Sotokanda 1-chome",
  latitude: 35.6983,
  longitude: 139.7731,
  official_url: "https://www.jreast.co.jp/e/stations/e41.html"
)

AnimeLocation.find_or_create_by!(
  anime_id: 1,
  location_id: 1,
  source_url: "https://mipon.org/steins-gate-pilgrimage/"
)

LocationName.find_or_create_by!(
  location_id: 1,
  name: "秋葉原駅",
  language: "ja"
)

LocationName.find_or_create_by!(
  location_id: 1,
  name: "Akihabara Station",
  language: "en"
)

Location.find_or_create_by!(
  city_id: 1,
  address_ja: "外神田1丁目15-16",
  address_en: "Sotokanda 1-chome 15-16",
  latitude: 35.6978,
  longitude: 139.7719,
  official_url: "https://akihabara-radiokaikan.co.jp/"
)

AnimeLocation.find_or_create_by!(
  anime_id: 1,
  location_id: 2,
  source_url: "https://mipon.org/steins-gate-pilgrimage/"
)

LocationName.find_or_create_by!(
  location_id: 2,
  name: "ラジオ会館",
  language: "ja"
)

LocationName.find_or_create_by!(
  location_id: 2,
  name: "Radio Kaikan",
  language: "en"
)

Location.find_or_create_by!(
  city_id: 1,
  address_ja: "北沢2丁目14-2",
  address_en: "Kitazawa 2-chome 14-2",
  latitude: 35.661389,
  longitude: 139.667500,
  official_url: "https://www.odakyu.jp/station/shimo_kitazawa/"
)

AnimeLocation.find_or_create_by!(
  anime_id: 5,
  location_id: 3,
  source_url: "https://www.cdjapan.co.jp/feature/The-Real-Life-Locations-Of-Bocchi-The-Rock-Anime-Series"
)

LocationName.find_or_create_by!(
  location_id: 3,
  name: "下北沢駅",
  language: "ja"
)

LocationName.find_or_create_by!(
  location_id: 3,
  name: "Shimokitazawa Station",
  language: "en"
)

Location.find_or_create_by!(
  city_id: 1,
  address_ja: "南藤沢1-1",
  address_en: "Minami-Fujisawa 1-1",
  latitude: 35.33718,
  longitude: 139.48723,
  official_url: "https://www.enoden.co.jp/en/train/station/fujisawa/"
)

AnimeLocation.find_or_create_by!(
  anime_id: 9,
  location_id: 4,
  source_url: "https://note.com/sping_travel/n/n99e627e67785?hl=en"
)

LocationName.find_or_create_by!(
  location_id: 4,
  name: "藤沢駅",
  language: "ja"
)

LocationName.find_or_create_by!(
  location_id: 4,
  name: "Fujisawa Station",
  language: "en"
)

popup_shop = EventType.find_by!(code: "popup_shop")
exhibition = EventType.find_by!(code: "exhibition")
concert = EventType.find_by!(code: "concert")

kamakura = City.find_by!(name_ja: "鎌倉市")
tachikawa = City.find_by!(name_ja: "立川市")
chiba = City.find_by!(name_ja: "千葉市")

# Aobuta - Kamakura
kamakura_location = Location.find_or_create_by!(
  city: kamakura,
  address_ja: "小町1丁目"
) do |location|
  location.address_en = "1-chome Komachi"
end

# Railgun - Tachikawa
tachikawa_location = Location.find_or_create_by!(
  city: tachikawa,
  address_ja: "曙町2丁目"
) do |location|
  location.address_en = "2-chome Akebonocho"
end

# OreGairu - Chiba
chiba_location = Location.find_or_create_by!(
  city: chiba,
  address_ja: "中央1丁目"
) do |location|
  location.address_en = "1-chome Chuo"
end

#register locations
akihabara_location = Location.find_by!(
  city: City.find_by!(name_ja: "千代田区"),
  address_ja: "外神田1丁目"
)

kamakura_location = Location.find_by!(
  city: City.find_by!(name_ja: "鎌倉市"),
  address_ja: "小町1丁目"
)

tachikawa_location = Location.find_by!(
  city: City.find_by!(name_ja: "立川市"),
  address_ja: "曙町2丁目"
)

chiba_location = Location.find_by!(
  city: City.find_by!(name_ja: "千葉市"),
  address_ja: "中央1丁目"
)

events = [
  # ----------------------------------------------------------
  # Steins;Gate - Anime ID 1
  # ----------------------------------------------------------
  {
    anime_id: 1,
    event_type: popup_shop,
    location: akihabara_location,
    name_ja: "STEINS;GATE 秋葉原ポップアップショップ",
    name_en: "Steins;Gate Akihabara Popup Shop",
    start_date: Date.current - 10.days,
    end_date: Date.current + 20.days,
    fee_note: "入場無料",
    description: "Development sample event for Steins;Gate."
  },
  {
    anime_id: 1,
    event_type: exhibition,
    location: akihabara_location,
    name_ja: "STEINS;GATE 15周年記念展",
    name_en: "Steins;Gate 15th Anniversary Exhibition",
    start_date: Date.current + 30.days,
    end_date: Date.current + 50.days,
    fee_note: "一般 1,500円",
    description: "Development sample future event for Steins;Gate."
  },

  # ----------------------------------------------------------
  # Railgun - Anime ID 2
  # ----------------------------------------------------------
  {
    anime_id: 2,
    event_type: exhibition,
    location: tachikawa_location,
    name_ja: "とある科学の超電磁砲 展示会",
    name_en: "A Certain Scientific Railgun Exhibition",
    start_date: Date.current - 5.days,
    end_date: Date.current + 25.days,
    fee_note: "一般 1,200円",
    description: "Development sample event for Railgun."
  },

  # ----------------------------------------------------------
  # Railgun S - Anime ID 3
  # ----------------------------------------------------------
  {
    anime_id: 3,
    event_type: popup_shop,
    location: tachikawa_location,
    name_ja: "とある科学の超電磁砲S ポップアップショップ",
    name_en: "A Certain Scientific Railgun S Popup Shop",
    start_date: Date.current + 14.days,
    end_date: Date.current + 35.days,
    fee_note: "入場無料",
    description: "Development sample future event for Railgun S."
  },

  # ----------------------------------------------------------
  # Railgun T - Anime ID 4
  # ----------------------------------------------------------
  {
    anime_id: 4,
    event_type: exhibition,
    location: tachikawa_location,
    name_ja: "とある科学の超電磁砲T 特別展示",
    name_en: "A Certain Scientific Railgun T Special Exhibition",
    start_date: Date.current - 7.days,
    end_date: Date.current + 14.days,
    fee_note: "一般 1,000円",
    description: "Development sample event for Railgun T."
  },

  # ----------------------------------------------------------
  # Bocchi the Rock! - Anime ID 5
  # ----------------------------------------------------------
  {
    anime_id: 5,
    event_type: concert,
    location: akihabara_location,
    name_ja: "ぼっち・ざ・ろっく！スペシャルライブ",
    name_en: "Bocchi the Rock! Special Live",
    start_date: Date.current + 45.days,
    end_date: Date.current + 45.days,
    fee_note: "全席指定 7,500円",
    description: "Development sample concert for Bocchi the Rock!."
  },
  {
    anime_id: 5,
    event_type: popup_shop,
    location: kamakura_location,
    name_ja: "ぼっち・ざ・ろっく！ポップアップショップ",
    name_en: "Bocchi the Rock! Popup Shop",
    start_date: Date.current - 14.days,
    end_date: Date.current + 7.days,
    fee_note: "入場無料",
    description: "Development sample ongoing event for Bocchi the Rock!."
  },

  # ----------------------------------------------------------
  # OreGairu - Anime ID 6
  # ----------------------------------------------------------
  {
    anime_id: 6,
    event_type: popup_shop,
    location: chiba_location,
    name_ja: "俺ガイル 千葉ポップアップショップ",
    name_en: "OreGairu Chiba Popup Shop",
    start_date: Date.current - 8.days,
    end_date: Date.current + 18.days,
    fee_note: "入場無料",
    description: "Development sample event for OreGairu."
  },

  # ----------------------------------------------------------
  # OreGairu S2 - Anime ID 7
  # ----------------------------------------------------------
  {
    anime_id: 7,
    event_type: exhibition,
    location: chiba_location,
    name_ja: "俺ガイル。続 メモリアル展示会",
    name_en: "OreGairu Zoku Memorial Exhibition",
    start_date: Date.current + 20.days,
    end_date: Date.current + 40.days,
    fee_note: "一般 1,300円",
    description: "Development sample future event for OreGairu season 2."
  },

  # ----------------------------------------------------------
  # OreGairu S3 - Anime ID 8
  # ----------------------------------------------------------
  {
    anime_id: 8,
    event_type: exhibition,
    location: chiba_location,
    name_ja: "俺ガイル。完 特別展示",
    name_en: "OreGairu Kan Special Exhibition",
    start_date: Date.current - 12.days,
    end_date: Date.current + 12.days,
    fee_note: "一般 1,300円",
    description: "Development sample ongoing event for OreGairu season 3."
  },

  # ----------------------------------------------------------
  # Aobuta TV - Anime ID 9
  # ----------------------------------------------------------
  {
    anime_id: 9,
    event_type: popup_shop,
    location: kamakura_location,
    name_ja: "青春ブタ野郎シリーズ ポップアップショップ",
    name_en: "Rascal Does Not Dream Series Popup Shop",
    start_date: Date.current - 3.days,
    end_date: Date.current + 21.days,
    fee_note: "入場無料",
    description: "Development sample ongoing event for Aobuta."
  },
  {
    anime_id: 9,
    event_type: exhibition,
    location: kamakura_location,
    name_ja: "青春ブタ野郎シリーズ 特別展",
    name_en: "Rascal Does Not Dream Series Special Exhibition",
    start_date: Date.current + 60.days,
    end_date: Date.current + 80.days,
    fee_note: "一般 1,500円",
    description: "Development sample future event for Aobuta."
  }
]

events.each do |event_data|
  anime = Anime.find(event_data[:anime_id])

  event = Event.find_or_initialize_by(
    name_ja: event_data[:name_ja],
    location: event_data[:location]
  )

  event.assign_attributes(
    name_en: event_data[:name_en],
    event_type: event_data[:event_type],
    start_date: event_data[:start_date],
    end_date: event_data[:end_date],
    fee_note: event_data[:fee_note],
    description: event_data[:description]
  )

  event.save!

  AnimeEvent.find_or_create_by!(
    anime: anime,
    event: event
  )

  external_ids = {
    1 => { mal_id: 9253,  anilist_id: 9253 },   # Steins;Gate
    2 => { mal_id: 6213,  anilist_id: 6213 },   # Railgun
    3 => { mal_id: 16049, anilist_id: 16049 },  # Railgun S
    5 => { mal_id: 47917, anilist_id: 130003 }, # Bocchi the Rock!
    6 => { mal_id: 14813, anilist_id: 14813 }   # OreGairu
  }

  external_ids.each do |anime_id, ids|
    anime = Anime.find(anime_id)
    anime.update!(
      mal_id: ids[:mal_id],
      anilist_id: ids[:anilist_id]
    )
  end
end