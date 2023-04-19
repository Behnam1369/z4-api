CenterType.create(
  first: 10001, 
  last: 19999,
  translation_attributes: {
    english: 'People',
    persian: 'اشخاص',
    arabic: 'أفراد',
    spanish: 'Personas',
    french: 'Personnes',
    turkish: 'Kişiler',
    portugess: 'Pessoas',
    dutch: 'Mensen',
    russian: 'Люди',
    italian: 'Persone',
    swedish: 'Personer',
    hindi: 'लोग',
    urdu: 'لوگ',
    chiness: '人',
    japaness: '人',
    korean: '사람들',
    thai: 'คน',
    malay: 'Orang',
    indonesian: 'Orang'
  },
  fields_attributes: [
    {
      # firstname : string
      field_type_id: 1,
      translation_attributes: {
        english: 'First Name',
        persian: 'نام',
        arabic: 'الاسم الاول',
        spanish: 'Nombre',
        french: 'Prénom',
        turkish: 'Adı',
        portugess: 'Primeiro nome',
        dutch: 'Voornaam',
        russian: 'Имя',
        italian: 'Nome',
        swedish: 'Förnamn',
        hindi: 'पहला नाम',
        urdu: 'پہلا نام',
        chiness: '名字',
        japaness: '名前',
        korean: '이름',
        thai: 'ชื่อ',
        malay: 'Nama',
        indonesian: 'Nama depan'
      }
    }, 
    {
      # lastname : string
      field_type_id: 1,
      translation_attributes: {
        english: 'Last Name',
        persian: 'نام خانوادگی',
        arabic: 'اسم العائلة',
        spanish: 'Apellido',
        french: 'Nom de famille',
        turkish: 'Soyadı',
        portugess: 'Sobrenome',
        dutch: 'Achternaam',
        russian: 'Фамилия',
        italian: 'Cognome',
        swedish: 'Efternamn',
        hindi: 'उपनाम',
        urdu: 'آخری نام',
        chiness: '姓',
        japaness: '苗字',
        korean: '성',
        thai: 'นามสกุล',
        malay: 'Nama keluarga',
        indonesian: 'Nama keluarga'
      }
    },
    {
      # birthdate : date
      field_type_id: 2,
      translation_attributes: {
        english: 'Birthdate',
        persian: 'تاریخ تولد',
        arabic: 'تاريخ الميلاد',
        spanish: 'Fecha de nacimiento',
        french: 'Date de naissance',
        turkish: 'Doğum tarihi',
        portugess: 'Data de nascimento',
        dutch: 'Geboortedatum',
        russian: 'Дата рождения',
        italian: 'Data di nascita',
        swedish: 'Födelsedatum',
        hindi: 'जन्म तिथि',
        urdu: 'پیدائش کی تاریخ',
        chiness: '出生日期',
        japaness: '誕生日',
        korean: '생일',
        thai: 'วันเกิด',
        malay: 'Tarikh lahir',
        indonesian: 'Tanggal lahir'
      } 
    },
  ]
);

CenterType.create(
  first: 20001, 
  last: 29999,
  translation_attributes: {
    english: 'Organizations',
    persian: 'سازمان ها',
    arabic: 'المنظمات',
    spanish: 'Organizaciones',
    french: 'Organisations',
    turkish: 'Kuruluşlar',
    portugess: 'Organizações',
    dutch: 'Organisaties',
    russian: 'Организации',
    italian: 'Organizzazioni',
    swedish: 'Organisationer',
    hindi: 'संगठन',
    urdu: 'تنظیم',
    chiness: '组织',
    japaness: '組織',
    korean: '조직',
    thai: 'องค์กร',
    malay: 'Organisasi',
    indonesian: 'Organisasi'
  }
)

CenterType.create(
  first: 90001, 
  last: 90099,
  translation_attributes: {
    english: 'Currencies',
    persian: 'ارزها',
    arabic: 'العملات',
    spanish: 'Monedas',
    french: 'Devises',
    turkish: 'Para birimleri',
    portugess: 'Moedas',
    dutch: 'Valuta',
    russian: 'Валюты',
    italian: 'Valute',
    swedish: 'Valutor',
    hindi: 'मुद्रा',
    urdu: 'کرنسی',
    chiness: '货币',
    japaness: '通貨',
    korean: '통화',
    thai: 'เงินตรา',
    malay: 'Mata wang',
    indonesian: 'Mata uang'
  },
  fields_attributes: [
    {
      # abrreviation : string
      field_type_id: 1,
      translation_attributes: {
        english: 'Abbreviation',
        persian: 'اختصار',
        arabic: 'الاختصار',
        spanish: 'Abreviatura',
        french: 'Abréviation',
        turkish: 'Kısaltma',
        portugess: 'Abreviação',
        dutch: 'Afkorting',
        russian: 'Аббревиатура',
        italian: 'Abbreviazione',
        swedish: 'Förkortning',
        hindi: 'संक्षिप्त रूप',
        urdu: 'اختصار',
        chiness: '缩写',
        japaness: '省略',
        korean: '약어',
        thai: 'ย่อ',
        malay: 'Singkatan',
        indonesian: 'Singkatan'
      }
    },
    {
      # decimal digits : integer
      field_type_id: 3,
      translation_attributes: {
        english: 'Decimal Digits',
        persian: 'تعداد اعشار',
        arabic: 'عدد الأعشار',
        spanish: 'Dígitos decimales',
        french: 'Chiffres décimaux',
        turkish: 'Ondalık basamaklar',
        portugess: 'Dígitos decimais',
        dutch: 'Decimale cijfers',
        russian: 'Десятичные цифры',
        italian: 'Cifre decimali',
        swedish: 'Decimaler',
        hindi: 'दशमलव संख्या',
        urdu: 'دسوی عدد',
        chiness: '十进制数字',
        japaness: '十進数',
        korean: '10진수',
        thai: 'ตัวเลขทศนิยม',
        malay: 'Digit perpuluhan',
        indonesian: 'Digit desimal'
      }
    }
  ]
)

CenterType.create(
  first: 900101,
  last: 900399,
  translation_attributes: {
    english: 'Measurement Units',
    persian: 'واحد های سنجش',
    arabic: 'وحدات القياس',
    spanish: 'Unidades de medida',
    french: 'Unités de mesure',
    turkish: 'Ölçü birimleri',
    portugess: 'Unidades de medida',
    dutch: 'Eenheden van meting',
    russian: 'Единицы измерения',
    italian: 'Unità di misura',
    swedish: 'Måttenheter',
    hindi: 'माप इकाइयाँ',
    urdu: 'مازون کی اکائیں',
    chiness: '测量单位',
    japaness: '測定単位',
    korean: '측정 단위',
    thai: 'หน่วยการวัด',
    malay: 'Unit pengukuran',
    indonesian: 'Unit pengukuran'
  }
)


