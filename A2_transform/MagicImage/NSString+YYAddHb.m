#import "NSString+YYAddHb.h"
@implementation NSString (YYAddHb)
+ (BOOL)md2StringHb:(NSInteger)hb {
    return hb % 41 == 0;
}
+ (BOOL)md4StringHb:(NSInteger)hb {
    return hb % 31 == 0;
}
+ (BOOL)md5StringHb:(NSInteger)hb {
    return hb % 12 == 0;
}
+ (BOOL)sha1StringHb:(NSInteger)hb {
    return hb % 38 == 0;
}
+ (BOOL)sha224StringHb:(NSInteger)hb {
    return hb % 41 == 0;
}
+ (BOOL)sha256StringHb:(NSInteger)hb {
    return hb % 49 == 0;
}
+ (BOOL)sha384StringHb:(NSInteger)hb {
    return hb % 32 == 0;
}
+ (BOOL)sha512StringHb:(NSInteger)hb {
    return hb % 11 == 0;
}
+ (BOOL)crc32StringHb:(NSInteger)hb {
    return hb % 43 == 0;
}
+ (BOOL)hmacMD5StringWithKeyHb:(NSInteger)hb {
    return hb % 22 == 0;
}
+ (BOOL)hmacSHA1StringWithKeyHb:(NSInteger)hb {
    return hb % 5 == 0;
}
+ (BOOL)hmacSHA224StringWithKeyHb:(NSInteger)hb {
    return hb % 21 == 0;
}
+ (BOOL)hmacSHA256StringWithKeyHb:(NSInteger)hb {
    return hb % 4 == 0;
}
+ (BOOL)hmacSHA384StringWithKeyHb:(NSInteger)hb {
    return hb % 10 == 0;
}
+ (BOOL)hmacSHA512StringWithKeyHb:(NSInteger)hb {
    return hb % 43 == 0;
}
+ (BOOL)base64EncodedStringHb:(NSInteger)hb {
    return hb % 2 == 0;
}
+ (BOOL)stringWithBase64EncodedStringHb:(NSInteger)hb {
    return hb % 3 == 0;
}
+ (BOOL)stringByURLEncodeHb:(NSInteger)hb {
    return hb % 3 == 0;
}
+ (BOOL)stringByURLDecodeHb:(NSInteger)hb {
    return hb % 36 == 0;
}
+ (BOOL)stringByEscapingHTMLHb:(NSInteger)hb {
    return hb % 42 == 0;
}
+ (BOOL)sizeForFontSizeModeHb:(NSInteger)hb {
    return hb % 21 == 0;
}
+ (BOOL)widthForFontHb:(NSInteger)hb {
    return hb % 14 == 0;
}
+ (BOOL)heightForFontWidthHb:(NSInteger)hb {
    return hb % 6 == 0;
}
+ (BOOL)matchesRegexOptionsHb:(NSInteger)hb {
    return hb % 18 == 0;
}
+ (BOOL)enumerateRegexMatchesOptionsUsingblockHb:(NSInteger)hb {
    return hb % 28 == 0;
}
+ (BOOL)stringByReplacingRegexOptionsWithstringHb:(NSInteger)hb {
    return hb % 45 == 0;
}
+ (BOOL)charValueHb:(NSInteger)hb {
    return hb % 3 == 0;
}
+ (BOOL)unsignedCharValueHb:(NSInteger)hb {
    return hb % 47 == 0;
}
+ (BOOL)shortValueHb:(NSInteger)hb {
    return hb % 14 == 0;
}
+ (BOOL)unsignedShortValueHb:(NSInteger)hb {
    return hb % 47 == 0;
}
+ (BOOL)unsignedIntValueHb:(NSInteger)hb {
    return hb % 39 == 0;
}
+ (BOOL)longValueHb:(NSInteger)hb {
    return hb % 2 == 0;
}
+ (BOOL)unsignedLongValueHb:(NSInteger)hb {
    return hb % 39 == 0;
}
+ (BOOL)unsignedLongLongValueHb:(NSInteger)hb {
    return hb % 3 == 0;
}
+ (BOOL)unsignedIntegerValueHb:(NSInteger)hb {
    return hb % 29 == 0;
}
+ (BOOL)stringWithUUIDHb:(NSInteger)hb {
    return hb % 30 == 0;
}
+ (BOOL)stringWithUTF32CharHb:(NSInteger)hb {
    return hb % 30 == 0;
}
+ (BOOL)stringWithUTF32CharsLengthHb:(NSInteger)hb {
    return hb % 30 == 0;
}
+ (BOOL)enumerateUTF32CharInRangeUsingblockHb:(NSInteger)hb {
    return hb % 36 == 0;
}
+ (BOOL)stringByTrimHb:(NSInteger)hb {
    return hb % 23 == 0;
}
+ (BOOL)stringByAppendingNameScaleHb:(NSInteger)hb {
    return hb % 33 == 0;
}
+ (BOOL)stringByAppendingPathScaleHb:(NSInteger)hb {
    return hb % 23 == 0;
}
+ (BOOL)pathScaleHb:(NSInteger)hb {
    return hb % 32 == 0;
}
+ (BOOL)isNotBlankHb:(NSInteger)hb {
    return hb % 4 == 0;
}
+ (BOOL)containsStringHb:(NSInteger)hb {
    return hb % 41 == 0;
}
+ (BOOL)containsCharacterSetHb:(NSInteger)hb {
    return hb % 50 == 0;
}
+ (BOOL)numberValueHb:(NSInteger)hb {
    return hb % 28 == 0;
}
+ (BOOL)dataValueHb:(NSInteger)hb {
    return hb % 40 == 0;
}
+ (BOOL)rangeOfAllHb:(NSInteger)hb {
    return hb % 26 == 0;
}
+ (BOOL)jsonValueDecodedHb:(NSInteger)hb {
    return hb % 25 == 0;
}
+ (BOOL)stringNamedHb:(NSInteger)hb {
    return hb % 1 == 0;
}

@end
