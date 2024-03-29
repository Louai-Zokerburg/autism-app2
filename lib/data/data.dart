import 'dart:io';

List<String> getImagesInFolder(String folderPath) {
  Directory directory = Directory(folderPath);
  if (!directory.existsSync()) {
    return [];
  }

  List<FileSystemEntity> entities = directory.listSync();
  List<String> imagePaths = [];
  for (var entity in entities) {
    if (entity is File && entity.path.endsWith('.png')) {
      imagePaths.add(entity.path);
    }
  }

  return imagePaths;
}

Map<String, dynamic> data = {
  'feel': {
    'label': 'نحس',
    'items': [
      {
        'label': 'ماشي مليح',
        'items': [
          'حزين',
          'عيان',
          'فشلان',
          'نتوجع',
          'مقلق',
          'جيعان',
          'خايف',
          'مريض',
          'دايخ',
          'حشمان',
          'زعفان',
          'وحيد',
          'ماشي مرتاح',
          'حاب نتقيا',
          'بردان',
        ],
      },
      {
        'label': 'مليح',
        'items': [
          'فرحان',
          'مرتاح',
          'شبعان ',
          'قابل ',
          'نشيط ',
          'متحمس ',
          'عاجبني ',
          'شباب ',
        ],
      },
    ],
  },
  'want': {
    'label': 'حاب',
    'items': [
      {
        'label': 'ضروري',
        'items': [
          'ماما',
          'نقرا',
          'نيثوايي',
          'نغسل ماعن',
          'ندير سبور',
          'نلعب',
          'نروح',
          'نرجع',
          'نروح ثوالاث',
          'نرتاح',
          'نحكي',
          'نشوف',
          'نتفرج',
          'نستنى',
          'نعاون',
          'ندوش',
          'نغسل',
          'نبدل',
          'نرقد',
        ],
      },
      {
        'label': 'خضرة',
        'items': [
          'طماطم',
          'بطاطا',
          'زرودية',
          'بصل',
          'ثوم',
          'فلفل حار',
          'فلفل حلو',
          'سلق',
          'ماييس',
          'بيدنجال',
          'خيار',
          'ماشطو',
          'جلبانة',
          'لفت',
          'شفلور',
          'قرعة',
          'كراث',
          'كورجاث',
          'كرومب',
          'بيثراف',
        ],
      },
      {
        'label': 'فاكية',
        'items': [
          'بنان',
          'لانجاص',
          'تفاخ',
          'فراز',
          'تشينة',
          'توت',
          'بخسيس',
          'قارص',
          'رمان',
          'خوخ',
          'عنب',
          'تمر',
          'اناناس',
          'كيوي',
          'مانجا',
          'دلاع',
          'بطيخ',
        ],
      },
      {
        'label': 'حيوانات',
        'items': ['كلب', 'قطة', 'أرنب', 'فكرون', 'حوتة'],
      },
      {
        'label': 'كوزينة',
        'items': [
          'مغرفة',
          'فرشيطة',
          'كرسي',
          'طابلة',
          'كاس',
          'فنجان',
          'قرعة ',
          'طبسي',
          'ملح',
          'سكر',
        ],
      },
      {
        'label': 'دار',
        'items': [
          'كوزينة',
          'شامبرا',
          'دروج',
          'حوش',
          'صالون',
          'دوش',
          'توالات',
          'جاراج',
          'سطح',
          'باب',
          'تاقة',
        ],
      },
      {
        'label': 'لوازم منزلية',
        'items': [
          'ماشينة لافي',
          'كليماتيزور',
          'ضو',
          'حديد',
          'فونتيلاتور',
          'بالي',
          'بالة',
          'فروطوار',
          'بيدون',
          'اسبيراتور',
          'بارابلوي',
          'لامبة',
          'بوبال',
          'تيليفزيون',
          'كوبونجل',
          'شامبوا',
          'صابون',
          'مشطة',
          'كياسة',
          'سرفيتة',
          'طاسة',
          'فرشاة اسنان',
          'دونتيفريز',
          'لانجات',
          'الماء',
        ],
      },
      {
        'label': 'أدوات مدرسية',
        'items': [
          'كارتابل',
          'كراس',
          'لاتروس',
          'قلم',
          'مبراة',
          'ممحاة',
          'الوان',
          'مقص',
          'كتوبة',
          'مدور',
          'منقلة',
          'مسطرة',
          'كوس',
          'الة حاسبة',
          'ستيلو',
          'ستيكي نوت',
          'ليكول',
          'استاذ',
          'القسم',
          'سبورة',
        ],
      },
      {
        'label': 'قش',
        'items': [
          'تريكو',
          'شابو',
          'فيستة',
          'سيرفات',
          'ديباردور',
          'سروال',
          'كوستيم',
          'جيب',
          'روبة',
          'بيجامة',
          'شورت',
          'تقاشر',
          'بوكسور',
          'سليب',
          'ليبا',
          'طابلية',
          'صباط',
          'بوتيو',
          'سندالة',
          'شال',
          'كاسكيطة',
        ],
      },
      {
        'label': 'ماكلة',
        'items': [
          'طعام',
          'طاجين زيتون',
          'شكشوكة',
          'لوبية ',
          'عدس',
          'فريت',
          'روز',
          'حمص',
          'سلاطة',
          'سلق',
          'سباغيتي',
          'مقارون',
          'شربة',
          'بيتزا',
          'تاكوس',
          'بانيني',
        ],
      },
    ],
  },
  'learn': {
    'label': 'أتعلم',
    'items': [
      {
        'label': 'أرقام',
        'items': [
          'واحد',
          'اثنان',
          'ثلاثة',
          'أربعة',
          'خمسة',
          'ستة',
          'سبعة',
          'ثمانية',
          'تسعة',
          'عشرة',
          'أحد عشر',
          'اثنا عشر',
          'ثلاثة عشر',
          'أربعة عشر',
          'خمسة عشر',
          'ستة عشر',
          'سبعة عشر',
          'ثمانية عشر',
          'تسعة عشر',
          'عشرون',
          'واحد وعشرون',
          'اثنان وعشرون',
          'ثلاثة وعشرون',
          'أربعة وعشرون',
          'خمسة وعشرون',
          'ستة وعشرون',
          'سبعة وعشرون',
          'ثمانية وعشرون',
          'تسعة وعشرون',
          'ثلاثون',
          'واحد وثلاثون',
          'اثنان وثلاثون',
          'ثلاثة وثلاثون',
          'أربعة وثلاثون',
          'خمسة وثلاثون',
          'ستة وثلاثون',
          'سبعة وثلاثون',
          'ثمانية وثلاثون',
          'تسعة وثلاثون',
          'أربعون',
          'واحد وأربعون',
          'اثنان وأربعون',
          'ثلاثة وأربعون',
          'أربعة وأربعون',
          'خمسة وأربعون',
          'ستة وأربعون',
          'سبعة وأربعون',
          'ثمانية وأربعون',
          'تسعة وأربعون',
          'خمسون',
          'واحد وخمسون',
          'اثنان وخمسون',
          'ثلاثة وخمسون',
          'أربعة وخمسون',
          'خمسة وخمسون',
          'ستة وخمسون',
          'سبعة وخمسون',
          'ثمانية وخمسون',
          'تسعة وخمسون',
          'ستون',
          'واحد وستون',
          'اثنان وستون',
          'ثلاثة وستون',
          'أربعة وستون',
          'خمسة وستون',
          'ستة وستون',
          'سبعة وستون',
          'ثمانية وستون',
          'تسعة وستون',
          'سبعون',
          'واحد وسبعون',
          'اثنان وسبعون',
          'ثلاثة وسبعون',
          'أربعة وسبعون',
          'خمسة وسبعون',
          'ستة وسبعون',
          'سبعة وسبعون',
          'ثمانية وسبعون',
          'تسعة وسبعون',
          'ثمانون',
          'واحد وثمانون',
          'اثنان وثمانون',
          'ثلاثة وثمانون',
          'أربعة وثمانون',
          'خمسة وثمانون',
          'ستة وثمانون',
          'سبعة وثمانون',
          'ثمانية وثمانون',
          'تسعة وثمانون',
          'تسعين',
          'واحد وتسعين',
          'اثنان وتسعين',
          'ثلاثة وتسعين',
          'أربعة وتسعين',
          'خمسة وتسعين',
          'ستة وتسعين',
          'سبعة وتسعين',
          'ثمانية وتسعين',
          'تسعة وتسعين',
          'مائة',
        ],
      },
      {
        'label': 'حروف',
        'items': [
          'ألف',
          'باء',
          'تاء',
          'ثاء',
          'جيم',
          'حاء',
          'خاء',
          'دال',
          'ذال',
          'راء',
          'زاي',
          'سين',
          'شين',
          'صاد',
          'ضاد',
          'طاء',
          'ظاء',
          'عين',
          'غين',
          'فاء',
          'قاف',
          'كاف',
          'لام',
          'ميم',
          'نون',
          'هاء',
          'واو',
          'ياء',
        ],
      },
      {
        'label': 'خضرة',
        'items': [
          'طماطم',
          'بطاطا',
          'زرودية',
          'بصل',
          'ثوم',
          'فلفل حار',
          'فلفل حلو',
          'سلق',
          'ماييس',
          'بيدنجال',
          'خيار',
          'ماشطو',
          'جلبانة',
          'لفت',
          'شفلور',
          'قرعة',
          'كراث',
          'كورجاث',
          'كرومب',
          'بيثراف',
        ],
      },
      {
        'label': 'فاكية',
        'items': [
          'بنان',
          'لانجاص',
          'تفاخ',
          'فراز',
          'تشينة',
          'توت',
          'بخسيس',
          'قارص',
          'رمان',
          'خوخ',
          'عنب',
          'تمر',
          'اناناس',
          'كيوي',
          'مانجا',
          'دلاع',
          'بطيخ',
        ],
      },
      {
        'label': 'حيوانات',
        'items': [
          'كلب',
          'قطة',
          'حصان',
          'بقرة',
          'أرنب',
          'معزة',
          'كبش',
          'حمار',
          'سردوك',
          'جاجة',
          'فار',
          'نمل',
          'نحلة',
          'رتيلة',
          'سبع',
          'زرافة',
          'فكرون',
          'حنش',
          'فيل',
          'نمر',
          'بطريق',
          'دلفين',
          'حمار وحش',
          'صقر',
          'كروكوديل',
          'باندا',
          'حوتة',
        ],
      },
      {
        'label': 'جسم',
        'items': [
          'راس',
          'عين',
          'فم',
          'شوارب',
          'نيف',
          'لسان',
          'حواجب',
          'شفارتين',
          'شعر',
          'وذن',
          'رقبة',
          'يد',
          'صباع',
          'ضفارتين',
          'صدر',
          'كرش',
          'ظهر',
          'كتف',
          'ركبة',
          'فخذ',
          'رجل',
          'صباع رجلين',
          'سنين',
        ],
      },
      {
        'label': 'كوزينة',
        'items': [
          'مغرفة',
          'فرشيطة',
          'موس',
          'غراف',
          'مقلة',
          'كرسي',
          'طابلة',
          'كاس',
          'فنجان',
          'قرعة ',
          'كويزينيار',
          'فريجيدار',
          'كاسرونة',
          'قدرة',
          'طبسي',
          'براس',
          'بقراج',
          'تيرمو',
          'ملح',
          'سكر',
        ],
      },
      {
        'label': 'دار',
        'items': [
          'كوزينة',
          'شامبرا',
          'دروج',
          'حوش',
          'صالون',
          'دوش',
          'توالات',
          'جاراج',
          'سطح',
          'باب',
          'تاقة',
          'فوتاي',
          'ريدو',
        ],
      },
      {
        'label': 'لوازم منزلية',
        'items': [
          'ماشينة لافي',
          'كليماتيزور',
          'ضو',
          'حديد',
          'فونتيلاتور',
          'بالي',
          'بالة',
          'فروطوار',
          'بيدون',
          'اسبيراتور',
          'بارابلوي',
          'لامبة',
          'بوبال',
          'تيليفزيون',
          'كوبونجل',
          'شامبوا',
          'صابون',
          'مشطة',
          'كياسة',
          'سرفيتة',
          'طاسة',
          'فرشاة اسنان',
          'دونتيفريز',
          'لانجات',
          'الماء',
        ],
      },
      {
        'label': 'أدوات مدرسية',
        'items': [
          'كارتابل',
          'كراس',
          'لاتروس',
          'قلم',
          'مبراة',
          'ممحاة',
          'الوان',
          'مقص',
          'كتوبة',
          'مدور',
          'منقلة',
          'مسطرة',
          'كوس',
          'الة حاسبة',
          'ستيلو',
          'ستيكي نوت',
          'ليكول',
          'استاذ',
          'القسم',
          'سبورة',
        ],
      },
      {
        'label': 'قش',
        'items': [
          'تريكو',
          'شابو',
          'فيستة',
          'سيرفات',
          'ديباردور',
          'سروال',
          'كوستيم',
          'جيب',
          'روبة',
          'بيجامة',
          'شورت',
          'تقاشر',
          'بوكسور',
          'سليب',
          'ليبا',
          'طابلية',
          'صباط',
          'بوتيو',
          'سندالة',
          'شال',
          'كاسكيطة',
        ],
      },
      {
        'label': 'ماكلة',
        'items': [
          'طعام',
          'طاجين زيتون',
          'شكشوكة',
          'لوبية ',
          'عدص',
          'حمص',
          'فريت اوملات',
          'روز',
          'تليتلي',
          'رشتة',
          'سلاطة',
          'مثوم',
          'سلق',
          'الفول',
          'كباب',
          'شربة',
          'بيتزا',
          'تاكوس',
          'بانيني',
          'قرنطيطة',
        ],
      },
    ],
  },
};


