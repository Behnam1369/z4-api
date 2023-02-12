t1 = Translation.new(
  english: 'Manage Centers',
  persian: 'مدیریت مراکز',
  arabic: 'إدارة المراكز',
  spanish: 'Administrar centros',
  french: 'Gérer les centres',
  turkish: 'Merkezleri Yönet',
  portugess: 'Gerenciar centros',
  dutch: 'Centra beheren',
  russian: 'Управление центрами',
  italian: 'Gestisci centri',
  swedish: 'Hantera centra',
  hindi: 'केंद्र प्रबंधित करें',
  urdu: 'مراکز کا انتظام',
  chiness: '管理中心',
  japaness: 'センターを管理する',
  korean: '센터 관리',
  thai: 'จัดการศูนย์',
  malay: 'Uruskan Pusat',
  indonesian: 'Kelola Pusat'
)

t1.save

m1 = MenuItem.new(
  parent_id: nil,
  title: t1
)
m1.save

t2 = Translation.new(
  english: 'Center Types',
  persian: 'انواع مراکز',
  arabic: 'أنواع المراكز',
  spanish: 'Tipos de centros',
  french: 'Types de centres',
  turkish: 'Merkez türleri',
  portugess: 'Tipos de centros',
  dutch: 'Centrumtypen',
  russian: 'Типы центров',
  italian: 'Tipi di centri',
  swedish: 'Centertyper',
  hindi: 'केंद्र प्रकार',
  urdu: 'مراکز کی اقسام',
  chiness: '中心类型',
  japaness: 'センタータイプ',
  korean: '센터 유형',
  thai: 'ประเภทศูนย์',
  malay: 'Jenis Pusat',
  indonesian: 'Jenis Pusat'
)
t2.save

m2 = MenuItem.new(
  parent_id: m1.id,
  title: t2
)
m2.save

t3 = Translation.new(
  english: 'Centers List',
  persian: 'لیست مراکز',
  arabic: 'قائمة المراكز',
  spanish: 'Lista de centros',
  french: 'Liste des centres',
  turkish: 'Merkezler Listesi',
  portugess: 'Lista de centros',
  dutch: 'Centrumlijst',
  russian: 'Список центров',
  italian: 'Elenco centri',
  swedish: 'Centrallista',
  hindi: 'केंद्रों की सूची',
  urdu: 'مراکز کی فہرست',
  chiness: '中心列表',
  japaness: 'センターリスト',
  korean: '센터 목록',
  thai: 'รายการศูนย์',
  malay: 'Senarai Pusat',
  indonesian: 'Daftar Pusat'
)
t3.save

m3 = MenuItem.new(
  parent_id: m1.id,
  title: t3
)
m3.save

t4 = Translation.new(
  english: 'Accounts',
  persian: 'حساب ها',
  arabic: 'الحسابات',
  spanish: 'Cuentas',
  french: 'Comptes',
  turkish: 'Hesaplar',
  portugess: 'Contas',
  dutch: 'Rekeningen',
  russian: 'Счета',
  italian: 'Conti',
  swedish: 'Konton',
  hindi: 'खाते',
  urdu: 'اکاؤنٹس',
  chiness: '帐户',
  japaness: 'アカウント',
  korean: '계정',
  thai: 'บัญชี',
  malay: 'Akaun',
  indonesian: 'Akun'
)
t4.save

m4 = MenuItem.new(
  parent_id: nil,
  title: t4
)
m4.save

t5 = Translation.new(
  english: 'Chart of Accounts',
  persian: 'درختواره حساب ها',
  arabic: 'شجرة الحسابات',
  spanish: 'Árbol de cuentas',
  french: 'Arbre des comptes',
  turkish: 'Hesap ağacı',
  portugess: 'Árvore de contas',
  dutch: 'Rekeningboom',
  russian: 'Дерево счетов',
  italian: 'Albero dei conti',
  swedish: 'Kontotträd',
  hindi: 'खाते की वृक्ष',
  urdu: 'اکاؤنٹس کی درخت',
  chiness: '帐户树',
  japaness: 'アカウントツリー',
  korean: '계정 트리',
  thai: 'บัญชีต้นไม้',
  malay: 'Pohon Akaun',
  indonesian: 'Pohon Akun'
)
t5.save

m5 = MenuItem.new(
  parent_id: m4.id,
  title: t5
)
m5.save

t6 = Translation.new(
  english: 'Journal Vouchers',
  persian: 'اسناد حسابداری',
  arabic: 'قسائم اليومية',
  spanish: 'Vales de diario',
  french: 'Chèques journaliers',
  turkish: 'Günlük çekler',
  portugess: 'Vales de diário',
  dutch: 'Dagboekbonnen',
  russian: 'Журнальные ваучеры',
  italian: 'Voucher giornalieri',
  swedish: 'Dagboksbevis',
  hindi: 'जर्नल वाउचर',
  urdu: 'جرنل واوچرز',
  chiness: '日记凭证',
  japaness: '日記ボチャ',
  korean: '일지 보청',
  thai: 'บัตรเงินสดประจำวัน',
  malay: 'Voucher Jurnal',
  indonesian: 'Voucher Jurnal'
)
t6.save

m6 = MenuItem.new(
  parent_id: nil,
  title: t6
)
m6.save

t7 = Translation.new(
  english: 'New Journal Entry',
  persian: 'سند حسابداری جدید',
  arabic: 'إدخال يومي جديد',
  spanish: 'Nueva entrada de diario',
  french: 'Nouvelle entrée journalière',
  turkish: 'Yeni günlük girişi',
  portugess: 'Nova entrada diária',
  dutch: 'Nieuwe dagboekinvoer',
  russian: 'Новая журнальная запись',
  italian: 'Nuova voce giornaliera',
  swedish: 'Ny dagboksinmatning',
  hindi: 'नया जर्नल एंट्री',
  urdu: 'نئی جرنل انٹری',
  chiness: '新日记条目',
  japaness: '新しい日記エントリ',
  korean: '새 일지 항목',
  thai: 'รายการประจำวันใหม่',
  malay: 'Entri Jurnal Baru',
  indonesian: 'Entri Jurnal Baru'
)
t7.save

m7 = MenuItem.new(
  parent_id: m6.id,
  title: t7
)
m7.save

t8 = Translation.new(
  english: 'Journal Entries List',
  persian: 'لیست سند های حسابداری',
  arabic: 'قائمة إدخالات اليومية',
  spanish: 'Lista de entradas de diario',
  french: 'Liste des entrées journalières',
  turkish: 'Günlük girişler listesi',
  portugess: 'Lista de entradas diárias',
  dutch: 'Dagboekinvoerlijst',
  russian: 'Список журнальных записей',
  italian: 'Elenco delle voci giornaliere',
  swedish: 'Dagboksinmatningslista',
  hindi: 'जर्नल एंट्री की सूची',
  urdu: 'جرنل انٹریوں کی فہرست',
  chiness: '日记条目列表',
  japaness: '日記エントリリスト',
  korean: '일지 항목 목록',
  thai: 'รายการประจำวัน',
  malay: 'Senarai Entri Jurnal',
  indonesian: 'Daftar Entri Jurnal'
)
t8.save

m8 = MenuItem.new(
  parent_id: m6.id,
  title: t8
)
m8.save








  

