#import "BMNSDatax.h"
@implementation BMNSDatax
+ (BOOL)PMd2Stringbmbm:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)CMd2Databmbm:(NSInteger)BM {
    return BM % 41 == 0;
}
+ (BOOL)VMd4Stringbmbm:(NSInteger)BM {
    return BM % 37 == 0;
}
+ (BOOL)EMd4Databmbm:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)OMd5Stringbmbm:(NSInteger)BM {
    return BM % 36 == 0;
}
+ (BOOL)AMd5Databmbm:(NSInteger)BM {
    return BM % 5 == 0;
}
+ (BOOL)hSha1Stringbmbm:(NSInteger)BM {
    return BM % 6 == 0;
}
+ (BOOL)pSha1Databmbm:(NSInteger)BM {
    return BM % 21 == 0;
}
+ (BOOL)ESha224Stringbmbm:(NSInteger)BM {
    return BM % 40 == 0;
}
+ (BOOL)nSha224Databmbm:(NSInteger)BM {
    return BM % 37 == 0;
}
+ (BOOL)HSha256Stringbmbm:(NSInteger)BM {
    return BM % 42 == 0;
}
+ (BOOL)WSha256Databmbm:(NSInteger)BM {
    return BM % 43 == 0;
}
+ (BOOL)pSha384Stringbmbm:(NSInteger)BM {
    return BM % 36 == 0;
}
+ (BOOL)QSha384Databmbm:(NSInteger)BM {
    return BM % 14 == 0;
}
+ (BOOL)KSha512Stringbmbm:(NSInteger)BM {
    return BM % 9 == 0;
}
+ (BOOL)fSha512Databmbm:(NSInteger)BM {
    return BM % 50 == 0;
}
+ (BOOL)nHmacstringusingalgwithkeybmbm:(NSInteger)BM {
    return BM % 43 == 0;
}
+ (BOOL)oHmacdatausingalgwithkeybmbm:(NSInteger)BM {
    return BM % 3 == 0;
}
+ (BOOL)oHmacmd5Stringwithkeybmbm:(NSInteger)BM {
    return BM % 11 == 0;
}
+ (BOOL)yHmacmd5Datawithkeybmbm:(NSInteger)BM {
    return BM % 41 == 0;
}
+ (BOOL)HHmacsha1Stringwithkeybmbm:(NSInteger)BM {
    return BM % 44 == 0;
}
+ (BOOL)dHmacsha1Datawithkeybmbm:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)kHmacsha224Stringwithkeybmbm:(NSInteger)BM {
    return BM % 47 == 0;
}
+ (BOOL)QHmacsha224Datawithkeybmbm:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)OHmacsha256Stringwithkeybmbm:(NSInteger)BM {
    return BM % 31 == 0;
}
+ (BOOL)KHmacsha256Datawithkeybmbm:(NSInteger)BM {
    return BM % 1 == 0;
}
+ (BOOL)nHmacsha384Stringwithkeybmbm:(NSInteger)BM {
    return BM % 1 == 0;
}
+ (BOOL)tHmacsha384Datawithkeybmbm:(NSInteger)BM {
    return BM % 35 == 0;
}
+ (BOOL)EHmacsha512Stringwithkeybmbm:(NSInteger)BM {
    return BM % 41 == 0;
}
+ (BOOL)nHmacsha512Datawithkeybmbm:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)eCrc32Stringbmbm:(NSInteger)BM {
    return BM % 19 == 0;
}
+ (BOOL)nCrc32Bmbm:(NSInteger)BM {
    return BM % 22 == 0;
}
+ (BOOL)yAes256Encryptwithkeyivbmbm:(NSInteger)BM {
    return BM % 39 == 0;
}
+ (BOOL)uAes256Decryptwithkeyivbmbm:(NSInteger)BM {
    return BM % 5 == 0;
}
+ (BOOL)OUtf8Stringbmbm:(NSInteger)BM {
    return BM % 1 == 0;
}
+ (BOOL)BHexstringbmbm:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)bDatawithhexstringbmbm:(NSInteger)BM {
    return BM % 2 == 0;
}
+ (BOOL)JBase64Encodedstringbmbm:(NSInteger)BM {
    return BM % 13 == 0;
}
+ (BOOL)UDatawithbase64Encodedstringbmbm:(NSInteger)BM {
    return BM % 13 == 0;
}
+ (BOOL)CJsonvaluedecodedbmbm:(NSInteger)BM {
    return BM % 43 == 0;
}
+ (BOOL)cGzipinflatebmbm:(NSInteger)BM {
    return BM % 39 == 0;
}
+ (BOOL)bGzipdeflatebmbm:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)iZlibinflatebmbm:(NSInteger)BM {
    return BM % 11 == 0;
}
+ (BOOL)IZlibdeflatebmbm:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)EDatanamedbmbm:(NSInteger)BM {
    return BM % 13 == 0;
}

@end