void getPaths(Map<String, dynamic> data) {
  final String imagesBasePath = './assets/images/${data['label']}';
  final String audioBasePath = './assets/audios/${data['label']}';

  final List<String> imagePaths = [];
  final List<String> audioPaths = [];

  for (var i = 0; i < data['items'].length; i++) {
    final String imagesTypePath = '${data['items'][i]['label']}';
    final String audioTypePath = '${data['items'][i]['label']}';

    for (var j = 0; j < data['items'][i]['items'].length; j++) {
      final String imagesPath = '$imagesBasePath/$imagesTypePath/${j + 1}.png';
      final String audioPath = '$audioBasePath/$audioTypePath/${j + 1}.mp3';

      imagePaths.add(imagesPath);
      audioPaths.add(audioPath);
    }
  }
}



String getImagePath(String category, String subCategory) {
  String rootImagePath = 'assets/images/$category/$subCategory';

  String itemPath = '$rootImagePath/$subCategory';
  bool isFolder = Directory(itemPath).existsSync();

  if (isFolder) {
    List<String> images = getImagesInFolder(itemPath);

    if (images.isNotEmpty) {
      String folderName = images[0].split('/').last.split('.').first;
      return '$rootImagePath/$subCategory/$folderName/1.png';
    }
  }

  return '$rootImagePath/1.png'; // Use the first image in the category by default
}
