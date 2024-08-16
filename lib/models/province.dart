// ignore_for_file: public_member_api_docs, sort_constructors_first
class Province {
  final int id;
  final String nama;
  final String ibuKota;
  final String photo;
  final String laguDaerah;
  final String lirikLaguDaerah;
  Province({
    required this.id,
    required this.nama,
    required this.ibuKota,
    required this.photo,
    required this.laguDaerah,
    required this.lirikLaguDaerah,
  });
}

var bali = Province(
  id: 1,
  nama: 'Bali',
  ibuKota: 'Denpasar',
  photo: 'https://',
  laguDaerah: 'laguDaerah',
  lirikLaguDaerah: 'lirikLaguDaerah',
);

final laguDaerahList = [
  Province(
      id: 1,
      nama: 'Banjarbaru',
      ibuKota: 'Kalimantan Selatan',
      photo:
          'https://asset.kompas.com/crops/C7HTZr0RDRNxKxVmAN6-mNLo2Bg=/0x0:1000x667/750x500/data/photo/2022/06/26/62b758316726d.jpg',
      laguDaerah: 'Ampar-ampar Pisang ',
      lirikLaguDaerah: '''

G       D
Ampar ampar pisang
D         G
Pisangku balum masak
C           G      D          G
Masak sabigi dihurung bari-bari
C        G    D      G
Masak sabigi dihurung bari-bari
G              D
Mangga lepak mangga lepok
D                G
Patah kayu bengkok
C            G           D           G
Bengkok dimakan api, apinya canculupan
C            G           D           G
Bengkok dimakan api, apinya canculupan
D            C           D            G
Nang mana batis kutung dikitip bidawang
D            C           D            G
Nang mana batis kutung dikitip bidawang
G           D
Ampar ampar pisang
D                G
Pisangku balum masak
C         G         D         G
Masak sabigi dihurung bari-bari
C         G        D          G
Masak sabigi dihurung bari-bari
D         C        D          G
Jari kaki sintak dahuluakan masak
D       C         D         G
Jari kaki sintak dahuluakan masak
G                D                 G
Tanduk sapi tanduk sapi kulibir bawang
C          G             D          G
Nang mana batis kutung dikitip bidawang
C          G              D          G
Nang mana batis kutung dikitip bidawang

          '''),
  Province(
      id: 2,
      nama: 'Nusa Tenggara Timur',
      ibuKota: 'Kupang',
      photo:
          'https://ppkn.undana.ac.id/wp-content/uploads/2024/03/047468700_1616876087-Kupang_3.jpg',
      laguDaerah: 'Anak Kambing Saya',
      lirikLaguDaerah: '''
C            F           C
Mana dimana anak kambing saya
DM          G     F         C
Anak kambing tuan ada di pohon waru
C         F               C      
Mana dimana jantung hati saya
DM        G   F              C
Jantung hati tuan ada di kampung baru

F
Caca marica he hei
C
Caca marica he hei
DM     G        F            C
Caca marica ada di kampung baru

F
Caca marica he hey
C
Caca marica he hey
DM       G        F          C
Caca marica ada di kampung baru
'''),
  Province(
      id: 3,
      nama: 'Sulawesi Selatan',
      ibuKota: 'Makassar',
      photo:
          'https://akcdn.detik.net.id/community/media/visual/2023/08/29/masjid-kubah-99-asmaul-husna-cpi-makassar_169.jpeg?w=700&q=90',
      laguDaerah: 'Angin Mamiri',
      lirikLaguDaerah: '''

A D
Anging mammiri kupasang
A
Pitujui tongtonganna
A D
Tusarroa takka lupa

A D
Anging mammiri kupasang
A
Pitujui tongtonganna
A D
Tusarroa takka lupa

G A D
E.Aule.... Namangu'rangi
A D
Tutenayya tutenayya pa'risi'na
G A D
E.Aule.... Namangu'rangi
A D
Tutenayya tutenayya pa'risi'na

A D
Battumi anging mammiri
A
Anging ngerang dinging dinging
D
namalantang saribuku

G A D
E.Aule.... Mangerang nakku
A D
Nalo'lorang nalo'lorang je'ne mata
G A D
E.Aule.... Mangerang nakku
A D
Nalo'lorang nalo'lorang je'ne mata

A D
Anging mammiri kupasang
A
Pitujui tongtonganna
A D
Tusarroa takka lupa

A D
Anging mammiri kupasang
'''),
  Province(
      id: 4,
      nama: 'Papua',
      ibuKota: 'Jayapura',
      photo:
          'https://upload.wikimedia.org/wikipedia/commons/thumb/c/cd/Jembatan_Youtefa_2.jpg/800px-Jembatan_Youtefa_2.jpg',
      laguDaerah: 'Apuse',
      lirikLaguDaerah: '''

C                    C            G
Apuse kokon dao yarabe soren doreri
G                F         C
Wuf lenso baninema baki pase
C                    C            G
Apuse kokon dao yarabe soren doreri
G                F         C
Wuf lenso baninema baki pase
F                   C
Ara fabye aswara kwar
F                   C
Ara fabye aswara kwar
C                    C            G
Apuse kokon dao yarabe soren doreri
G                F         C
Wuf lenso baninema baki pase
C                    C            G
Apuse kokon dao yarabe soren doreri
G                F         C
Wuf lenso baninema baki pase
F                   C
Ara fabye aswara kwar
F                   C
Ara fabye aswara kwar

'''),
  Province(
      id: 5,
      nama: 'Sumatera Barat',
      ibuKota: 'Padang',
      photo:
          'https://asset.kompas.com/crops/ZG4UWTLI1EhaBaRqq1zcWxNGhlA=/0x0:1000x667/750x500/data/photo/2020/08/28/5f48688bddfb2.jpg',
      laguDaerah: 'Ayam Den Lapeh ',
      lirikLaguDaerah: '''

Am Dm
Luruihlah jalan Payakumbuah
G C
Babelok jalan Kayu Jati
F Dm
Dima hati indak kan rusuah

E Am
Ayam den lapeh
E Am
ai ai … ayam den lapeh
Am Dm
Mandaki jalan Pandaisikek
G C
Manurun jalan ka Biaro
F Dm
Di ma hati indak maupek
E Am
Awak takicuah,
E Am
Ai ai…ayam den lapeh

A Dm
Sikua capang sikua capeh
G C
Saikua tabang sikua lapeh
F Dm
Tabanglah juo nan karimbo
E Am
Ai lah malang juo
A Dm
Pagaruyuang Batusangka…….
G C
Tampek bajalan urang Baso
F Dm
Duduak tamanuang tiok sabanta..
E Am
Oi takana juo
E Am
Ai ai … ayam den lapeh
E Am
Ai ai … ayam den lapeh
'''),
  Province(
      id: 6,
      nama: 'Jambi',
      ibuKota: 'Kota Jambi',
      photo:
          'https://static.promediateknologi.id/crop/0x0:0x0/0x0/webp/photo/p2/13/2023/06/28/20230628_102448-3520675526.jpg',
      laguDaerah: 'Batanghari ',
      lirikLaguDaerah: '''

Dm
Batanghari aeknyolah tenang
Dm        B               Gm
Biakpun tenang deraslah ketepi
Gm       F            B           A
Anaklahnyo Jambi janganlah dikenang
A                     Dm
Siang tebayang bamimpi malamlah bamimpi
Dm                F            B
Anaklah Jambi janganlah dikenang

Dm
Batanghari aeknyolah tenang
Dm        B               Gm
Biakpun tenang deraslah ketepi
Gm       F            B           A
Anaklahnyo Jambi janganlah dikenang
A                     Dm
Siang tebayang bamimpi malamlah bamimpi
Dm                F            B
Anaklah Jambi janganlah dikenang
F                  B              A
Oy rindu dan dendam dik oy idaklah tetanggong
A                         Dm
Budi setitik kenang jadilah kenangan
Dm       F           B                   A
Rindu dan dendam dik oy idaklah tetanggong
A                                 Dm
Budi setitik kenang jadilah kenangan

Dm
Pegi besantai ke Tanggo Rajo
B                        Gm
Nampaklah jelas Jambi Seberang
F           B                       A
Maulah kupinang dek oy apolah kan dayo
A           A7                     Dm
Sudahlah nasib orang diambeklah orang
Dm        F        B                A
Maulah kupinang dek oy apolah kan dayo
A               A7                Dm
Sudahlah nasib orang diambeklah orang
Dm
Batanghari kebanggaan Jambi
Dm            Bb             Gm
Sungai terpanjang sebatas negeri
Gm         F           Bb             A
Pojoklahnyo hati dek oy bawahlah menari
A7         Dm          F       Bb
Mari berjoget lagu si Batang Hari
F               Bb                A
Pojoklah hati dek oy bawaklah menari
A7                         Dm
Mari berjoget lagu si Batang Hari

'''),
  Province(
      id: 7,
      nama: 'Kalimantan Utara',
      ibuKota: 'Tanjung Selor',
      photo:
          'https://upload.wikimedia.org/wikipedia/commons/1/18/Tugu_Cinta_Damai.JPG',
      laguDaerah: 'Bebalon ',
      lirikLaguDaerah: '''
C Em
Inindang... inindang...
Dm G
inindang... inindang...
C G
Inindang... inindang...
C G
inindang... inindang...

i yadu yaki bebilin yadu yaki 2X
C Em
bebilin yadu yaki
Dm G
bebilin yadu yaki
C G
Suboi no labu bedilit
C
Suboi no labu bedilit

C Em
Penembayuk de no fikir

Dm G
Penembayuk de no fikir
C G
impeng de lunas insuai
C G
impeng de lunas insuai

C G C
i yadu yaki bebilin yadu yaki
G C
i yadu yaki bebilin yadu yaki
'''),
  Province(
      id: 8,
      nama: 'Bali',
      ibuKota: 'Denpasar',
      photo:
          'https://www.indonesia.travel/content/dam/indtravelrevamp/en/destinations/bali-nusa-tenggara/bali/denpasar/denpasar1.jpg',
      laguDaerah: 'Bibi Rangda',
      lirikLaguDaerah: '''

F# B F# B
Bibi bibi rangda apang durus karyan bibi
F# B D# F# B
Bibi mejauman kelod kangin jumah dane jegeg leseng
E B F# E
Suba jani keto tiang ngaba aled munyi
B D# E F# B
Sesanganan kaon jaja sirat kekuluban bungan duren
E F# B Em
Duren duren ijo semangkane kuning gading
B D# F# B
Kanti lampa nguda salak nangka kaliasem mangeronce

'''),
  Province(
      id: 9,
      nama: 'Kalimantan Timur',
      ibuKota: 'Samarinda',
      photo:
          'https://mmc.tirto.id/image/otf/970x0/2023/03/16/landmark-kota-samarinda-istock-1468649261_ratio-16x9.jpg',
      laguDaerah: 'Buah Bolok',
      lirikLaguDaerah: '''

G
Buah bolok kuranji papan
C
Dimakan mabok dibuang sayang
Am                    D
Busu embok etam kumpulkan
 
Rumah-rumah jabok etam lestarikan
 
G
Buah salak muda diperam
C
Dimakan kelat dibuang sayang
Am                          D
Spupu dengsanak etam kumpulkan
G
Untuk menyambut wisatawan
C
Buah terong digangan nyaman
D                             G
Jukut blanak tolong panggangkan
C
Musium Tenggarong Mulawarman
Am                           D
yok dengsanak etam kenangahkan
 
G
Buah bolok kuranji papan
C
Dimakan mabok dibuang sayang
Am                   D
Keroan kanak sekampongan
G
Etam begantar bejepenan

'''),
  Province(
      id: 10,
      nama: 'Jawa Barat',
      ibuKota: 'Bandung ',
      photo:
          'https://upload.wikimedia.org/wikipedia/commons/7/77/Gedung_Sate_Bandung_Jawa_Barat.jpg',
      laguDaerah: 'Bubuy Bulan',
      lirikLaguDaerah: '''

Gm
Bubuy bulan
D D# Gm
Bubuy bulan sanggray bentang
Cm D# D Gm
Panon poe panon poe di sasate
Gm
Unggal bulan
D D# Gm
Unggal bulan abdi teang
Cm D# D Gm
Unggal poe unggal poe oge hade
Gm D
Situ ci buruy
D Gm
Laukna hese di pancing
D
Nyeredet hate
D# Gm
ninggali ngemplang caina
Gm D
Duh eta saha
D# D
Nu ngalangkung unggal enjing
D# Cm
Nyeredet hate
D Gm
Ningali sorot socana
Gm
Bubuy bulan
D D# Gm
Bubuy bulan sanggray bentang
Cm D# D Gm
Panon poe panon poe di sasate


''')
];
