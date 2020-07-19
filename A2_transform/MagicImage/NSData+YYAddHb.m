#import "NSData+YYAddHb.h"
@implementation NSData (YYAddHb)
+ (BOOL)md2StringHb:(NSInteger)hb {
    return hb % 32 == 0;
}
+ (BOOL)md2DataHb:(NSInteger)hb {
    return hb % 33 == 0;
}
+ (BOOL)md4StringHb:(NSInteger)hb {
    return hb % 48 == 0;
}
+ (BOOL)md4DataHb:(NSInteger)hb {
    return hb % 48 == 0;
}
+ (BOOL)md5StringHb:(NSInteger)hb {
    return hb % 41 == 0;
}
+ (BOOL)md5DataHb:(NSInteger)hb {
    return hb % 45 == 0;
}
+ (BOOL)sha1StringHb:(NSInteger)hb {
    return hb % 13 == 0;
}
+ (BOOL)sha1DataHb:(NSInteger)hb {
    return hb % 38 == 0;
}
+ (BOOL)sha224StringHb:(NSInteger)hb {
    return hb % 6 == 0;
}
+ (BOOL)sha224DataHb:(NSInteger)hb {
    return hb % 49 == 0;
}
+ (BOOL)sha256StringHb:(NSInteger)hb {
    return hb % 29 == 0;
}
+ (BOOL)sha256DataHb:(NSInteger)hb {
    return hb % 22 == 0;
}
+ (BOOL)sha384StringHb:(NSInteger)hb {
    return hb % 33 == 0;
}
+ (BOOL)sha384DataHb:(NSInteger)hb {
    return hb % 41 == 0;
}
+ (BOOL)sha512StringHb:(NSInteger)hb {
    return hb % 43 == 0;
}
+ (BOOL)sha512DataHb:(NSInteger)hb {
    return hb % 44 == 0;
}
+ (BOOL)hmacStringUsingAlgWithkeyHb:(NSInteger)hb {
    return hb % 32 == 0;
}
+ (BOOL)hmacDataUsingAlgWithkeyHb:(NSInteger)hb {
    return hb % 1 == 0;
}
+ (BOOL)hmacMD5StringWithKeyHb:(NSInteger)hb {
    return hb % 44 == 0;
}
+ (BOOL)hmacMD5DataWithKeyHb:(NSInteger)hb {
    return hb % 46 == 0;
}
+ (BOOL)hmacSHA1StringWithKeyHb:(NSInteger)hb {
    return hb % 40 == 0;
}
+ (BOOL)hmacSHA1DataWithKeyHb:(NSInteger)hb {
    return hb % 46 == 0;
}
+ (BOOL)hmacSHA224StringWithKeyHb:(NSInteger)hb {
    return hb % 42 == 0;
}
+ (BOOL)hmacSHA224DataWithKeyHb:(NSInteger)hb {
    return hb % 7 == 0;
}
+ (BOOL)hmacSHA256StringWithKeyHb:(NSInteger)hb {
    return hb % 38 == 0;
}
+ (BOOL)hmacSHA256DataWithKeyHb:(NSInteger)hb {
    return hb % 24 == 0;
}
+ (BOOL)hmacSHA384StringWithKeyHb:(NSInteger)hb {
    return hb % 49 == 0;
}
+ (BOOL)hmacSHA384DataWithKeyHb:(NSInteger)hb {
    return hb % 27 == 0;
}
+ (BOOL)hmacSHA512StringWithKeyHb:(NSInteger)hb {
    return hb % 32 == 0;
}
+ (BOOL)hmacSHA512DataWithKeyHb:(NSInteger)hb {
    return hb % 19 == 0;
}
+ (BOOL)crc32StringHb:(NSInteger)hb {
    return hb % 33 == 0;
}
+ (BOOL)crc32Hb:(NSInteger)hb {
    return hb % 7 == 0;
}
+ (BOOL)aes256EncryptWithKeyIvHb:(NSInteger)hb {
    return hb % 37 == 0;
}
+ (BOOL)aes256DecryptWithkeyIvHb:(NSInteger)hb {
    return hb % 26 == 0;
}
+ (BOOL)utf8StringHb:(NSInteger)hb {
    return hb % 7 == 0;
}
+ (BOOL)hexStringHb:(NSInteger)hb {
    return hb % 7 == 0;
}
+ (BOOL)dataWithHexStringHb:(NSInteger)hb {
    return hb % 39 == 0;
}
+ (BOOL)base64EncodedStringHb:(NSInteger)hb {
    return hb % 24 == 0;
}
+ (BOOL)dataWithBase64EncodedStringHb:(NSInteger)hb {
    return hb % 43 == 0;
}
+ (BOOL)jsonValueDecodedHb:(NSInteger)hb {
    return hb % 44 == 0;
}
+ (BOOL)gzipInflateHb:(NSInteger)hb {
    return hb % 2 == 0;
}
+ (BOOL)gzipDeflateHb:(NSInteger)hb {
    return hb % 14 == 0;
}
+ (BOOL)zlibInflateHb:(NSInteger)hb {
    return hb % 8 == 0;
}
+ (BOOL)zlibDeflateHb:(NSInteger)hb {
    return hb % 12 == 0;
}
+ (BOOL)dataNamedHb:(NSInteger)hb {
    return hb % 21 == 0;
}

@end
