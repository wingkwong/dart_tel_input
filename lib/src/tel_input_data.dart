class TelInputData {
  static TelInputData _instance;
  factory TelInputData() => _instance ??= new TelInputData._();

  TelInputData._();

  getTelInputData() {
    List<TelInputCountry> countriesList = [];
    var countries = _getCountries();
    countries.asMap().forEach((i, country){
      countriesList.add(new TelInputCountry(
          country[0],
          country[1],
          country[2],
          country[3],
          country.length == 5 ? country[4] : 0,
          country.length == 6 ? country[5] : null
      ));
    });
    return countriesList;
  }

  getDialCodeHintTextMapping() {
    var map = new Map<String, String>();
    var countries = _getCountries();
    countries.asMap().forEach((i, country){
      map['+' + country[3]] = country[2];
    });
    return map;
  }

  getValidDialCode() {
    List<String> dailCodeList = [];
    var countries = _getCountries();
    countries.asMap().forEach((i, country){
      dailCodeList.add('+' + country[3]);
    });
    return dailCodeList;
  }

  _getCountries() {
    return [
      [
        "Afghanistan (‫افغانستان‬‎)",
        "af",
        "070 123 4567",
        "93"
      ],
      [
        "Albania (Shqipëri)",
        "al",
        "066 212 3456",
        "355"
      ],
      [
        "Algeria (‫الجزائر‬‎)",
        "dz",
        "0551 23 45 67",
        "213"
      ],
      [
        "American Samoa",
        "as",
        "(684) 733-1234",
        "1684"
      ],
      [
        "Andorra",
        "ad",
        "312 345",
        "376"
      ],
      [
        "Angola",
        "ao",
        "923 123 456",
        "244"
      ],
      [
        "Anguilla",
        "ai",
        "(264) 235-1234",
        "1264"
      ],
      [
        "Antigua and Barbuda",
        "ag",
        "(268) 464-1234",
        "1268"
      ],
      [
        "Argentina",
        "ar",
        "011 15-2345-6789",
        "54"
      ],
      [
        "Armenia (Հայաստան)",
        "am",
        "077 123456",
        "374"
      ],
      [
        "Aruba",
        "aw",
        "560 1234",
        "297"
      ],
      [
        "Australia",
        "au",
        "0412 345 678",
        "61",
        0
      ],
      [
        "Austria (Österreich)",
        "at",
        "0664 123456",
        "43"
      ],
      [
        "Azerbaijan (Azərbaycan)",
        "az",
        "040 123 45 67",
        "994"
      ],
      [
        "Bahamas",
        "bs",
        "(242) 359-1234",
        "1242"
      ],
      [
        "Bahrain (‫البحرين‬‎)",
        "bh",
        "3600 1234",
        "973"
      ],
      [
        "Bangladesh (বাংলাদেশ)",
        "bd",
        "01812-345678",
        "880"
      ],
      [
        "Barbados",
        "bb",
        "(246) 250-1234",
        "1246"
      ],
      [
        "Belarus (Беларусь)",
        "by",
        "8 029 491-19-11",
        "375"
      ],
      [
        "Belgium (België)",
        "be",
        "0470 12 34 56",
        "32"
      ],
      [
        "Belize",
        "bz",
        "622-1234",
        "501"
      ],
      [
        "Benin (Bénin)",
        "bj",
        "90 01 12 34",
        "229"
      ],
      [
        "Bermuda",
        "bm",
        "(441) 370-1234",
        "1441"
      ],
      [
        "Bhutan (འབྲུག)",
        "bt",
        "17 12 34 56",
        "975"
      ],
      [
        "Bolivia",
        "bo",
        "71234567",
        "591"
      ],
      [
        "Bosnia and Herzegovina (Босна и Херцеговина)",
        "ba",
        "061 123 456",
        "387"
      ],
      [
        "Botswana",
        "bw",
        "71 123 456",
        "267"
      ],
      [
        "Brazil (Brasil)",
        "br",
        "(11) 96123-4567",
        "55"
      ],
      [
        "British Indian Ocean Territory",
        "io",
        "380 1234",
        "246"
      ],
      [
        "British Virgin Islands",
        "vg",
        "(284) 300-1234",
        "1284"
      ],
      [
        "Brunei",
        "bn",
        "712 3456",
        "673"
      ],
      [
        "Bulgaria (България)",
        "bg",
        "048 123 456",
        "359"
      ],
      [
        "Burkina Faso",
        "bf",
        "70 12 34 56",
        "226"
      ],
      [
        "Burundi (Uburundi)",
        "bi",
        "79 56 12 34",
        "257"
      ],
      [
        "Cambodia (កម្ពុជា)",
        "kh",
        "091 234 567",
        "855"
      ],
      [
        "Cameroon (Cameroun)",
        "cm",
        "6 71 23 45 67",
        "237"
      ],
      [
        "Canada",
        "ca",
        "(204) 234-5678",
        "1",
        1,
        [
          "204",
          "226",
          "236",
          "249",
          "250",
          "289",
          "306",
          "343",
          "365",
          "387",
          "403",
          "416",
          "418",
          "431",
          "437",
          "438",
          "450",
          "506",
          "514",
          "519",
          "548",
          "579",
          "581",
          "587",
          "604",
          "613",
          "639",
          "647",
          "672",
          "705",
          "709",
          "742",
          "778",
          "780",
          "782",
          "807",
          "819",
          "825",
          "867",
          "873",
          "902",
          "905"
        ]
      ],
      [
        "Cape Verde (Kabu Verdi)",
        "cv",
        "991 12 34",
        "238"
      ],
      [
        "Caribbean Netherlands",
        "bq",
        "318 1234",
        "599",
        1
      ],
      [
        "Cayman Islands",
        "ky",
        "(345) 323-1234",
        "1345"
      ],
      [
        "Central African Republic (République centrafricaine)",
        "cf",
        "70 01 23 45",
        "236"
      ],
      [
        "Chad (Tchad)",
        "td",
        "63 01 23 45",
        "235"
      ],
      [
        "Chile",
        "cl",
        "9 6123 4567",
        "56"
      ],
      [
        "China (中国)",
        "cn",
        "131 2345 6789",
        "86"
      ],
      [
        "Christmas Island",
        "cx",
        "0412 345 678",
        "61",
        2
      ],
      [
        "Cocos (Keeling) Islands",
        "cc",
        "0412 345 678",
        "61",
        1
      ],
      [
        "Colombia",
        "co",
        "321 1234567",
        "57"
      ],
      [
        "Comoros (‫جزر القمر‬‎)",
        "km",
        "321 23 45",
        "269"
      ],
      [
        "Congo (DRC) (Jamhuri ya Kidemokrasia ya Kongo)",
        "cd",
        "0991 234 567",
        "243"
      ],
      [
        "Congo (Republic) (Congo-Brazzaville)",
        "cg",
        "06 123 4567",
        "242"
      ],
      [
        "Cook Islands",
        "ck",
        "71 234",
        "682"
      ],
      [
        "Costa Rica",
        "cr",
        "8312 3456",
        "506"
      ],
      [
        "Côte d’Ivoire",
        "ci",
        "01 23 45 67",
        "225"
      ],
      [
        "Croatia (Hrvatska)",
        "hr",
        "092 123 4567",
        "385"
      ],
      [
        "Cuba",
        "cu",
        "05 1234567",
        "53"
      ],
      [
        "Curaçao",
        "cw",
        "9 518 1234",
        "599",
        0
      ],
      [
        "Cyprus (Κύπρος)",
        "cy",
        "96 123456",
        "357"
      ],
      [
        "Czech Republic (Česká republika)",
        "cz",
        "601 123 456",
        "420"
      ],
      [
        "Denmark (Danmark)",
        "dk",
        "32 12 34 56",
        "45"
      ],
      [
        "Djibouti",
        "dj",
        "77 83 10 01",
        "253"
      ],
      [
        "Dominica",
        "dm",
        "(767) 225-1234",
        "1767"
      ],
      [
        "Dominican Republic (República Dominicana)",
        "do",
        "(809) 234-5678",
        "1",
        2,
        [
          "809",
          "829",
          "849"
        ]
      ],
      [
        "Ecuador",
        "ec",
        "099 123 4567",
        "593"
      ],
      [
        "Egypt (‫مصر‬‎)",
        "eg",
        "0100 123 4567",
        "20"
      ],
      [
        "El Salvador",
        "sv",
        "7012 3456",
        "503"
      ],
      [
        "Equatorial Guinea (Guinea Ecuatorial)",
        "gq",
        "222 123 456",
        "240"
      ],
      [
        "Eritrea",
        "er",
        "07 123 456",
        "291"
      ],
      [
        "Estonia (Eesti)",
        "ee",
        "5123 4567",
        "372"
      ],
      [
        "Ethiopia",
        "et",
        "091 123 4567",
        "251"
      ],
      [
        "Falkland Islands (Islas Malvinas)",
        "fk",
        "51234",
        "500"
      ],
      [
        "Faroe Islands (Føroyar)",
        "fo",
        "211234",
        "298"
      ],
      [
        "Fiji",
        "fj",
        "701 2345",
        "679"
      ],
      [
        "Finland (Suomi)",
        "fi",
        "041 2345678",
        "358",
        0
      ],
      [
        "France",
        "fr",
        "06 12 34 56 78",
        "33"
      ],
      [
        "French Guiana (Guyane française)",
        "gf",
        "0694 20 12 34",
        "594"
      ],
      [
        "French Polynesia (Polynésie française)",
        "pf",
        "87 12 34 56",
        "689"
      ],
      [
        "Gabon",
        "ga",
        "06 03 12 34",
        "241"
      ],
      [
        "Gambia",
        "gm",
        "301 2345",
        "220"
      ],
      [
        "Georgia (საქართველო)",
        "ge",
        "555 12 34 56",
        "995"
      ],
      [
        "Germany (Deutschland)",
        "de",
        "01512 3456789",
        "49"
      ],
      [
        "Ghana (Gaana)",
        "gh",
        "023 123 4567",
        "233"
      ],
      [
        "Gibraltar",
        "gi",
        "57123456",
        "350"
      ],
      [
        "Greece (Ελλάδα)",
        "gr",
        "691 234 5678",
        "30"
      ],
      [
        "Greenland (Kalaallit Nunaat)",
        "gl",
        "22 12 34",
        "299"
      ],
      [
        "Grenada",
        "gd",
        "(473) 403-1234",
        "1473"
      ],
      [
        "Guadeloupe",
        "gp",
        "0690 00 12 34",
        "590",
        0
      ],
      [
        "Guam",
        "gu",
        "(671) 300-1234",
        "1671"
      ],
      [
        "Guatemala",
        "gt",
        "5123 4567",
        "502"
      ],
      [
        "Guernsey",
        "gg",
        "07781 123456",
        "44",
        1
      ],
      [
        "Guinea (Guinée)",
        "gn",
        "601 12 34 56",
        "224"
      ],
      [
        "Guinea-Bissau (Guiné Bissau)",
        "gw",
        "955 012 345",
        "245"
      ],
      [
        "Guyana",
        "gy",
        "609 1234",
        "592"
      ],
      [
        "Haiti",
        "ht",
        "34 10 1234",
        "509"
      ],
      [
        "Honduras",
        "hn",
        "9123-4567",
        "504"
      ],
      [
        "Hong Kong (香港)",
        "hk",
        "5123 4567",
        "852"
      ],
      [
        "Hungary (Magyarország)",
        "hu",
        "(20) 123 4567",
        "36"
      ],
      [
        "Iceland (Ísland)",
        "is",
        "611 1234",
        "354"
      ],
      [
        "India (भारत)",
        "in",
        "081234 56789",
        "91"
      ],
      [
        "Indonesia",
        "id",
        "0812-345-678",
        "62"
      ],
      [
        "Iran (‫ایران‬‎)",
        "ir",
        "0912 345 6789",
        "98"
      ],
      [
        "Iraq (‫العراق‬‎)",
        "iq",
        "0791 234 5678",
        "964"
      ],
      [
        "Ireland",
        "ie",
        "085 012 3456",
        "353"
      ],
      [
        "Isle of Man",
        "im",
        "07924 123456",
        "44",
        2
      ],
      [
        "Israel (‫ישראל‬‎)",
        "il",
        "050-234-5678",
        "972"
      ],
      [
        "Italy (Italia)",
        "it",
        "312 345 6789",
        "39",
        0
      ],
      [
        "Jamaica",
        "jm",
        "(876) 210-1234",
        "1",
        4,
        [
          "876",
          "658"
        ]
      ],
      [
        "Japan (日本)",
        "jp",
        "090-1234-5678",
        "81"
      ],
      [
        "Jersey",
        "je",
        "07797 712345",
        "44",
        3
      ],
      [
        "Jordan (‫الأردن‬‎)",
        "jo",
        "07 9012 3456",
        "962"
      ],
      [
        "Kazakhstan (Казахстан)",
        "kz",
        "8 (771) 000 9998",
        "7",
        1
      ],
      [
        "Kenya",
        "ke",
        "0712 123456",
        "254"
      ],
      [
        "Kiribati",
        "ki",
        "72001234",
        "686"
      ],
      [
        "Kosovo",
        "xk",
        "043 201 234",
        "383"
      ],
      [
        "Kuwait (‫الكويت‬‎)",
        "kw",
        "500 12345",
        "965"
      ],
      [
        "Kyrgyzstan (Кыргызстан)",
        "kg",
        "0700 123 456",
        "996"
      ],
      [
        "Laos (ລາວ)",
        "la",
        "020 23 123 456",
        "856"
      ],
      [
        "Latvia (Latvija)",
        "lv",
        "21 234 567",
        "371"
      ],
      [
        "Lebanon (‫لبنان‬‎)",
        "lb",
        "71 123 456",
        "961"
      ],
      [
        "Lesotho",
        "ls",
        "5012 3456",
        "266"
      ],
      [
        "Liberia",
        "lr",
        "077 012 3456",
        "231"
      ],
      [
        "Libya (‫ليبيا‬‎)",
        "ly",
        "091-2345678",
        "218"
      ],
      [
        "Liechtenstein",
        "li",
        "660 234 567",
        "423"
      ],
      [
        "Lithuania (Lietuva)",
        "lt",
        "(8-612) 34567",
        "370"
      ],
      [
        "Luxembourg",
        "lu",
        "628 123 456",
        "352"
      ],
      [
        "Macau (澳門)",
        "mo",
        "6612 3456",
        "853"
      ],
      [
        "Macedonia (FYROM) (Македонија)",
        "mk",
        "072 345 678",
        "389"
      ],
      [
        "Madagascar (Madagasikara)",
        "mg",
        "032 12 345 67",
        "261"
      ],
      [
        "Malawi",
        "mw",
        "0991 23 45 67",
        "265"
      ],
      [
        "Malaysia",
        "my",
        "012-345 6789",
        "60"
      ],
      [
        "Maldives",
        "mv",
        "771-2345",
        "960"
      ],
      [
        "Mali",
        "ml",
        "65 01 23 45",
        "223"
      ],
      [
        "Malta",
        "mt",
        "9696 1234",
        "356"
      ],
      [
        "Marshall Islands",
        "mh",
        "235-1234",
        "692"
      ],
      [
        "Martinique",
        "mq",
        "0696 20 12 34",
        "596"
      ],
      [
        "Mauritania (‫موريتانيا‬‎)",
        "mr",
        "22 12 34 56",
        "222"
      ],
      [
        "Mauritius (Moris)",
        "mu",
        "5251 2345",
        "230"
      ],
      [
        "Mayotte",
        "yt",
        "0639 01 23 45",
        "262",
        1
      ],
      [
        "Mexico (México)",
        "mx",
        "044 222 123 4567",
        "52"
      ],
      [
        "Micronesia",
        "fm",
        "350 1234",
        "691"
      ],
      [
        "Moldova (Republica Moldova)",
        "md",
        "0621 12 345",
        "373"
      ],
      [
        "Monaco",
        "mc",
        "06 12 34 56 78",
        "377"
      ],
      [
        "Mongolia (Монгол)",
        "mn",
        "8812 3456",
        "976"
      ],
      [
        "Montenegro (Crna Gora)",
        "me",
        "067 622 901",
        "382"
      ],
      [
        "Montserrat",
        "ms",
        "(664) 492-3456",
        "1664"
      ],
      [
        "Morocco (‫المغرب‬‎)",
        "ma",
        "0650-123456",
        "212",
        0
      ],
      [
        "Mozambique (Moçambique)",
        "mz",
        "82 123 4567",
        "258"
      ],
      [
        "Myanmar (Burma) (မြန်မာ)",
        "mm",
        "09 212 3456",
        "95"
      ],
      [
        "Namibia (Namibië)",
        "na",
        "081 123 4567",
        "264"
      ],
      [
        "Nauru",
        "nr",
        "555 1234",
        "674"
      ],
      [
        "Nepal (नेपाल)",
        "np",
        "984-1234567",
        "977"
      ],
      [
        "Netherlands (Nederland)",
        "nl",
        "06 12345678",
        "31"
      ],
      [
        "New Caledonia (Nouvelle-Calédonie)",
        "nc",
        "75.12.34",
        "687"
      ],
      [
        "New Zealand",
        "nz",
        "021 123 4567",
        "64"
      ],
      [
        "Nicaragua",
        "ni",
        "8123 4567",
        "505"
      ],
      [
        "Niger (Nijar)",
        "ne",
        "93 12 34 56",
        "227"
      ],
      [
        "Nigeria",
        "ng",
        "0802 123 4567",
        "234"
      ],
      [
        "Niue",
        "nu",
        "888 4012",
        "683"
      ],
      [
        "Norfolk Island",
        "nf",
        "3 81234",
        "672"
      ],
      [
        "North Korea (조선 민주주의 인민 공화국)",
        "kp",
        "0192 123 4567",
        "850"
      ],
      [
        "Northern Mariana Islands",
        "mp",
        "(670) 234-5678",
        "1670"
      ],
      [
        "Norway (Norge)",
        "no",
        "406 12 345",
        "47",
        0
      ],
      [
        "Oman (‫عُمان‬‎)",
        "om",
        "9212 3456",
        "968"
      ],
      [
        "Pakistan (‫پاکستان‬‎)",
        "pk",
        "0301 2345678",
        "92"
      ],
      [
        "Palau",
        "pw",
        "620 1234",
        "680"
      ],
      [
        "Palestine (‫فلسطين‬‎)",
        "ps",
        "0599 123 456",
        "970"
      ],
      [
        "Panama (Panamá)",
        "pa",
        "6123-4567",
        "507"
      ],
      [
        "Papua New Guinea",
        "pg",
        "7012 3456",
        "675"
      ],
      [
        "Paraguay",
        "py",
        "0961 456789",
        "595"
      ],
      [
        "Peru (Perú)",
        "pe",
        "912 345 678",
        "51"
      ],
      [
        "Philippines",
        "ph",
        "0905 123 4567",
        "63"
      ],
      [
        "Poland (Polska)",
        "pl",
        "512 345 678",
        "48"
      ],
      [
        "Portugal",
        "pt",
        "912 345 678",
        "351"
      ],
      [
        "Puerto Rico",
        "pr",
        "(787) 234-5678",
        "1",
        3,
        [
          "787",
          "939"
        ]
      ],
      [
        "Qatar (‫قطر‬‎)",
        "qa",
        "3312 3456",
        "974"
      ],
      [
        "Réunion (La Réunion)",
        "re",
        "0692 12 34 56",
        "262",
        0
      ],
      [
        "Romania (România)",
        "ro",
        "0712 034 567",
        "40"
      ],
      [
        "Russia (Россия)",
        "ru",
        "8 (912) 345-67-89",
        "7",
        0
      ],
      [
        "Rwanda",
        "rw",
        "0720 123 456",
        "250"
      ],
      [
        "Saint Barthélemy",
        "bl",
        "0690 00 12 34",
        "590",
        1
      ],
      [
        "Saint Helena",
        "sh",
        "51234",
        "290"
      ],
      [
        "Saint Kitts and Nevis",
        "kn",
        "(869) 765-2917",
        "1869"
      ],
      [
        "Saint Lucia",
        "lc",
        "(758) 284-5678",
        "1758"
      ],
      [
        "Saint Martin (Saint-Martin (partie française))",
        "mf",
        "0690 00 12 34",
        "590",
        2
      ],
      [
        "Saint Pierre and Miquelon (Saint-Pierre-et-Miquelon)",
        "pm",
        "055 12 34",
        "508"
      ],
      [
        "Saint Vincent and the Grenadines",
        "vc",
        "(784) 430-1234",
        "1784"
      ],
      [
        "Samoa",
        "ws",
        "72 12345",
        "685"
      ],
      [
        "San Marino",
        "sm",
        "66 66 12 12",
        "378"
      ],
      [
        "São Tomé and Príncipe (São Tomé e Príncipe)",
        "st",
        "981 2345",
        "239"
      ],
      [
        "Saudi Arabia (‫المملكة العربية السعودية‬‎)",
        "sa",
        "051 234 5678",
        "966"
      ],
      [
        "Senegal (Sénégal)",
        "sn",
        "70 123 45 67",
        "221"
      ],
      [
        "Serbia (Србија)",
        "rs",
        "060 1234567",
        "381"
      ],
      [
        "Seychelles",
        "sc",
        "2 510 123",
        "248"
      ],
      [
        "Sierra Leone",
        "sl",
        "(025) 123456",
        "232"
      ],
      [
        "Singapore",
        "sg",
        "8123 4567",
        "65"
      ],
      [
        "Sint Maarten",
        "sx",
        "(721) 520-5678",
        "1721"
      ],
      [
        "Slovakia (Slovensko)",
        "sk",
        "0912 123 456",
        "421"
      ],
      [
        "Slovenia (Slovenija)",
        "si",
        "031 234 567",
        "386"
      ],
      [
        "Solomon Islands",
        "sb",
        "74 21234",
        "677"
      ],
      [
        "Somalia (Soomaaliya)",
        "so",
        "7 1123456",
        "252"
      ],
      [
        "South Africa",
        "za",
        "071 123 4567",
        "27"
      ],
      [
        "South Korea (대한민국)",
        "kr",
        "010-0000-0000",
        "82"
      ],
      [
        "South Sudan (‫جنوب السودان‬‎)",
        "ss",
        "0977 123 456",
        "211"
      ],
      [
        "Spain (España)",
        "es",
        "612 34 56 78",
        "34"
      ],
      [
        "Sri Lanka (ශ්‍රී ලංකාව)",
        "lk",
        "071 234 5678",
        "94"
      ],
      [
        "Sudan (‫السودان‬‎)",
        "sd",
        "091 123 1234",
        "249"
      ],
      [
        "Suriname",
        "sr",
        "741-2345",
        "597"
      ],
      [
        "Svalbard and Jan Mayen",
        "sj",
        "412 34 567",
        "47",
        1
      ],
      [
        "Swaziland",
        "sz",
        "7612 3456",
        "268"
      ],
      [
        "Sweden (Sverige)",
        "se",
        "070-123 45 67",
        "46"
      ],
      [
        "Switzerland (Schweiz)",
        "ch",
        "078 123 45 67",
        "41"
      ],
      [
        "Syria (‫سوريا‬‎)",
        "sy",
        "0944 567 890",
        "963"
      ],
      [
        "Taiwan (台灣)",
        "tw",
        "0912 345 678",
        "886"
      ],
      [
        "Tajikistan",
        "tj",
        "917 12 3456",
        "992"
      ],
      [
        "Tanzania",
        "tz",
        "0621 234 567",
        "255"
      ],
      [
        "Thailand (ไทย)",
        "th",
        "081 234 5678",
        "66"
      ],
      [
        "Timor-Leste",
        "tl",
        "7721 2345",
        "670"
      ],
      [
        "Togo",
        "tg",
        "90 11 23 45",
        "228"
      ],
      [
        "Tokelau",
        "tk",
        "7290",
        "690"
      ],
      [
        "Tonga",
        "to",
        "771 5123",
        "676"
      ],
      [
        "Trinidad and Tobago",
        "tt",
        "(868) 291-1234",
        "1868"
      ],
      [
        "Tunisia (‫تونس‬‎)",
        "tn",
        "20 123 456",
        "216"
      ],
      [
        "Turkey (Türkiye)",
        "tr",
        "0501 234 56 78",
        "90"
      ],
      [
        "Turkmenistan",
        "tm",
        "8 66 123456",
        "993"
      ],
      [
        "Turks and Caicos Islands",
        "tc",
        "(649) 231-1234",
        "1649"
      ],
      [
        "Tuvalu",
        "tv",
        "901234",
        "688"
      ],
      [
        "U.S. Virgin Islands",
        "vi",
        "(340) 642-1234",
        "1340"
      ],
      [
        "Uganda",
        "ug",
        "0712 345678",
        "256"
      ],
      [
        "Ukraine (Україна)",
        "ua",
        "039 123 4567",
        "380"
      ],
      [
        "United Arab Emirates (‫الإمارات العربية المتحدة‬‎)",
        "ae",
        "050 123 4567",
        "971"
      ],
      [
        "United Kingdom",
        "gb",
        "07400 123456",
        "44",
        0
      ],
      [
        "United States",
        "us",
        "(201) 555-0123",
        "1",
        0
      ],
      [
        "Uruguay",
        "uy",
        "094 231 234",
        "598"
      ],
      [
        "Uzbekistan (Oʻzbekiston)",
        "uz",
        "8 91 234 56 78",
        "998"
      ],
      [
        "Vanuatu",
        "vu",
        "591 2345",
        "678"
      ],
      [
        "Vatican City (Città del Vaticano)",
        "va",
        "312 345 6789",
        "39",
        1
      ],
      [
        "Venezuela",
        "ve",
        "0412-1234567",
        "58"
      ],
      [
        "Vietnam (Việt Nam)",
        "vn",
        "091 234 56 78",
        "84"
      ],
      [
        "Wallis and Futuna (Wallis-et-Futuna)",
        "wf",
        "50 12 34",
        "681"
      ],
      [
        "Western Sahara (‫الصحراء الغربية‬‎)",
        "eh",
        "0650-123456",
        "212",
        1
      ],
      [
        "Yemen (‫اليمن‬‎)",
        "ye",
        "0712 345 678",
        "967"
      ],
      [
        "Zambia",
        "zm",
        "095 5123456",
        "260"
      ],
      [
        "Zimbabwe",
        "zw",
        "071 234 5678",
        "263"
      ],
      [
        "Åland Islands",
        "ax",
        "041 2345678",
        "358",
        1
      ]
    ];
  }
}


class TelInputCountry {
  String name;
  String iso;
  String placeholder;
  String dialCode;
  int priority;
  List<String> areaCodes;

  TelInputCountry(name, iso, placeholder, dialCode, priority, areaCode) {
    this.name = name;
    this.iso = iso;
    this.placeholder = placeholder;
    this.dialCode = dialCode;
    this.priority = priority;
    this.areaCodes = areaCodes;
  }
}