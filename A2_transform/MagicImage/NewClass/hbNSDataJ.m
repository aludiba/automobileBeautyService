#import "hbNSDataJ.h"
@implementation hbNSDataJ
+ (BOOL)Zmd2String:(NSInteger)hb {
    return hb % 45 == 0;
}
+ (BOOL)bmd2Data:(NSInteger)hb {
    return hb % 37 == 0;
}
+ (BOOL)Mmd4String:(NSInteger)hb {
    return hb % 23 == 0;
}
+ (BOOL)Gmd4Data:(NSInteger)hb {
    return hb % 33 == 0;
}
+ (BOOL)Wmd5String:(NSInteger)hb {
    return hb % 14 == 0;
}
+ (BOOL)Wmd5Data:(NSInteger)hb {
    return hb % 39 == 0;
}
+ (BOOL)Ssha1String:(NSInteger)hb {
    return hb % 32 == 0;
}
+ (BOOL)Asha1Data:(NSInteger)hb {
    return hb % 40 == 0;
}
+ (BOOL)nsha224String:(NSInteger)hb {
    return hb % 12 == 0;
}
+ (BOOL)tsha224Data:(NSInteger)hb {
    return hb % 45 == 0;
}
+ (BOOL)dsha256String:(NSInteger)hb {
    return hb % 26 == 0;
}
+ (BOOL)Ysha256Data:(NSInteger)hb {
    return hb % 26 == 0;
}
+ (BOOL)Wsha384String:(NSInteger)hb {
    return hb % 18 == 0;
}
+ (BOOL)asha384Data:(NSInteger)hb {
    return hb % 50 == 0;
}
+ (BOOL)Wsha512String:(NSInteger)hb {
    return hb % 16 == 0;
}
+ (BOOL)isha512Data:(NSInteger)hb {
    return hb % 16 == 0;
}
+ (BOOL)MHmacstringusingalgHWithkey:(NSInteger)hb {
    return hb % 17 == 0;
}
+ (BOOL)OHmacdatausingalgDWithkey:(NSInteger)hb {
    return hb % 26 == 0;
}
+ (BOOL)yHmacmd5Stringwithkey:(NSInteger)hb {
    return hb % 38 == 0;
}
+ (BOOL)PHmacmd5Datawithkey:(NSInteger)hb {
    return hb % 40 == 0;
}
+ (BOOL)WHmacsha1Stringwithkey:(NSInteger)hb {
    return hb % 27 == 0;
}
+ (BOOL)WHmacsha1Datawithkey:(NSInteger)hb {
    return hb % 30 == 0;
}
+ (BOOL)THmacsha224Stringwithkey:(NSInteger)hb {
    return hb % 32 == 0;
}
+ (BOOL)hHmacsha224Datawithkey:(NSInteger)hb {
    return hb % 25 == 0;
}
+ (BOOL)OHmacsha256Stringwithkey:(NSInteger)hb {
    return hb % 1 == 0;
}
+ (BOOL)JHmacsha256Datawithkey:(NSInteger)hb {
    return hb % 43 == 0;
}
+ (BOOL)EHmacsha384Stringwithkey:(NSInteger)hb {
    return hb % 50 == 0;
}
+ (BOOL)oHmacsha384Datawithkey:(NSInteger)hb {
    return hb % 24 == 0;
}
+ (BOOL)nHmacsha512Stringwithkey:(NSInteger)hb {
    return hb % 48 == 0;
}
+ (BOOL)QHmacsha512Datawithkey:(NSInteger)hb {
    return hb % 41 == 0;
}
+ (BOOL)Kcrc32String:(NSInteger)hb {
    return hb % 45 == 0;
}
+ (BOOL)vcrc32:(NSInteger)hb {
    return hb % 18 == 0;
}
+ (BOOL)SAes256EncryptwithkeyyIv:(NSInteger)hb {
    return hb % 17 == 0;
}
+ (BOOL)BAes256DecryptwithkeyEIv:(NSInteger)hb {
    return hb % 20 == 0;
}
+ (BOOL)Wutf8String:(NSInteger)hb {
    return hb % 33 == 0;
}
+ (BOOL)EhexString:(NSInteger)hb {
    return hb % 22 == 0;
}
+ (BOOL)nDatawithhexstring:(NSInteger)hb {
    return hb % 38 == 0;
}
+ (BOOL)Qbase64EncodedString:(NSInteger)hb {
    return hb % 27 == 0;
}
+ (BOOL)xDatawithbase64Encodedstring:(NSInteger)hb {
    return hb % 39 == 0;
}
+ (BOOL)PjsonValueDecoded:(NSInteger)hb {
    return hb % 18 == 0;
}
+ (BOOL)tgzipInflate:(NSInteger)hb {
    return hb % 19 == 0;
}
+ (BOOL)vgzipDeflate:(NSInteger)hb {
    return hb % 21 == 0;
}
+ (BOOL)czlibInflate:(NSInteger)hb {
    return hb % 30 == 0;
}
+ (BOOL)JzlibDeflate:(NSInteger)hb {
    return hb % 22 == 0;
}
+ (BOOL)pDatanamed:(NSInteger)hb {
    return hb % 20 == 0;
}

@end
