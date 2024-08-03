import 'package:country_flags/country_flags.dart';
import 'package:flutter/material.dart';

const kPreloadFlags = false;
void main() async {
  if (kPreloadFlags) {
    await WidgetsFlutterBinding.ensureInitialized();
    await preloadAllCountryFlags();
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        backgroundColor: Colors.grey[200],
        body: SafeArea(
          child: CustomScrollView(
            slivers: [
              const SliverAppBar(
                pinned: true,
                backgroundColor: Colors.red,
                title: Text(
                  'Language flags',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              SliverGrid(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                ),
                delegate: SliverChildBuilderDelegate(
                  (_, index) => _buildLanguageFlag(_languageCodes[index]),
                  childCount: _languageCodes.length,
                ),
              ),
              const SliverAppBar(
                pinned: true,
                backgroundColor: Colors.blue,
                title: Text(
                  'Country flags',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              SliverGrid(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                ),
                delegate: SliverChildBuilderDelegate(
                  (_, index) => _buildCountryFlag(_countryCodes[index]),
                  childCount: _countryCodes.length,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildLanguageFlag(String languageCode) => _FlagItem(
        flag: CountryFlag.fromLanguageCode(
          shape: RoundedRectangle(8),
          languageCode,
          width: 80,
          height: 40,
        ),
        countryCode: languageCode,
      );

  Widget _buildCountryFlag(String countryCode) => _FlagItem(
        flag: CountryFlag.fromCountryCode(
          shape: Circle(),
          countryCode,
          width: 60,
          height: 60,
        ),
        countryCode: countryCode,
      );
}

class _FlagItem extends StatelessWidget {
  const _FlagItem({
    required this.flag,
    required this.countryCode,
  });

  final CountryFlag flag;
  final String countryCode;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(child: flag),
        const SizedBox(height: 8),
        Expanded(
          child: Text(
            countryCode,
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
      ],
    );
  }
}

const List<String> _countryCodes = [
  'AD',
  'AE',
  'AF',
  'AG',
  'AI',
  'AL',
  'AM',
  'AO',
  'AQ',
  'AR',
  'AS',
  'AT',
  'AU',
  'AW',
  'AX',
  'AZ',
  'BA',
  'BB',
  'BD',
  'BE',
  'BF',
  'BG',
  'BH',
  'BI',
  'BJ',
  'BL',
  'BM',
  'BN',
  'BO',
  'BQ',
  'BR',
  'BS',
  'BT',
  'BV',
  'BW',
  'BY',
  'BZ',
  'CA',
  'CC',
  'CD',
  'CF',
  'CG',
  'CH',
  'CI',
  'CK',
  'CL',
  'CM',
  'CN',
  'CO',
  'CR',
  'CU',
  'CV',
  'CW',
  'CX',
  'CY',
  'CZ',
  'DE',
  'DJ',
  'DK',
  'DM',
  'DO',
  'DZ',
  'EC',
  'EE',
  'EG',
  'EH',
  'ER',
  'ES',
  'ET',
  'FI',
  'FJ',
  'FK',
  'FM',
  'FO',
  'FR',
  'GA',
  'GB',
  'GB-SCT',
  'GB-WLS',
  'GB-ENG',
  'GB-NIR',
  'GD',
  'GE',
  'GF',
  'GG',
  'GH',
  'GI',
  'GL',
  'GM',
  'GN',
  'GP',
  'GQ',
  'GR',
  'GS',
  'GT',
  'GU',
  'GW',
  'GY',
  'HK',
  'HM',
  'HN',
  'HR',
  'HT',
  'HU',
  'ID',
  'IE',
  'IL',
  'IM',
  'IN',
  'IO',
  'IQ',
  'IR',
  'IS',
  'IT',
  'JE',
  'JM',
  'JO',
  'JP',
  'KE',
  'KG',
  'KH',
  'KI',
  'KM',
  'KN',
  'KP',
  'KR',
  'KW',
  'KY',
  'KZ',
  'LA',
  'LB',
  'LC',
  'LI',
  'LK',
  'LR',
  'LS',
  'LT',
  'LU',
  'LV',
  'LY',
  'MA',
  'MC',
  'MD',
  'ME',
  'MF',
  'MG',
  'MH',
  'MK',
  'ML',
  'MM',
  'MN',
  'MO',
  'MP',
  'MQ',
  'MR',
  'MS',
  'MT',
  'MU',
  'MV',
  'MW',
  'MX',
  'MY',
  'MZ',
  'NA',
  'NC',
  'NE',
  'NF',
  'NG',
  'NI',
  'NL',
  'NO',
  'NP',
  'NR',
  'NU',
  'NZ',
  'OM',
  'PA',
  'PE',
  'PF',
  'PG',
  'PH',
  'PK',
  'PL',
  'PM',
  'PN',
  'PR',
  'PS',
  'PT',
  'PW',
  'PY',
  'QA',
  'RE',
  'RO',
  'RS',
  'RU',
  'RW',
  'SA',
  'SB',
  'SC',
  'SD',
  'SE',
  'SG',
  'SH',
  'SI',
  'SJ',
  'SK',
  'SL',
  'SM',
  'SN',
  'SO',
  'SR',
  'SS',
  'ST',
  'SV',
  'SX',
  'SY',
  'SZ',
  'TC',
  'TD',
  'TF',
  'TG',
  'TH',
  'TJ',
  'TK',
  'TL',
  'TM',
  'TN',
  'TO',
  'TR',
  'TT',
  'TV',
  'TW',
  'TZ',
  'UA',
  'UG',
  'UM',
  'US',
  'UY',
  'UZ',
  'VA',
  'VC',
  'VE',
  'VG',
  'VI',
  'VN',
  'VU',
  'WF',
  'WS',
  'XK',
  'YE',
  'YT',
  'ZA',
  'ZM',
  'ZW',
];

const List<String> _languageCodes = [
  'af',
  'za',
  'ar-ae',
  'ar-bh',
  'ar-dz',
  'ar-eg',
  'ar-iq',
  'ar-jo',
  'ar-kw',
  'ar-lb',
  'ar-ly',
  'ar-ma',
  'ar-om',
  'ar-qa',
  'ar-sa',
  'ar-sy',
  'ar-tn',
  'ar-ye',
  'az',
  'be',
  'be-by',
  'bg',
  'ca',
  'cs-cz',
  'tr',
  'sk',
  'cy',
  'da-dk',
  'de',
  'de-at',
  'de-ch',
  'de-li',
  'de-lu',
  'dv-mv',
  'el',
  'en-au',
  'en-bz',
  'en',
  'en-ie',
  'en-jm',
  'en-nz',
  'en-ph',
  'en-tt',
  'en-us',
  'en-zw',
  'es',
  'es-ar',
  'es-bo',
  'es-cl',
  'es-co',
  'es-cr',
  'es-do',
  'es-ec',
  'es-gt',
  'es-hn',
  'es-mx',
  'es-ni',
  'es-pa',
  'es-pe',
  'es-pr',
  'es-py',
  'es-sv',
  'es-uy',
  'es-ve',
  'et',
  'et-ee',
  'fa',
  'fi',
  'fo',
  'fr',
  'fr-mc',
  'gl',
  'gu',
  'he',
  'hi',
  'hr',
  'ba',
  'hu',
  'hy',
  'id',
  'is',
  'it',
  'sv',
  'pt',
  'pt-br',
  'lt',
];
