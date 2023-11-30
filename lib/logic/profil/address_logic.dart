
int defaultAddress = 0;

List savedAddress = [
  [
    'My home',
    'Balbalee',
    '0839874456984',
    'Jl. in aja dulu III, Blok mana lagi 1 E, No. 666, Tanah kusir, Depok, Jawa Barat, 08395, Indoensia',
    'Pager pelangi sebelah pager item ya pak'
  ],
  [
    'Office',
    'Oryngon',
    '08458697543',
    'Jl. besar raya 5, kecamatan sukarela, Cakung, Jakarta Timur, 127846, Indonesia',
    'Di taro di pos satpam aja ya pak'
  ],
  [
    'Kampus',
    'Balbalee',
    '0839874456984',
    'Jl. in aja dulu III, Blok mana lagi 1 E, No. 666, Tanah kusir, Depok, Jawa Barat, 08395, Indoensia',
    'Seberang Alfadidi'
  ],
  [
    'Kost',
    'Balbalee',
    '0839874456984',
    'Jl. in aja dulu III, Blok mana lagi 1 E, No. 666, Tanah kusir, Depok, Jawa Barat, 08395, Indoensia',
    'No 42 sebelah no 43 ya pak'
  ],
];

int findAddressIndex(String searchTerm) {
  for (int i = 0; i < savedAddress.length; i++) {
    if (savedAddress[i][0] == searchTerm) {
      return i;
    }
  }
  return -1; // Return -1 if not found
}
