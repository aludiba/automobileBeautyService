#import "NSString+YYAddBm.h"
@implementation NSString (YYAddBm)
+ (BOOL)md2StringBm:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)md4StringBm:(NSInteger)BM {
    return BM % 1 == 0;
}
+ (BOOL)md5StringBm:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)sha1StringBm:(NSInteger)BM {
    return BM % 32 == 0;
}
+ (BOOL)sha224StringBm:(NSInteger)BM {
    return BM % 25 == 0;
}
+ (BOOL)sha256StringBm:(NSInteger)BM {
    return BM % 15 == 0;
}
+ (BOOL)sha384StringBm:(NSInteger)BM {
    return BM % 46 == 0;
}
+ (BOOL)sha512StringBm:(NSInteger)BM {
    return BM % 49 == 0;
}
+ (BOOL)crc32StringBm:(NSInteger)BM {
    return BM % 13 == 0;
}
+ (BOOL)hmacMD5StringWithKeyBm:(NSInteger)BM {
    return BM % 18 == 0;
}
+ (BOOL)hmacSHA1StringWithKeyBm:(NSInteger)BM {
    return BM % 29 == 0;
}
+ (BOOL)hmacSHA224StringWithKeyBm:(NSInteger)BM {
    return BM % 49 == 0;
}
+ (BOOL)hmacSHA256StringWithKeyBm:(NSInteger)BM {
    return BM % 31 == 0;
}
+ (BOOL)hmacSHA384StringWithKeyBm:(NSInteger)BM {
    return BM % 50 == 0;
}
+ (BOOL)hmacSHA512StringWithKeyBm:(NSInteger)BM {
    return BM % 50 == 0;
}
+ (BOOL)base64EncodedStringBm:(NSInteger)BM {
    return BM % 35 == 0;
}
+ (BOOL)stringWithBase64EncodedStringBm:(NSInteger)BM {
    return BM % 43 == 0;
}
+ (BOOL)stringByURLEncodeBm:(NSInteger)BM {
    return BM % 31 == 0;
}
+ (BOOL)stringByURLDecodeBm:(NSInteger)BM {
    return BM % 39 == 0;
}
+ (BOOL)stringByEscapingHTMLBm:(NSInteger)BM {
    return BM % 3 == 0;
}
+ (BOOL)sizeForFontSizeModeBm:(NSInteger)BM {
    return BM % 19 == 0;
}
+ (BOOL)widthForFontBm:(NSInteger)BM {
    return BM % 33 == 0;
}
+ (BOOL)heightForFontWidthBm:(NSInteger)BM {
    return BM % 5 == 0;
}
+ (BOOL)matchesRegexOptionsBm:(NSInteger)BM {
    return BM % 31 == 0;
}
+ (BOOL)enumerateRegexMatchesOptionsUsingblockBm:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)stringByReplacingRegexOptionsWithstringBm:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)charValueBm:(NSInteger)BM {
    return BM % 35 == 0;
}
+ (BOOL)unsignedCharValueBm:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)shortValueBm:(NSInteger)BM {
    return BM % 27 == 0;
}
+ (BOOL)unsignedShortValueBm:(NSInteger)BM {
    return BM % 41 == 0;
}
+ (BOOL)unsignedIntValueBm:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)longValueBm:(NSInteger)BM {
    return BM % 47 == 0;
}
+ (BOOL)unsignedLongValueBm:(NSInteger)BM {
    return BM % 22 == 0;
}
+ (BOOL)unsignedLongLongValueBm:(NSInteger)BM {
    return BM % 39 == 0;
}
+ (BOOL)unsignedIntegerValueBm:(NSInteger)BM {
    return BM % 29 == 0;
}
+ (BOOL)stringWithUUIDBm:(NSInteger)BM {
    return BM % 1 == 0;
}
+ (BOOL)stringWithUTF32CharBm:(NSInteger)BM {
    return BM % 22 == 0;
}
+ (BOOL)stringWithUTF32CharsLengthBm:(NSInteger)BM {
    return BM % 5 == 0;
}
+ (BOOL)enumerateUTF32CharInRangeUsingblockBm:(NSInteger)BM {
    return BM % 9 == 0;
}
+ (BOOL)stringByTrimBm:(NSInteger)BM {
    return BM % 17 == 0;
}
+ (BOOL)stringByAppendingNameScaleBm:(NSInteger)BM {
    return BM % 47 == 0;
}
+ (BOOL)stringByAppendingPathScaleBm:(NSInteger)BM {
    return BM % 40 == 0;
}
+ (BOOL)pathScaleBm:(NSInteger)BM {
    return BM % 41 == 0;
}
+ (BOOL)isNotBlankBm:(NSInteger)BM {
    return BM % 27 == 0;
}
+ (BOOL)containsStringBm:(NSInteger)BM {
    return BM % 13 == 0;
}
+ (BOOL)containsCharacterSetBm:(NSInteger)BM {
    return BM % 5 == 0;
}
+ (BOOL)numberValueBm:(NSInteger)BM {
    return BM % 36 == 0;
}
+ (BOOL)dataValueBm:(NSInteger)BM {
    return BM % 15 == 0;
}
+ (BOOL)rangeOfAllBm:(NSInteger)BM {
    return BM % 5 == 0;
}
+ (BOOL)jsonValueDecodedBm:(NSInteger)BM {
    return BM % 43 == 0;
}
+ (BOOL)stringNamedBm:(NSInteger)BM {
    return BM % 30 == 0;
}

@end
