#import "BMNSDatae.h"
@implementation BMNSDatae
+ (BOOL)pmd2String:(NSInteger)BM {
    return BM % 33 == 0;
}
+ (BOOL)Dmd2Data:(NSInteger)BM {
    return BM % 27 == 0;
}
+ (BOOL)xmd4String:(NSInteger)BM {
    return BM % 10 == 0;
}
+ (BOOL)Wmd4Data:(NSInteger)BM {
    return BM % 33 == 0;
}
+ (BOOL)qmd5String:(NSInteger)BM {
    return BM % 23 == 0;
}
+ (BOOL)kmd5Data:(NSInteger)BM {
    return BM % 26 == 0;
}
+ (BOOL)msha1String:(NSInteger)BM {
    return BM % 12 == 0;
}
+ (BOOL)Psha1Data:(NSInteger)BM {
    return BM % 21 == 0;
}
+ (BOOL)psha224String:(NSInteger)BM {
    return BM % 40 == 0;
}
+ (BOOL)zsha224Data:(NSInteger)BM {
    return BM % 29 == 0;
}
+ (BOOL)Qsha256String:(NSInteger)BM {
    return BM % 27 == 0;
}
+ (BOOL)ksha256Data:(NSInteger)BM {
    return BM % 42 == 0;
}
+ (BOOL)gsha384String:(NSInteger)BM {
    return BM % 6 == 0;
}
+ (BOOL)Msha384Data:(NSInteger)BM {
    return BM % 46 == 0;
}
+ (BOOL)Qsha512String:(NSInteger)BM {
    return BM % 46 == 0;
}
+ (BOOL)Rsha512Data:(NSInteger)BM {
    return BM % 25 == 0;
}
+ (BOOL)fHmacstringusingalgTWithkey:(NSInteger)BM {
    return BM % 26 == 0;
}
+ (BOOL)DHmacdatausingalgIWithkey:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)dHmacmd5Stringwithkey:(NSInteger)BM {
    return BM % 2 == 0;
}
+ (BOOL)bHmacmd5Datawithkey:(NSInteger)BM {
    return BM % 13 == 0;
}
+ (BOOL)LHmacsha1Stringwithkey:(NSInteger)BM {
    return BM % 1 == 0;
}
+ (BOOL)KHmacsha1Datawithkey:(NSInteger)BM {
    return BM % 35 == 0;
}
+ (BOOL)sHmacsha224Stringwithkey:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)jHmacsha224Datawithkey:(NSInteger)BM {
    return BM % 6 == 0;
}
+ (BOOL)PHmacsha256Stringwithkey:(NSInteger)BM {
    return BM % 40 == 0;
}
+ (BOOL)AHmacsha256Datawithkey:(NSInteger)BM {
    return BM % 14 == 0;
}
+ (BOOL)rHmacsha384Stringwithkey:(NSInteger)BM {
    return BM % 34 == 0;
}
+ (BOOL)nHmacsha384Datawithkey:(NSInteger)BM {
    return BM % 35 == 0;
}
+ (BOOL)KHmacsha512Stringwithkey:(NSInteger)BM {
    return BM % 17 == 0;
}
+ (BOOL)DHmacsha512Datawithkey:(NSInteger)BM {
    return BM % 9 == 0;
}
+ (BOOL)ocrc32String:(NSInteger)BM {
    return BM % 42 == 0;
}
+ (BOOL)Hcrc32:(NSInteger)BM {
    return BM % 25 == 0;
}
+ (BOOL)iAes256EncryptwithkeysIv:(NSInteger)BM {
    return BM % 11 == 0;
}
+ (BOOL)pAes256DecryptwithkeyjIv:(NSInteger)BM {
    return BM % 40 == 0;
}
+ (BOOL)lutf8String:(NSInteger)BM {
    return BM % 19 == 0;
}
+ (BOOL)ihexString:(NSInteger)BM {
    return BM % 31 == 0;
}
+ (BOOL)fDatawithhexstring:(NSInteger)BM {
    return BM % 32 == 0;
}
+ (BOOL)lbase64EncodedString:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)VDatawithbase64Encodedstring:(NSInteger)BM {
    return BM % 13 == 0;
}
+ (BOOL)JjsonValueDecoded:(NSInteger)BM {
    return BM % 24 == 0;
}
+ (BOOL)LgzipInflate:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)igzipDeflate:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)GzlibInflate:(NSInteger)BM {
    return BM % 10 == 0;
}
+ (BOOL)vzlibDeflate:(NSInteger)BM {
    return BM % 44 == 0;
}
+ (BOOL)YDatanamed:(NSInteger)BM {
    return BM % 11 == 0;
}

@end
