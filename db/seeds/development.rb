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