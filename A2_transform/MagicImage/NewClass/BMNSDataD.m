#import "BMNSDataD.h"
@implementation BMNSDataD
+ (BOOL)nmd2String:(NSInteger)BM {
    return BM % 31 == 0;
}
+ (BOOL)Hmd2Data:(NSInteger)BM {
    return BM % 46 == 0;
}
+ (BOOL)smd4String:(NSInteger)BM {
    return BM % 23 == 0;
}
+ (BOOL)cmd4Data:(NSInteger)BM {
    return BM % 32 == 0;
}
+ (BOOL)qmd5String:(NSInteger)BM {
    return BM % 26 == 0;
}
+ (BOOL)Rmd5Data:(NSInteger)BM {
    return BM % 12 == 0;
}
+ (BOOL)Fsha1String:(NSInteger)BM {
    return BM % 32 == 0;
}
+ (BOOL)Qsha1Data:(NSInteger)BM {
    return BM % 34 == 0;
}
+ (BOOL)Msha224String:(NSInteger)BM {
    return BM % 19 == 0;
}
+ (BOOL)msha224Data:(NSInteger)BM {
    return BM % 47 == 0;
}
+ (BOOL)nsha256String:(NSInteger)BM {
    return BM % 46 == 0;
}
+ (BOOL)usha256Data:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)rsha384String:(NSInteger)BM {
    return BM % 22 == 0;
}
+ (BOOL)isha384Data:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)jsha512String:(NSInteger)BM {
    return BM % 18 == 0;
}
+ (BOOL)isha512Data:(NSInteger)BM {
    return BM % 34 == 0;
}
+ (BOOL)vHmacstringusingalgbWithkey:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)tHmacdatausingalgcWithkey:(NSInteger)BM {
    return BM % 18 == 0;
}
+ (BOOL)VHmacmd5Stringwithkey:(NSInteger)BM {
    return BM % 32 == 0;
}
+ (BOOL)rHmacmd5Datawithkey:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)PHmacsha1Stringwithkey:(NSInteger)BM {
    return BM % 49 == 0;
}
+ (BOOL)UHmacsha1Datawithkey:(NSInteger)BM {
    return BM % 45 == 0;
}
+ (BOOL)YHmacsha224Stringwithkey:(NSInteger)BM {
    return BM % 29 == 0;
}
+ (BOOL)sHmacsha224Datawithkey:(NSInteger)BM {
    return BM % 47 == 0;
}
+ (BOOL)YHmacsha256Stringwithkey:(NSInteger)BM {
    return BM % 19 == 0;
}
+ (BOOL)zHmacsha256Datawithkey:(NSInteger)BM {
    return BM % 31 == 0;
}
+ (BOOL)tHmacsha384Stringwithkey:(NSInteger)BM {
    return BM % 49 == 0;
}
+ (BOOL)FHmacsha384Datawithkey:(NSInteger)BM {
    return BM % 11 == 0;
}
+ (BOOL)pHmacsha512Stringwithkey:(NSInteger)BM {
    return BM % 34 == 0;
}
+ (BOOL)EHmacsha512Datawithkey:(NSInteger)BM {
    return BM % 17 == 0;
}
+ (BOOL)vcrc32String:(NSInteger)BM {
    return BM % 49 == 0;
}
+ (BOOL)Jcrc32:(NSInteger)BM {
    return BM % 34 == 0;
}
+ (BOOL)dAes256EncryptwithkeyRIv:(NSInteger)BM {
    return BM % 15 == 0;
}
+ (BOOL)eAes256DecryptwithkeyLIv:(NSInteger)BM {
    return BM % 35 == 0;
}
+ (BOOL)Zutf8String:(NSInteger)BM {
    return BM % 37 == 0;
}
+ (BOOL)OhexString:(NSInteger)BM {
    return BM % 50 == 0;
}
+ (BOOL)dDatawithhexstring:(NSInteger)BM {
    return BM % 23 == 0;
}
+ (BOOL)Nbase64EncodedString:(NSInteger)BM {
    return BM % 15 == 0;
}
+ (BOOL)SDatawithbase64Encodedstring:(NSInteger)BM {
    return BM % 41 == 0;
}
+ (BOOL)njsonValueDecoded:(NSInteger)BM {
    return BM % 47 == 0;
}
+ (BOOL)WgzipInflate:(NSInteger)BM {
    return BM % 40 == 0;
}
+ (BOOL)fgzipDeflate:(NSInteger)BM {
    return BM % 9 == 0;
}
+ (BOOL)czlibInflate:(NSInteger)BM {
    return BM % 20 == 0;
}
+ (BOOL)dzlibDeflate:(NSInteger)BM {
    return BM % 44 == 0;
}
+ (BOOL)GDatanamed:(NSInteger)BM {
    return BM % 22 == 0;
}

@end
