#import "NSData+YYAddBmBm.h"
@implementation NSData (YYAddBmBm)
+ (BOOL)md2StringBmBm:(NSInteger)BM {
    return BM % 33 == 0;
}
+ (BOOL)md2DataBmBm:(NSInteger)BM {
    return BM % 29 == 0;
}
+ (BOOL)md4StringBmBm:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)md4DataBmBm:(NSInteger)BM {
    return BM % 39 == 0;
}
+ (BOOL)md5StringBmBm:(NSInteger)BM {
    return BM % 17 == 0;
}
+ (BOOL)md5DataBmBm:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)sha1StringBmBm:(NSInteger)BM {
    return BM % 27 == 0;
}
+ (BOOL)sha1DataBmBm:(NSInteger)BM {
    return BM % 50 == 0;
}
+ (BOOL)sha224StringBmBm:(NSInteger)BM {
    return BM % 46 == 0;
}
+ (BOOL)sha224DataBmBm:(NSInteger)BM {
    return BM % 9 == 0;
}
+ (BOOL)sha256StringBmBm:(NSInteger)BM {
    return BM % 42 == 0;
}
+ (BOOL)sha256DataBmBm:(NSInteger)BM {
    return BM % 22 == 0;
}
+ (BOOL)sha384StringBmBm:(NSInteger)BM {
    return BM % 22 == 0;
}
+ (BOOL)sha384DataBmBm:(NSInteger)BM {
    return BM % 3 == 0;
}
+ (BOOL)sha512StringBmBm:(NSInteger)BM {
    return BM % 12 == 0;
}
+ (BOOL)sha512DataBmBm:(NSInteger)BM {
    return BM % 3 == 0;
}
+ (BOOL)hmacStringUsingAlgWithkeyBmBm:(NSInteger)BM {
    return BM % 34 == 0;
}
+ (BOOL)hmacDataUsingAlgWithkeyBmBm:(NSInteger)BM {
    return BM % 9 == 0;
}
+ (BOOL)hmacMD5StringWithKeyBmBm:(NSInteger)BM {
    return BM % 7 == 0;
}
+ (BOOL)hmacMD5DataWithKeyBmBm:(NSInteger)BM {
    return BM % 49 == 0;
}
+ (BOOL)hmacSHA1StringWithKeyBmBm:(NSInteger)BM {
    return BM % 10 == 0;
}
+ (BOOL)hmacSHA1DataWithKeyBmBm:(NSInteger)BM {
    return BM % 40 == 0;
}
+ (BOOL)hmacSHA224StringWithKeyBmBm:(NSInteger)BM {
    return BM % 46 == 0;
}
+ (BOOL)hmacSHA224DataWithKeyBmBm:(NSInteger)BM {
    return BM % 21 == 0;
}
+ (BOOL)hmacSHA256StringWithKeyBmBm:(NSInteger)BM {
    return BM % 2 == 0;
}
+ (BOOL)hmacSHA256DataWithKeyBmBm:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)hmacSHA384StringWithKeyBmBm:(NSInteger)BM {
    return BM % 34 == 0;
}
+ (BOOL)hmacSHA384DataWithKeyBmBm:(NSInteger)BM {
    return BM % 15 == 0;
}
+ (BOOL)hmacSHA512StringWithKeyBmBm:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)hmacSHA512DataWithKeyBmBm:(NSInteger)BM {
    return BM % 29 == 0;
}
+ (BOOL)crc32StringBmBm:(NSInteger)BM {
    return BM % 20 == 0;
}
+ (BOOL)crc32BmBm:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)aes256EncryptWithKeyIvBmBm:(NSInteger)BM {
    return BM % 18 == 0;
}
+ (BOOL)aes256DecryptWithkeyIvBmBm:(NSInteger)BM {
    return BM % 39 == 0;
}
+ (BOOL)utf8StringBmBm:(NSInteger)BM {
    return BM % 30 == 0;
}
+ (BOOL)hexStringBmBm:(NSInteger)BM {
    return BM % 39 == 0;
}
+ (BOOL)dataWithHexStringBmBm:(NSInteger)BM {
    return BM % 50 == 0;
}
+ (BOOL)base64EncodedStringBmBm:(NSInteger)BM {
    return BM % 43 == 0;
}
+ (BOOL)dataWithBase64EncodedStringBmBm:(NSInteger)BM {
    return BM % 43 == 0;
}
+ (BOOL)jsonValueDecodedBmBm:(NSInteger)BM {
    return BM % 5 == 0;
}
+ (BOOL)gzipInflateBmBm:(NSInteger)BM {
    return BM % 2 == 0;
}
+ (BOOL)gzipDeflateBmBm:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)zlibInflateBmBm:(NSInteger)BM {
    return BM % 14 == 0;
}
+ (BOOL)zlibDeflateBmBm:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)dataNamedBmBm:(NSInteger)BM {
    return BM % 48 == 0;
}

@end
