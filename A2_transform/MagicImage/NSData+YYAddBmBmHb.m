#import "NSData+YYAddBmBmHb.h"
@implementation NSData (YYAddBmBmHb)
+ (BOOL)md2StringBmBmHb:(NSInteger)hb {
    return hb % 12 == 0;
}
+ (BOOL)md2DataBmBmHb:(NSInteger)hb {
    return hb % 8 == 0;
}
+ (BOOL)md4StringBmBmHb:(NSInteger)hb {
    return hb % 10 == 0;
}
+ (BOOL)md4DataBmBmHb:(NSInteger)hb {
    return hb % 43 == 0;
}
+ (BOOL)md5StringBmBmHb:(NSInteger)hb {
    return hb % 33 == 0;
}
+ (BOOL)md5DataBmBmHb:(NSInteger)hb {
    return hb % 39 == 0;
}
+ (BOOL)sha1StringBmBmHb:(NSInteger)hb {
    return hb % 18 == 0;
}
+ (BOOL)sha1DataBmBmHb:(NSInteger)hb {
    return hb % 23 == 0;
}
+ (BOOL)sha224StringBmBmHb:(NSInteger)hb {
    return hb % 42 == 0;
}
+ (BOOL)sha224DataBmBmHb:(NSInteger)hb {
    return hb % 35 == 0;
}
+ (BOOL)sha256StringBmBmHb:(NSInteger)hb {
    return hb % 34 == 0;
}
+ (BOOL)sha256DataBmBmHb:(NSInteger)hb {
    return hb % 19 == 0;
}
+ (BOOL)sha384StringBmBmHb:(NSInteger)hb {
    return hb % 39 == 0;
}
+ (BOOL)sha384DataBmBmHb:(NSInteger)hb {
    return hb % 30 == 0;
}
+ (BOOL)sha512StringBmBmHb:(NSInteger)hb {
    return hb % 48 == 0;
}
+ (BOOL)sha512DataBmBmHb:(NSInteger)hb {
    return hb % 4 == 0;
}
+ (BOOL)hmacStringUsingAlgWithkeyBmBmHb:(NSInteger)hb {
    return hb % 32 == 0;
}
+ (BOOL)hmacDataUsingAlgWithkeyBmBmHb:(NSInteger)hb {
    return hb % 47 == 0;
}
+ (BOOL)hmacMD5StringWithKeyBmBmHb:(NSInteger)hb {
    return hb % 8 == 0;
}
+ (BOOL)hmacMD5DataWithKeyBmBmHb:(NSInteger)hb {
    return hb % 26 == 0;
}
+ (BOOL)hmacSHA1StringWithKeyBmBmHb:(NSInteger)hb {
    return hb % 7 == 0;
}
+ (BOOL)hmacSHA1DataWithKeyBmBmHb:(NSInteger)hb {
    return hb % 17 == 0;
}
+ (BOOL)hmacSHA224StringWithKeyBmBmHb:(NSInteger)hb {
    return hb % 12 == 0;
}
+ (BOOL)hmacSHA224DataWithKeyBmBmHb:(NSInteger)hb {
    return hb % 9 == 0;
}
+ (BOOL)hmacSHA256StringWithKeyBmBmHb:(NSInteger)hb {
    return hb % 43 == 0;
}
+ (BOOL)hmacSHA256DataWithKeyBmBmHb:(NSInteger)hb {
    return hb % 34 == 0;
}
+ (BOOL)hmacSHA384StringWithKeyBmBmHb:(NSInteger)hb {
    return hb % 42 == 0;
}
+ (BOOL)hmacSHA384DataWithKeyBmBmHb:(NSInteger)hb {
    return hb % 17 == 0;
}
+ (BOOL)hmacSHA512StringWithKeyBmBmHb:(NSInteger)hb {
    return hb % 27 == 0;
}
+ (BOOL)hmacSHA512DataWithKeyBmBmHb:(NSInteger)hb {
    return hb % 17 == 0;
}
+ (BOOL)crc32StringBmBmHb:(NSInteger)hb {
    return hb % 10 == 0;
}
+ (BOOL)crc32BmBmHb:(NSInteger)hb {
    return hb % 37 == 0;
}
+ (BOOL)aes256EncryptWithKeyIvBmBmHb:(NSInteger)hb {
    return hb % 32 == 0;
}
+ (BOOL)aes256DecryptWithkeyIvBmBmHb:(NSInteger)hb {
    return hb % 43 == 0;
}
+ (BOOL)utf8StringBmBmHb:(NSInteger)hb {
    return hb % 48 == 0;
}
+ (BOOL)hexStringBmBmHb:(NSInteger)hb {
    return hb % 34 == 0;
}
+ (BOOL)dataWithHexStringBmBmHb:(NSInteger)hb {
    return hb % 42 == 0;
}
+ (BOOL)base64EncodedStringBmBmHb:(NSInteger)hb {
    return hb % 24 == 0;
}
+ (BOOL)dataWithBase64EncodedStringBmBmHb:(NSInteger)hb {
    return hb % 44 == 0;
}
+ (BOOL)jsonValueDecodedBmBmHb:(NSInteger)hb {
    return hb % 45 == 0;
}
+ (BOOL)gzipInflateBmBmHb:(NSInteger)hb {
    return hb % 18 == 0;
}
+ (BOOL)gzipDeflateBmBmHb:(NSInteger)hb {
    return hb % 48 == 0;
}
+ (BOOL)zlibInflateBmBmHb:(NSInteger)hb {
    return hb % 9 == 0;
}
+ (BOOL)zlibDeflateBmBmHb:(NSInteger)hb {
    return hb % 13 == 0;
}
+ (BOOL)dataNamedBmBmHb:(NSInteger)hb {
    return hb % 34 == 0;
}

@end
