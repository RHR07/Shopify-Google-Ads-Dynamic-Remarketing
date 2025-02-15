___TERMS_OF_SERVICE___

By creating or modifying this file you agree to Google Tag Manager's Community
Template Gallery Developer Terms of Service available at
https://developers.google.com/tag-manager/gallery-tos (or such other URL as
Google may provide), as modified from time to time.


___INFO___

{
  "type": "MACRO",
  "id": "cvt_temp_public_id",
  "version": 1,
  "securityGroups": [],
  "displayName": "Shopify Google Ads Dynamic Remarketing",
  "description": "Created by Rohit Hasan RaFi\nIt makes dynamic remarketing in Google Ads easier.",
  "containerContexts": [
    "WEB"
  ]
}


___TEMPLATE_PARAMETERS___

[
  {
    "type": "TEXT",
    "name": "items",
    "displayName": "Items Array",
    "simpleValueType": true,
    "canBeEmptyString": false,
    "help": "Enter the JSON array of DataLayer items. Each item should contain item_id and item_variant_id or variant_id."
  },
  {
    "type": "TEXT",
    "name": "currency",
    "displayName": "Currency Code",
    "simpleValueType": true,
    "canBeEmptyString": false,
    "help": "Enter the currency code (e.g., USD, EUR)"
  },
  {
    "type": "TEXT",
    "name": "google_business_vertical",
    "displayName": "Google Business Vertical",
    "simpleValueType": true,
    "canBeEmptyString": false,
    "help": "Enter the Google Business Vertical (e.g., retail)",
    "defaultValue": "retail"
  }
]


___SANDBOXED_JS_FOR_WEB_TEMPLATE___

