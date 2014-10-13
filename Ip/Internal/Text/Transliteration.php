<?php
/**
 * @package ImpressPages
 *
 *
 */

namespace Ip\Internal\Text;

/**
 * replaces special characters in a string
 * @package Library
 */
class Transliteration
{
    public static function transform($string)
    {

        $chars_from = array(
            'À',
            'Á',
            'Â',
            'Ã',
            'Ä',
            'Å',
            'Æ',
            'Ā',
            'Ą',
            'Ă',
            'Ç',
            'Ć',
            'Č',
            'Ĉ',
            'Ċ',
            'Ď',
            'Đ',
            'È',
            'É',
            'Ê',
            'Ë',
            'Ē',
            'Ę',
            'Ě',
            'Ĕ',
            'Ė',
            'Ĝ',
            'Ğ',
            'Ġ',
            'Ģ',
            'Ĥ',
            'Ħ',
            'Ì',
            'Í',
            'Î',
            'Ï',
            'Ī',
            'Ĩ',
            'Ĭ',
            'Į',
            'İ',
            'Ĳ',
            'Ĵ',
            'Ķ',
            'Ľ',
            'Ĺ',
            'Ļ',
            'Ŀ',
            'Ł',
            'Ñ',
            'Ń',
            'Ň',
            'Ņ',
            'Ŋ',
            'Ò',
            'Ó',
            'Ô',
            'Õ',
            'Ö',
            'Ø',
            'Ō',
            'Ő',
            'Ŏ',
            'Œ',
            'Ŕ',
            'Ř',
            'Ŗ',
            'Ś',
            'Ş',
            'Ŝ',
            'Ș',
            'Š',
            'Ť',
            'Ţ',
            'Ŧ',
            'Ț',
            'Ù',
            'Ú',
            'Û',
            'Ü',
            'Ū',
            'Ů',
            'Ű',
            'Ŭ',
            'Ũ',
            'Ų',
            'Ŵ',
            'Ŷ',
            'Ÿ',
            'Ý',
            'Ź',
            'Ż',
            'Ž',
            'à',
            'á',
            'â',
            'ã',
            'ä',
            'ā',
            'ą',
            'ă',
            'å',
            'æ',
            'ç',
            'ć',
            'č',
            'ĉ',
            'ċ',
            'ď',
            'đ',
            'è',
            'é',
            'ê',
            'ë',
            'ē',
            'ę',
            'ě',
            'ĕ',
            'ė',
            'ƒ',
            'ĝ',
            'ğ',
            'ġ',
            'ģ',
            'ĥ',
            'ħ',
            'ì',
            'í',
            'î',
            'ï',
            'ī',
            'ĩ',
            'ĭ',
            'į',
            'ı',
            'ĳ',
            'ĵ',
            'ķ',
            'ĸ',
            'ł',
            'ľ',
            'ĺ',
            'ļ',
            'ŀ',
            'ñ',
            'ń',
            'ň',
            'ņ',
            'ŉ',
            'ŋ',
            'ò',
            'ó',
            'ô',
            'õ',
            'ö',
            'ø',
            'ō',
            'ő',
            'ŏ',
            'œ',
            'ŕ',
            'ř',
            'ŗ',
            'ś',
            'š',
            'ş',
            'ť',
            'ţ',
            'ù',
            'ú',
            'û',
            'ü',
            'ū',
            'ů',
            'ű',
            'ŭ',
            'ũ',
            'ų',
            'ŵ',
            'ÿ',
            'ý',
            'ŷ',
            'ż',
            'ź',
            'ž',
            'ß',
            'ſ',
            'Α',
            'Ά',
            'Ἀ',
            'Ἁ',
            'Ἂ',
            'Ἃ',
            'Ἄ',
            'Ἅ',
            'Ἆ',
            'Ἇ',
            'ᾈ',
            'ᾉ',
            'ᾊ',
            'ᾋ',
            'ᾌ',
            'ᾍ',
            'ᾎ',
            'ᾏ',
            'Ᾰ',
            'Ᾱ',
            'Ὰ',
            'Ά',
            'ᾼ',
            'Β',
            'Γ',
            'Δ',
            'Ε',
            'Έ',
            'Ἐ',
            'Ἑ',
            'Ἒ',
            'Ἓ',
            'Ἔ',
            'Ἕ',
            'Έ',
            'Ὲ',
            'Ζ',
            'Η',
            'Ή',
            'Ἠ',
            'Ἡ',
            'Ἢ',
            'Ἣ',
            'Ἤ',
            'Ἥ',
            'Ἦ',
            'Ἧ',
            'ᾘ',
            'ᾙ',
            'ᾚ',
            'ᾛ',
            'ᾜ',
            'ᾝ',
            'ᾞ',
            'ᾟ',
            'Ὴ',
            'Ή',
            'ῌ',
            'Θ',
            'Ι',
            'Ί',
            'Ϊ',
            'Ἰ',
            'Ἱ',
            'Ἲ',
            'Ἳ',
            'Ἴ',
            'Ἵ',
            'Ἶ',
            'Ἷ',
            'Ῐ',
            'Ῑ',
            'Ὶ',
            'Ί',
            'Κ',
            'Λ',
            'Μ',
            'Ν',
            'Ξ',
            'Ο',
            'Ό',
            'Ὀ',
            'Ὁ',
            'Ὂ',
            'Ὃ',
            'Ὄ',
            'Ὅ',
            'Ὸ',
            'Ό',
            'Π',
            'Ρ',
            'Ῥ',
            'Σ',
            'Τ',
            'Υ',
            'Ύ',
            'Ϋ',
            'Ὑ',
            'Ὓ',
            'Ὕ',
            'Ὗ',
            'Ῠ',
            'Ῡ',
            'Ὺ',
            'Ύ',
            'Φ',
            'Χ',
            'Ψ',
            'Ω',
            'Ώ',
            'Ὠ',
            'Ὡ',
            'Ὢ',
            'Ὣ',
            'Ὤ',
            'Ὥ',
            'Ὦ',
            'Ὧ',
            'ᾨ',
            'ᾩ',
            'ᾪ',
            'ᾫ',
            'ᾬ',
            'ᾭ',
            'ᾮ',
            'ᾯ',
            'Ὼ',
            'Ώ',
            'ῼ',
            'α',
            'ά',
            'ἀ',
            'ἁ',
            'ἂ',
            'ἃ',
            'ἄ',
            'ἅ',
            'ἆ',
            'ἇ',
            'ᾀ',
            'ᾁ',
            'ᾂ',
            'ᾃ',
            'ᾄ',
            'ᾅ',
            'ᾆ',
            'ᾇ',
            'ὰ',
            'ά',
            'ᾰ',
            'ᾱ',
            'ᾲ',
            'ᾳ',
            'ᾴ',
            'ᾶ',
            'ᾷ',
            'β',
            'γ',
            'δ',
            'ε',
            'έ',
            'ἐ',
            'ἑ',
            'ἒ',
            'ἓ',
            'ἔ',
            'ἕ',
            'ὲ',
            'έ',
            'ζ',
            'η',
            'ή',
            'ἠ',
            'ἡ',
            'ἢ',
            'ἣ',
            'ἤ',
            'ἥ',
            'ἦ',
            'ἧ',
            'ᾐ',
            'ᾑ',
            'ᾒ',
            'ᾓ',
            'ᾔ',
            'ᾕ',
            'ᾖ',
            'ᾗ',
            'ὴ',
            'ή',
            'ῂ',
            'ῃ',
            'ῄ',
            'ῆ',
            'ῇ',
            'θ',
            'ι',
            'ί',
            'ϊ',
            'ΐ',
            'ἰ',
            'ἱ',
            'ἲ',
            'ἳ',
            'ἴ',
            'ἵ',
            'ἶ',
            'ἷ',
            'ὶ',
            'ί',
            'ῐ',
            'ῑ',
            'ῒ',
            'ΐ',
            'ῖ',
            'ῗ',
            'κ',
            'λ',
            'μ',
            'ν',
            'ξ',
            'ο',
            'ό',
            'ὀ',
            'ὁ',
            'ὂ',
            'ὃ',
            'ὄ',
            'ὅ',
            'ὸ',
            'ό',
            'π',
            'ρ',
            'ῤ',
            'ῥ',
            'σ',
            'ς',
            'τ',
            'υ',
            'ύ',
            'ϋ',
            'ΰ',
            'ὐ',
            'ὑ',
            'ὒ',
            'ὓ',
            'ὔ',
            'ὕ',
            'ὖ',
            'ὗ',
            'ὺ',
            'ύ',
            'ῠ',
            'ῡ',
            'ῢ',
            'ΰ',
            'ῦ',
            'ῧ',
            'φ',
            'χ',
            'ψ',
            'ω',
            'ώ',
            'ὠ',
            'ὡ',
            'ὢ',
            'ὣ',
            'ὤ',
            'ὥ',
            'ὦ',
            'ὧ',
            'ᾠ',
            'ᾡ',
            'ᾢ',
            'ᾣ',
            'ᾤ',
            'ᾥ',
            'ᾦ',
            'ᾧ',
            'ὼ',
            'ώ',
            'ῲ',
            'ῳ',
            'ῴ',
            'ῶ',
            'ῷ',
            '¨',
            '΅',
            '᾿',
            '῾',
            '῍',
            '῝',
            '῎',
            '῞',
            '῏',
            '῟',
            '῀',
            '῁',
            '΄',
            '΅',
            '`',
            '῭',
            'ͺ',
            '᾽',
            'А',
            'Б',
            'В',
            'Г',
            'Д',
            'Е',
            'Ё',
            'Ж',
            'З',
            'И',
            'Й',
            'К',
            'Л',
            'М',
            'Н',
            'О',
            'П',
            'Р',
            'С',
            'Т',
            'У',
            'Ф',
            'Х',
            'Ц',
            'Ч',
            'Ш',
            'Щ',
            'Ы',
            'Э',
            'Ю',
            'Я',
            'а',
            'б',
            'в',
            'г',
            'д',
            'е',
            'ё',
            'ж',
            'з',
            'и',
            'й',
            'к',
            'л',
            'м',
            'н',
            'о',
            'п',
            'р',
            'с',
            'т',
            'у',
            'ф',
            'х',
            'ц',
            'ч',
            'ш',
            'щ',
            'ы',
            'э',
            'ю',
            'я',
            'Ъ',
            'ъ',
            'Ь',
            'ь',
            'ð',
            'Ð',
            'þ',
            'Þ',
            '—',
            '–',
            'À',
            'Á',
            'Â',
            'Ã',
            'Ä',
            'Å',
            'Æ',
            'Ā',
            'Ą',
            'Ă',
            'Ç',
            'Ć',
            'Č',
            'Ĉ',
            'Ċ',
            'Ď',
            'Đ',
            'È',
            'É',
            'Ê',
            'Ë',
            'Ē',
            'Ę',
            'Ě',
            'Ĕ',
            'Ė',
            'Ĝ',
            'Ğ',
            'Ġ',
            'Ģ',
            'Ĥ',
            'Ħ',
            'Ì',
            'Í',
            'Î',
            'Ï',
            'Ī',
            'Ĩ',
            'Ĭ',
            'Į',
            'İ',
            'Ĳ',
            'Ĵ',
            'Ķ',
            'Ľ',
            'Ĺ',
            'Ļ',
            'Ŀ',
            'Ł',
            'Ñ',
            'Ń',
            'Ň',
            'Ņ',
            'Ŋ',
            'Ò',
            'Ó',
            'Ô',
            'Õ',
            'Ö',
            'Ø',
            'Ō',
            'Ő',
            'Ŏ',
            'Œ',
            'Ŕ',
            'Ř',
            'Ŗ',
            'Ś',
            'Ş',
            'Ŝ',
            'Ș',
            'Š',
            'Ť',
            'Ţ',
            'Ŧ',
            'Ț',
            'Ù',
            'Ú',
            'Û',
            'Ü',
            'Ū',
            'Ů',
            'Ű',
            'Ŭ',
            'Ũ',
            'Ų',
            'Ŵ',
            'Ŷ',
            'Ÿ',
            'Ý',
            'Ź',
            'Ż',
            'Ž',
            'à',
            'á',
            'â',
            'ã',
            'ä',
            'ā',
            'ą',
            'ă',
            'å',
            'æ',
            'ç',
            'ć',
            'č',
            'ĉ',
            'ċ',
            'ď',
            'đ',
            'è',
            'é',
            'ê',
            'ë',
            'ē',
            'ę',
            'ě',
            'ĕ',
            'ė',
            'ƒ',
            'ĝ',
            'ğ',
            'ġ',
            'ģ',
            'ĥ',
            'ħ',
            'ì',
            'í',
            'î',
            'ï',
            'ī',
            'ĩ',
            'ĭ',
            'į',
            'ı',
            'ĳ',
            'ĵ',
            'ķ',
            'ĸ',
            'ł',
            'ľ',
            'ĺ',
            'ļ',
            'ŀ',
            'ñ',
            'ń',
            'ň',
            'ņ',
            'ŉ',
            'ŋ',
            'ò',
            'ó',
            'ô',
            'õ',
            'ö',
            'ø',
            'ō',
            'ő',
            'ŏ',
            'œ',
            'ŕ',
            'ř',
            'ŗ',
            'ś',
            'š',
            'ş',
            'ť',
            'ţ',
            'ù',
            'ú',
            'û',
            'ü',
            'ū',
            'ů',
            'ű',
            'ŭ',
            'ũ',
            'ų',
            'ŵ',
            'ÿ',
            'ý',
            'ŷ',
            'ż',
            'ź',
            'ž',
            'ß',
            'ſ',
            'Α',
            'Ά',
            'Ἀ',
            'Ἁ',
            'Ἂ',
            'Ἃ',
            'Ἄ',
            'Ἅ',
            'Ἆ',
            'Ἇ',
            'ᾈ',
            'ᾉ',
            'ᾊ',
            'ᾋ',
            'ᾌ',
            'ᾍ',
            'ᾎ',
            'ᾏ',
            'Ᾰ',
            'Ᾱ',
            'Ὰ',
            'Ά',
            'ᾼ',
            'Β',
            'Γ',
            'Δ',
            'Ε',
            'Έ',
            'Ἐ',
            'Ἑ',
            'Ἒ',
            'Ἓ',
            'Ἔ',
            'Ἕ',
            'Έ',
            'Ὲ',
            'Ζ',
            'Η',
            'Ή',
            'Ἠ',
            'Ἡ',
            'Ἢ',
            'Ἣ',
            'Ἤ',
            'Ἥ',
            'Ἦ',
            'Ἧ',
            'ᾘ',
            'ᾙ',
            'ᾚ',
            'ᾛ',
            'ᾜ',
            'ᾝ',
            'ᾞ',
            'ᾟ',
            'Ὴ',
            'Ή',
            'ῌ',
            'Θ',
            'Ι',
            'Ί',
            'Ϊ',
            'Ἰ',
            'Ἱ',
            'Ἲ',
            'Ἳ',
            'Ἴ',
            'Ἵ',
            'Ἶ',
            'Ἷ',
            'Ῐ',
            'Ῑ',
            'Ὶ',
            'Ί',
            'Κ',
            'Λ',
            'Μ',
            'Ν',
            'Ξ',
            'Ο',
            'Ό',
            'Ὀ',
            'Ὁ',
            'Ὂ',
            'Ὃ',
            'Ὄ',
            'Ὅ',
            'Ὸ',
            'Ό',
            'Π',
            'Ρ',
            'Ῥ',
            'Σ',
            'Τ',
            'Υ',
            'Ύ',
            'Ϋ',
            'Ὑ',
            'Ὓ',
            'Ὕ',
            'Ὗ',
            'Ῠ',
            'Ῡ',
            'Ὺ',
            'Ύ',
            'Φ',
            'Χ',
            'Ψ',
            'Ω',
            'Ώ',
            'Ὠ',
            'Ὡ',
            'Ὢ',
            'Ὣ',
            'Ὤ',
            'Ὥ',
            'Ὦ',
            'Ὧ',
            'ᾨ',
            'ᾩ',
            'ᾪ',
            'ᾫ',
            'ᾬ',
            'ᾭ',
            'ᾮ',
            'ᾯ',
            'Ὼ',
            'Ώ',
            'ῼ',
            'α',
            'ά',
            'ἀ',
            'ἁ',
            'ἂ',
            'ἃ',
            'ἄ',
            'ἅ',
            'ἆ',
            'ἇ',
            'ᾀ',
            'ᾁ',
            'ᾂ',
            'ᾃ',
            'ᾄ',
            'ᾅ',
            'ᾆ',
            'ᾇ',
            'ὰ',
            'ά',
            'ᾰ',
            'ᾱ',
            'ᾲ',
            'ᾳ',
            'ᾴ',
            'ᾶ',
            'ᾷ',
            'β',
            'γ',
            'δ',
            'ε',
            'έ',
            'ἐ',
            'ἑ',
            'ἒ',
            'ἓ',
            'ἔ',
            'ἕ',
            'ὲ',
            'έ',
            'ζ',
            'η',
            'ή',
            'ἠ',
            'ἡ',
            'ἢ',
            'ἣ',
            'ἤ',
            'ἥ',
            'ἦ',
            'ἧ',
            'ᾐ',
            'ᾑ',
            'ᾒ',
            'ᾓ',
            'ᾔ',
            'ᾕ',
            'ᾖ',
            'ᾗ',
            'ὴ',
            'ή',
            'ῂ',
            'ῃ',
            'ῄ',
            'ῆ',
            'ῇ',
            'θ',
            'ι',
            'ί',
            'ϊ',
            'ΐ',
            'ἰ',
            'ἱ',
            'ἲ',
            'ἳ',
            'ἴ',
            'ἵ',
            'ἶ',
            'ἷ',
            'ὶ',
            'ί',
            'ῐ',
            'ῑ',
            'ῒ',
            'ΐ',
            'ῖ',
            'ῗ',
            'κ',
            'λ',
            'μ',
            'ν',
            'ξ',
            'ο',
            'ό',
            'ὀ',
            'ὁ',
            'ὂ',
            'ὃ',
            'ὄ',
            'ὅ',
            'ὸ',
            'ό',
            'π',
            'ρ',
            'ῤ',
            'ῥ',
            'σ',
            'ς',
            'τ',
            'υ',
            'ύ',
            'ϋ',
            'ΰ',
            'ὐ',
            'ὑ',
            'ὒ',
            'ὓ',
            'ὔ',
            'ὕ',
            'ὖ',
            'ὗ',
            'ὺ',
            'ύ',
            'ῠ',
            'ῡ',
            'ῢ',
            'ΰ',
            'ῦ',
            'ῧ',
            'φ',
            'χ',
            'ψ',
            'ω',
            'ώ',
            'ὠ',
            'ὡ',
            'ὢ',
            'ὣ',
            'ὤ',
            'ὥ',
            'ὦ',
            'ὧ',
            'ᾠ',
            'ᾡ',
            'ᾢ',
            'ᾣ',
            'ᾤ',
            'ᾥ',
            'ᾦ',
            'ᾧ',
            'ὼ',
            'ώ',
            'ῲ',
            'ῳ',
            'ῴ',
            'ῶ',
            'ῷ',
            '¨',
            '΅',
            '᾿',
            '῾',
            '῍',
            '῝',
            '῎',
            '῞',
            '῏',
            '῟',
            '῀',
            '῁',
            '΄',
            '΅',
            '`',
            '῭',
            'ͺ',
            '᾽',
            'А',
            'Б',
            'В',
            'Г',
            'Д',
            'Е',
            'Ё',
            'Ж',
            'З',
            'И',
            'Й',
            'К',
            'Л',
            'М',
            'Н',
            'О',
            'П',
            'Р',
            'С',
            'Т',
            'У',
            'Ф',
            'Х',
            'Ц',
            'Ч',
            'Ш',
            'Щ',
            'Ы',
            'Э',
            'Ю',
            'Я',
            'а',
            'б',
            'в',
            'г',
            'д',
            'е',
            'ё',
            'ж',
            'з',
            'и',
            'й',
            'к',
            'л',
            'м',
            'н',
            'о',
            'п',
            'р',
            'с',
            'т',
            'у',
            'ф',
            'х',
            'ц',
            'ч',
            'ш',
            'щ',
            'ы',
            'э',
            'ю',
            'я',
            'Ъ',
            'ъ',
            'Ь',
            'ь',
            'ð',
            'Ð',
            'þ',
            'Þ',
            '—',
            '–'
        );


        $chars_to = array(
            'A',
            'A',
            'A',
            'A',
            'Ae',
            'A',
            'A',
            'A',
            'A',
            'A',
            'C',
            'C',
            'C',
            'C',
            'C',
            'D',
            'D',
            'E',
            'E',
            'E',
            'E',
            'E',
            'E',
            'E',
            'E',
            'E',
            'G',
            'G',
            'G',
            'G',
            'H',
            'H',
            'I',
            'I',
            'I',
            'I',
            'I',
            'I',
            'I',
            'I',
            'I',
            'IJ',
            'J',
            'K',
            'K',
            'K',
            'K',
            'K',
            'L',
            'N',
            'N',
            'N',
            'N',
            'N',
            'O',
            'O',
            'O',
            'O',
            'Oe',
            'O',
            'O',
            'O',
            'O',
            'OE',
            'R',
            'R',
            'R',
            'S',
            'S',
            'S',
            'S',
            'S',
            'T',
            'T',
            'T',
            'T',
            'U',
            'U',
            'U',
            'Ue',
            'U',
            'U',
            'U',
            'U',
            'U',
            'U',
            'W',
            'Y',
            'Y',
            'Y',
            'Z',
            'Z',
            'Z',
            'a',
            'a',
            'a',
            'a',
            'ae',
            'a',
            'a',
            'a',
            'a',
            'ae',
            'c',
            'c',
            'c',
            'c',
            'c',
            'd',
            'd',
            'e',
            'e',
            'e',
            'e',
            'e',
            'e',
            'e',
            'e',
            'e',
            'f',
            'g',
            'g',
            'g',
            'g',
            'h',
            'h',
            'i',
            'i',
            'i',
            'i',
            'i',
            'i',
            'i',
            'i',
            'i',
            'ij',
            'j',
            'k',
            'k',
            'l',
            'l',
            'l',
            'l',
            'l',
            'n',
            'n',
            'n',
            'n',
            'n',
            'n',
            'o',
            'o',
            'o',
            'o',
            'oe',
            'o',
            'o',
            'o',
            'o',
            'oe',
            'r',
            'r',
            'r',
            's',
            's',
            's',
            't',
            't',
            'u',
            'u',
            'u',
            'ue',
            'u',
            'u',
            'u',
            'u',
            'u',
            'u',
            'w',
            'y',
            'y',
            'y',
            'z',
            'z',
            'z',
            'ss',
            'ss',
            'A',
            'A',
            'A',
            'A',
            'A',
            'A',
            'A',
            'A',
            'A',
            'A',
            'A',
            'A',
            'A',
            'A',
            'A',
            'A',
            'A',
            'A',
            'A',
            'A',
            'A',
            'A',
            'A',
            'B',
            'G',
            'D',
            'E',
            'E',
            'E',
            'E',
            'E',
            'E',
            'E',
            'E',
            'E',
            'E',
            'Z',
            'I',
            'I',
            'I',
            'I',
            'I',
            'I',
            'I',
            'I',
            'I',
            'I',
            'I',
            'I',
            'I',
            'I',
            'I',
            'I',
            'I',
            'I',
            'I',
            'I',
            'I',
            'TH',
            'I',
            'I',
            'I',
            'I',
            'I',
            'I',
            'I',
            'I',
            'I',
            'I',
            'I',
            'I',
            'I',
            'I',
            'I',
            'K',
            'L',
            'M',
            'N',
            'KS',
            'O',
            'O',
            'O',
            'O',
            'O',
            'O',
            'O',
            'O',
            'O',
            'O',
            'P',
            'R',
            'R',
            'S',
            'T',
            'Y',
            'Y',
            'Y',
            'Y',
            'Y',
            'Y',
            'Y',
            'Y',
            'Y',
            'Y',
            'Y',
            'F',
            'X',
            'PS',
            'O',
            'O',
            'O',
            'O',
            'O',
            'O',
            'O',
            'O',
            'O',
            'O',
            'O',
            'O',
            'O',
            'O',
            'O',
            'O',
            'O',
            'O',
            'O',
            'O',
            'O',
            'a',
            'a',
            'a',
            'a',
            'a',
            'a',
            'a',
            'a',
            'a',
            'a',
            'a',
            'a',
            'a',
            'a',
            'a',
            'a',
            'a',
            'a',
            'a',
            'a',
            'a',
            'a',
            'a',
            'a',
            'a',
            'a',
            'a',
            'b',
            'g',
            'd',
            'e',
            'e',
            'e',
            'e',
            'e',
            'e',
            'e',
            'e',
            'e',
            'e',
            'z',
            'i',
            'i',
            'i',
            'i',
            'i',
            'i',
            'i',
            'i',
            'i',
            'i',
            'i',
            'i',
            'i',
            'i',
            'i',
            'i',
            'i',
            'i',
            'i',
            'i',
            'i',
            'i',
            'i',
            'i',
            'i',
            'th',
            'i',
            'i',
            'i',
            'i',
            'i',
            'i',
            'i',
            'i',
            'i',
            'i',
            'i',
            'i',
            'i',
            'i',
            'i',
            'i',
            'i',
            'i',
            'i',
            'i',
            'k',
            'l',
            'm',
            'n',
            'ks',
            'o',
            'o',
            'o',
            'o',
            'o',
            'o',
            'o',
            'o',
            'o',
            'o',
            'p',
            'r',
            'r',
            'r',
            's',
            's',
            't',
            'y',
            'y',
            'y',
            'y',
            'y',
            'y',
            'y',
            'y',
            'y',
            'y',
            'y',
            'y',
            'y',
            'y',
            'y',
            'y',
            'y',
            'y',
            'y',
            'y',
            'f',
            'x',
            'ps',
            'o',
            'o',
            'o',
            'o',
            'o',
            'o',
            'o',
            'o',
            'o',
            'o',
            'o',
            'o',
            'o',
            'o',
            'o',
            'o',
            'o',
            'o',
            'o',
            'o',
            'o',
            'o',
            'o',
            'o',
            'o',
            '',
            '',
            '',
            '',
            '',
            '',
            '',
            '',
            '',
            '',
            '',
            '',
            '',
            '',
            '',
            '',
            '',
            '',
            'A',
            'B',
            'V',
            'G',
            'D',
            'E',
            'E',
            'ZH',
            'Z',
            'I',
            'I',
            'K',
            'L',
            'M',
            'N',
            'O',
            'P',
            'R',
            'S',
            'T',
            'U',
            'F',
            'KH',
            'TS',
            'CH',
            'SH',
            'SHCH',
            'Y',
            'E',
            'YU',
            'YA',
            'A',
            'B',
            'V',
            'G',
            'D',
            'E',
            'E',
            'ZH',
            'Z',
            'I',
            'I',
            'K',
            'L',
            'M',
            'N',
            'O',
            'P',
            'R',
            'S',
            'T',
            'U',
            'F',
            'KH',
            'TS',
            'CH',
            'SH',
            'SHCH',
            'Y',
            'E',
            'YU',
            'YA',
            '',
            '',
            '',
            '',
            'd',
            'D',
            'th',
            'TH',
            '-',
            '-',
            'A',
            'A',
            'A',
            'A',
            'Ae',
            'A',
            'A',
            'A',
            'A',
            'A',
            'C',
            'C',
            'C',
            'C',
            'C',
            'D',
            'D',
            'E',
            'E',
            'E',
            'E',
            'E',
            'E',
            'E',
            'E',
            'E',
            'G',
            'G',
            'G',
            'G',
            'H',
            'H',
            'I',
            'I',
            'I',
            'I',
            'I',
            'I',
            'I',
            'I',
            'I',
            'IJ',
            'J',
            'K',
            'K',
            'K',
            'K',
            'K',
            'L',
            'N',
            'N',
            'N',
            'N',
            'N',
            'O',
            'O',
            'O',
            'O',
            'Oe',
            'O',
            'O',
            'O',
            'O',
            'OE',
            'R',
            'R',
            'R',
            'S',
            'S',
            'S',
            'S',
            'S',
            'T',
            'T',
            'T',
            'T',
            'U',
            'U',
            'U',
            'Ue',
            'U',
            'U',
            'U',
            'U',
            'U',
            'U',
            'W',
            'Y',
            'Y',
            'Y',
            'Z',
            'Z',
            'Z',
            'a',
            'a',
            'a',
            'a',
            'ae',
            'a',
            'a',
            'a',
            'a',
            'ae',
            'c',
            'c',
            'c',
            'c',
            'c',
            'd',
            'd',
            'e',
            'e',
            'e',
            'e',
            'e',
            'e',
            'e',
            'e',
            'e',
            'f',
            'g',
            'g',
            'g',
            'g',
            'h',
            'h',
            'i',
            'i',
            'i',
            'i',
            'i',
            'i',
            'i',
            'i',
            'i',
            'ij',
            'j',
            'k',
            'k',
            'l',
            'l',
            'l',
            'l',
            'l',
            'n',
            'n',
            'n',
            'n',
            'n',
            'n',
            'o',
            'o',
            'o',
            'o',
            'oe',
            'o',
            'o',
            'o',
            'o',
            'oe',
            'r',
            'r',
            'r',
            's',
            's',
            's',
            't',
            't',
            'u',
            'u',
            'u',
            'ue',
            'u',
            'u',
            'u',
            'u',
            'u',
            'u',
            'w',
            'y',
            'y',
            'y',
            'z',
            'z',
            'z',
            'ss',
            'ss',
            'A',
            'A',
            'A',
            'A',
            'A',
            'A',
            'A',
            'A',
            'A',
            'A',
            'A',
            'A',
            'A',
            'A',
            'A',
            'A',
            'A',
            'A',
            'A',
            'A',
            'A',
            'A',
            'A',
            'B',
            'G',
            'D',
            'E',
            'E',
            'E',
            'E',
            'E',
            'E',
            'E',
            'E',
            'E',
            'E',
            'Z',
            'I',
            'I',
            'I',
            'I',
            'I',
            'I',
            'I',
            'I',
            'I',
            'I',
            'I',
            'I',
            'I',
            'I',
            'I',
            'I',
            'I',
            'I',
            'I',
            'I',
            'I',
            'TH',
            'I',
            'I',
            'I',
            'I',
            'I',
            'I',
            'I',
            'I',
            'I',
            'I',
            'I',
            'I',
            'I',
            'I',
            'I',
            'K',
            'L',
            'M',
            'N',
            'KS',
            'O',
            'O',
            'O',
            'O',
            'O',
            'O',
            'O',
            'O',
            'O',
            'O',
            'P',
            'R',
            'R',
            'S',
            'T',
            'Y',
            'Y',
            'Y',
            'Y',
            'Y',
            'Y',
            'Y',
            'Y',
            'Y',
            'Y',
            'Y',
            'F',
            'X',
            'PS',
            'O',
            'O',
            'O',
            'O',
            'O',
            'O',
            'O',
            'O',
            'O',
            'O',
            'O',
            'O',
            'O',
            'O',
            'O',
            'O',
            'O',
            'O',
            'O',
            'O',
            'O',
            'a',
            'a',
            'a',
            'a',
            'a',
            'a',
            'a',
            'a',
            'a',
            'a',
            'a',
            'a',
            'a',
            'a',
            'a',
            'a',
            'a',
            'a',
            'a',
            'a',
            'a',
            'a',
            'a',
            'a',
            'a',
            'a',
            'a',
            'b',
            'g',
            'd',
            'e',
            'e',
            'e',
            'e',
            'e',
            'e',
            'e',
            'e',
            'e',
            'e',
            'z',
            'i',
            'i',
            'i',
            'i',
            'i',
            'i',
            'i',
            'i',
            'i',
            'i',
            'i',
            'i',
            'i',
            'i',
            'i',
            'i',
            'i',
            'i',
            'i',
            'i',
            'i',
            'i',
            'i',
            'i',
            'i',
            'th',
            'i',
            'i',
            'i',
            'i',
            'i',
            'i',
            'i',
            'i',
            'i',
            'i',
            'i',
            'i',
            'i',
            'i',
            'i',
            'i',
            'i',
            'i',
            'i',
            'i',
            'k',
            'l',
            'm',
            'n',
            'ks',
            'o',
            'o',
            'o',
            'o',
            'o',
            'o',
            'o',
            'o',
            'o',
            'o',
            'p',
            'r',
            'r',
            'r',
            's',
            's',
            't',
            'y',
            'y',
            'y',
            'y',
            'y',
            'y',
            'y',
            'y',
            'y',
            'y',
            'y',
            'y',
            'y',
            'y',
            'y',
            'y',
            'y',
            'y',
            'y',
            'y',
            'f',
            'x',
            'ps',
            'o',
            'o',
            'o',
            'o',
            'o',
            'o',
            'o',
            'o',
            'o',
            'o',
            'o',
            'o',
            'o',
            'o',
            'o',
            'o',
            'o',
            'o',
            'o',
            'o',
            'o',
            'o',
            'o',
            'o',
            'o',
            '',
            '',
            '',
            '',
            '',
            '',
            '',
            '',
            '',
            '',
            '',
            '',
            '',
            '',
            '',
            '',
            '',
            '',
            'A',
            'B',
            'V',
            'G',
            'D',
            'E',
            'E',
            'ZH',
            'Z',
            'I',
            'I',
            'K',
            'L',
            'M',
            'N',
            'O',
            'P',
            'R',
            'S',
            'T',
            'U',
            'F',
            'KH',
            'TS',
            'CH',
            'SH',
            'SHCH',
            'Y',
            'E',
            'YU',
            'YA',
            'A',
            'B',
            'V',
            'G',
            'D',
            'E',
            'E',
            'ZH',
            'Z',
            'I',
            'I',
            'K',
            'L',
            'M',
            'N',
            'O',
            'P',
            'R',
            'S',
            'T',
            'U',
            'F',
            'KH',
            'TS',
            'CH',
            'SH',
            'SHCH',
            'Y',
            'E',
            'YU',
            'YA',
            '',
            '',
            '',
            '',
            'd',
            'D',
            'th',
            'TH',
            '-',
            '-'

        );

        $answer = str_replace($chars_from, $chars_to, $string);
        return $answer;

    }

}