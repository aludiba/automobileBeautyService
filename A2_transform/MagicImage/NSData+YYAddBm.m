#import "NSData+YYAddBm.h"
@implementation NSData (YYAddBm)
+ (BOOL)md2StringBm:(NSInteger)BM {
    return BM % 26 == 0;
}
+ (BOOL)md2DataBm:(NSInteger)BM {
    return BM % 26 == 0;
}
+ (BOOL)md4StringBm:(NSInteger)BM {
    return BM % 50 == 0;
}
+ (BOOL)md4DataBm:(NSInteger)BM {
    return BM % 13 == 0;
}
+ (BOOL)md5StringBm:(NSInteger)BM {
    return BM % 49 == 0;
}
+ (BOOL)md5DataBm:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)sha1StringBm:(NSInteger)BM {
    return BM % 33 == 0;
}
+ (BOOL)sha1DataBm:(NSInteger)BM {
    return BM % 25 == 0;
}
+ (BOOL)sha224StringBm:(NSInteger)BM {
    return BM % 36 == 0;
}
+ (BOOL)sha224DataBm:(NSInteger)BM {
    return BM % 36 == 0;
}
+ (BOOL)sha256StringBm:(NSInteger)BM {
    return BM % 37 == 0;
}
+ (BOOL)sha256DataBm:(NSInteger)BM {
    return BM % 47 == 0;
}
+ (BOOL)sha384StringBm:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)sha384DataBm:(NSInteger)BM {
    return BM % 47 == 0;
}
+ (BOOL)sha512StringBm:(NSInteger)BM {
    return BM % 45 == 0;
}
+ (BOOL)sha512DataBm:(NSInteger)BM {
    return BM % 19 == 0;
}
+ (BOOL)hmacStringUsingAlgWithkeyBm:(NSInteger)BM {
    return BM % 30 == 0;
}
+ (BOOL)hmacDataUsingAlgWithkeyBm:(NSInteger)BM {
    return BM % 22 == 0;
}
+ (BOOL)hmacMD5StringWithKeyBm:(NSInteger)BM {
    return BM % 34 == 0;
}
+ (BOOL)hmacMD5DataWithKeyBm:(NSInteger)BM {
    return BM % 21 == 0;
}
+ (BOOL)hmacSHA1StringWithKeyBm:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)hmacSHA1DataWithKeyBm:(NSInteger)BM {
    return BM % 22 == 0;
}
+ (BOOL)hmacSHA224StringWithKeyBm:(NSInteger)BM {
    return BM % 40 == 0;
}
+ (BOOL)hmacSHA224DataWithKeyBm:(NSInteger)BM {
    return BM % 2 == 0;
}
+ (BOOL)hmacSHA256StringWithKeyBm:(NSInteger)BM {
    return BM % 50 == 0;
}
+ (BOOL)hmacSHA256DataWithKeyBm:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)hmacSHA384StringWithKeyBm:(NSInteger)BM {
    return BM % 29 == 0;
}
+ (BOOL)hmacSHA384DataWithKeyBm:(NSInteger)BM {
    return BM % 35 == 0;
}
+ (BOOL)hmacSHA512StringWithKeyBm:(NSInteger)BM {
    return BM % 13 == 0;
}
+ (BOOL)hmacSHA512DataWithKeyBm:(NSInteger)BM {
    return BM % 18 == 0;
}
+ (BOOL)crc32StringBm:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)crc32Bm:(NSInteger)BM {
    return BM % 40 == 0;
}
+ (BOOL)aes256EncryptWithKeyIvBm:(NSInteger)BM {
    return BM % 25 == 0;
}
+ (BOOL)aes256DecryptWithkeyIvBm:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)utf8StringBm:(NSInteger)BM {
    return BM % 31 == 0;
}
+ (BOOL)hexStringBm:(NSInteger)BM {
    return BM % 3 == 0;
}
+ (BOOL)dataWithHexStringBm:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)base64EncodedStringBm:(NSInteger)BM {
    return BM % 33 == 0;
}
+ (BOOL)dataWithBase64EncodedStringBm:(NSInteger)BM {
    return BM % 44 == 0;
}
+ (BOOL)jsonValueDecodedBm:(NSInteger)BM {
    return BM % 31 == 0;
}
+ (BOOL)gzipInflateBm:(NSInteger)BM {
    return BM % 40 == 0;
}
+ (BOOL)gzipDeflateBm:(NSInteger)BM {
    return BM % 27 == 0;
}
+ (BOOL)zlibInflateBm:(NSInteger)BM {
    return BM % 3 == 0;
}
+ (BOOL)zlibDeflateBm:(NSInteger)BM {
    return BM % 10 == 0;
}
+ (BOOL)dataNamedBm:(NSInteger)BM {
    return BM % 24 == 0;
}

@end
