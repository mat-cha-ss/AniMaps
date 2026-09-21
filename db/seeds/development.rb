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