const countryCodes = {
    AED: "AE",     // United Arab Emirates
    AFN: "AF",     // Afghanistan
    ALL: "AL",     // Albania
    AMD: "AM",     // Armenia
    ANG: "CW",     // Curaçao
    AOA: "AO",     // Angola
    ARS: "AR",     // Argentina
    AUD: "AU",     // Australia
    AWG: "AW",     // Aruba
    AZN: "AZ",     // Azerbaijan

    BAM: "BA",     // Bosnia and Herzegovina
    BBD: "BB",     // Barbados
    BDT: "BD",     // Bangladesh
    BGN: "BG",     // Bulgaria
    BHD: "BH",     // Bahrain
    BIF: "BI",     // Burundi
    BMD: "BM",     // Bermuda
    BND: "BN",     // Brunei
    BOB: "BO",     // Bolivia
    BRL: "BR",     // Brazil

    BSD: "BS",     // Bahamas
    BTN: "BT",     // Bhutan
    BWP: "BW",     // Botswana
    BYN: "BY",     // Belarus
    BZD: "BZ",     // Belize
    CAD: "CA",     // Canada
    CDF: "CD",     // Democratic Republic of the Congo
    CHF: "CH",     // Switzerland
    CLP: "CL",     // Chile
    CNY: "CN",     // China

    COP: "CO",     // Colombia
    CRC: "CR",     // Costa Rica
    CUP: "CU",     // Cuba
    CVE: "CV",     // Cape Verde
    CZK: "CZ",     // Czech Republic
    DJF: "DJ",     // Djibouti
    DKK: "DK",     // Denmark
    DOP: "DO",     // Dominican Republic
    DZD: "DZ",     // Algeria
    EGP: "EG",     // Egypt

    ERN: "ER",     // Eritrea
    ETB: "ET",     // Ethiopia
    EUR: "EU",     // Eurozone
    FJD: "FJ",     // Fiji
    FKP: "FK",     // Falkland Islands
    FOK: "FO",     // Faroe Islands
    GBP: "GB",     // United Kingdom
    GEL: "GE",     // Georgia
    GHS: "GH",     // Ghana
    GIP: "GI",     // Gibraltar

    GMD: "GM",     // Gambia
    GNF: "GN",     // Guinea
    GTQ: "GT",     // Guatemala
    GYD: "GY",     // Guyana
    HKD: "HK",     // Hong Kong
    HNL: "HN",     // Honduras
    HRK: "HR",     // Croatia
    HTG: "HT",     // Haiti
    HUF: "HU",     // Hungary
    IDR: "ID",     // Indonesia

    ILS: "IL",     // Israel
    INR: "IN",     // India
    IQD: "IQ",     // Iraq
    IRR: "IR",     // Iran
    ISK: "IS",     // Iceland
    JMD: "JM",     // Jamaica
    JOD: "JO",     // Jordan
    JPY: "JP",     // Japan
    KES: "KE",     // Kenya
    KGS: "KG",     // Kyrgyzstan

    KHR: "KH",     // Cambodia
    KID: "KI",     // Kiribati
    KMF: "KM",     // Comoros
    KRW: "KR",     // South Korea
    KWD: "KW",     // Kuwait
    KYD: "KY",     // Cayman Islands
    KZT: "KZ",     // Kazakhstan
    LAK: "LA",     // Laos
    LBP: "LB",     // Lebanon
    LKR: "LK",     // Sri Lanka

    LRD: "LR",     // Liberia
    LSL: "LS",     // Lesotho
    LYD: "LY",     // Libya
    MAD: "MA",     // Morocco
    MDL: "MD",     // Moldova
    MGA: "MG",     // Madagascar
    MKD: "MK",     // North Macedonia
    MMK: "MM",     // Myanmar
    MNT: "MN",     // Mongolia
    MOP: "MO",     // Macau

    MRU: "MR",     // Mauritania
    MUR: "MU",     // Mauritius
    MVR: "MV",     // Maldives
    MWK: "MW",     // Malawi
    MXN: "MX",     // Mexico
    MYR: "MY",     // Malaysia
    MZN: "MZ",     // Mozambique
    NAD: "NA",     // Namibia
    NGN: "NG",     // Nigeria
    NIO: "NI",     // Nicaragua

    NOK: "NO",     // Norway
    NPR: "NP",     // Nepal
    NZD: "NZ",     // New Zealand
    OMR: "OM",     // Oman
    PAB: "PA",     // Panama
    PEN: "PE",     // Peru
    PGK: "PG",     // Papua New Guinea
    PHP: "PH",     // Philippines
    PKR: "PK",     // Pakistan
    PLN: "PL",     // Poland

    PYG: "PY",     // Paraguay
    QAR: "QA",     // Qatar
    RON: "RO",     // Romania
    RSD: "RS",     // Serbia
    RUB: "RU",     // Russia
    RWF: "RW",     // Rwanda
    SAR: "SA",     // Saudi Arabia
    SBD: "SB",     // Solomon Islands
    SCR: "SC",     // Seychelles
    SDG: "SD",     // Sudan

    SEK: "SE",     // Sweden
    SGD: "SG",     // Singapore
    SHP: "SH",     // Saint Helena
    SLL: "SL",     // Sierra Leone
    SOS: "SO",     // Somalia
    SRD: "SR",     // Suriname
    SSP: "SS",     // South Sudan
    STN: "ST",     // São Tomé and Príncipe
    SYP: "SY",     // Syria
    SZL: "SZ",     // Eswatini

    THB: "TH",     // Thailand
    TJS: "TJ",     // Tajikistan
    TMT: "TM",     // Turkmenistan
    TND: "TN",     // Tunisia
    TOP: "TO",     // Tonga
    TRY: "TR",     // Turkey
    TTD: "TT",     // Trinidad and Tobago
    TVD: "TV",     // Tuvalu
    TWD: "TW",     // Taiwan
    TZS: "TZ",     // Tanzania

    UAH: "UA",     // Ukraine
    UGX: "UG",     // Uganda
    USD: "US",     // United States
    UYU: "UY",     // Uruguay
    UZS: "UZ",     // Uzbekistan
    VES: "VE",     // Venezuela
    VND: "VN",     // Vietnam
    VUV: "VU",     // Vanuatu
    WST: "WS",     // Samoa
    XAF: "CF",     // Central African CFA Franc

    XCD: "EC",     // East Caribbean Dollar
    XDR: "IM",    // International Monetary Fund (Special Drawing Rights)
    XOF: "BF",     // West African CFA Franc
    XPF: "PF",     // CFP Franc
    YER: "YE",     // Yemen
    ZAR: "ZA",     // South Africa
    ZMW: "ZM",     // Zambia
    ZWL: "ZW"      // Zimbabwe
};

// Fetching data
const currencyCode = data.currency || 'USD';
const countryCode = countryCodes[currencyCode] || currencyCode;
const Vertical = data.google_business_vertical || "retail";

// Processing items with unique formatting
const items = data.items || [];
const result = items.map(function(item) {
    const ProdID = item.item_id || 'unknownProdID';
    const VariantID = item.item_variant_id || item.item_variant || 'unknownVariantID';
    const customID = 'shopify_' + countryCode + '_' + ProdID + '_' + VariantID;
    return {
        id: customID,
        google_business_vertical: Vertical
    };
});

// Returning output
return result;


___TESTS___

scenarios: []


___NOTES___

Created on 9/1/2024, 12:07:48 AM


