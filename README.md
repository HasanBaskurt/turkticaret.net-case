## Uygulama genel bakış

* State management, localization ve navigation işlemleri Get ile gerçekleştirdi.

* Storage işlemleri Get_storage ile gerçekleştirdi.

* Uygulamada dil ve dark/light mode desteği mevcut.

* MVC yapısı ile oluşturuldu.


## Proje yapısı

lib/

├── core/

│   ├── constants

│   └── localization

│   └── storage

├── feature/

│   ├── home

          └── bindings
          
          └── controller
          
          └── model
          
          └── view
          
│   └── countries

│   └── ...

├── global/

│   └── bindings,

│   └── controllers

│   └── mock_data

│   └── models

│   └── widgets

├── utils/

│   └── helper

│   └── init

│   └── routes

│   └── theme

├── main.dart



## Kurulum

git clone https://github.com/HasanBaskurt/turkticaret.net-case.git

cd turkticaret.net-case

## Gerekli Paketleri Yükleyin

flutter pub get

## Uygulamayı Başlatın

flutter run

## Uygulama Görüntüsü
![Screenshot_1747085733](https://github.com/user-attachments/assets/1772046c-6785-412d-8cb2-503a313d890e)




## Kullanılan Paketler
 ### Localization
  intl: ^0.19.0
  
 ### Screen Size Control
  flutter_screenutil: ^5.9.3

   ### State Management & Navigation & Localization
  get: ^4.7.2

   ### Storage
  get_storage: ^2.1.1  
  
 ### Auto Size Text
  auto_size_text: ^3.0.0

  ### Google Fonts
  google_fonts: ^6.2.1

   ### App Logo
  flutter_launcher_icons: ^0.14.3

  ### SVG Support
  flutter_svg: ^2.1.0
