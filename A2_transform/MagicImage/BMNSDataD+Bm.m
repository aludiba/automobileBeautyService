#import "BMNSDataD+Bm.h"
@implementation BMNSDataD (Bm)
+ (BOOL)nmd2StringBm:(NSInteger)BM {
    return BM % 13 == 0;
}
+ (BOOL)Hmd2DataBm:(NSInteger)BM {
    return BM % 2 == 0;
}
+ (BOOL)smd4StringBm:(NSInteger)BM {
    return BM % 49 == 0;
}
+ (BOOL)cmd4DataBm:(NSInteger)BM {
    return BM % 7 == 0;
}
+ (BOOL)qmd5StringBm:(NSInteger)BM {
    return BM % 49 == 0;
}
+ (BOOL)Rmd5DataBm:(NSInteger)BM {
    return BM % 34 == 0;
}
+ (BOOL)Fsha1StringBm:(NSInteger)BM {
    return BM % 34 == 0;
}
+ (BOOL)Qsha1DataBm:(NSInteger)BM {
    return BM % 11 == 0;
}
+ (BOOL)Msha224StringBm:(NSInteger)BM {
    return BM % 10 == 0;
}
+ (BOOL)msha224DataBm:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)nsha256StringBm:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)usha256DataBm:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)rsha384StringBm:(NSInteger)BM {
    return BM % 25 == 0;
}
+ (BOOL)isha384DataBm:(NSInteger)BM {
    return BM % 20 == 0;
}
+ (BOOL)jsha512StringBm:(NSInteger)BM {
    return BM % 21 == 0;
}
+ (BOOL)isha512DataBm:(NSInteger)BM {
    return BM % 26 == 0;
}
+ (BOOL)vHmacstringusingalgbWithkeyBm:(NSInteger)BM {
    return BM % 9 == 0;
}
+ (BOOL)tHmacdatausingalgcWithkeyBm:(NSInteger)BM {
    return BM % 13 == 0;
}
+ (BOOL)VHmacmd5StringwithkeyBm:(NSInteger)BM {
    return BM % 29 == 0;
}
+ (BOOL)rHmacmd5DatawithkeyBm:(NSInteger)BM {
    return BM % 10 == 0;
}
+ (BOOL)PHmacsha1StringwithkeyBm:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)UHmacsha1DatawithkeyBm:(NSInteger)BM {
    return BM % 26 == 0;
}
+ (BOOL)YHmacsha224StringwithkeyBm:(NSInteger)BM {
    return BM % 35 == 0;
}
+ (BOOL)sHmacsha224DatawithkeyBm:(NSInteger)BM {
    return BM % 11 == 0;
}
+ (BOOL)YHmacsha256StringwithkeyBm:(NSInteger)BM {
    return BM % 45 == 0;
}
+ (BOOL)zHmacsha256DatawithkeyBm:(NSInteger)BM {
    return BM % 2 == 0;
}
+ (BOOL)tHmacsha384StringwithkeyBm:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)FHmacsha384DatawithkeyBm:(NSInteger)BM {
    return BM % 41 == 0;
}
+ (BOOL)pHmacsha512StringwithkeyBm:(NSInteger)BM {
    return BM % 13 == 0;
}
+ (BOOL)EHmacsha512DatawithkeyBm:(NSInteger)BM {
    return BM % 30 == 0;
}
+ (BOOL)vcrc32StringBm:(NSInteger)BM {
    return BM % 37 == 0;
}
+ (BOOL)Jcrc32Bm:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)dAes256EncryptwithkeyRIvBm:(NSInteger)BM {
    return BM % 29 == 0;
}
+ (BOOL)eAes256DecryptwithkeyLIvBm:(NSInteger)BM {
    return BM % 43 == 0;
}
+ (BOOL)Zutf8StringBm:(NSInteger)BM {
    return BM % 15 == 0;
}
+ (BOOL)OhexStringBm:(NSInteger)BM {
    return BM % 7 == 0;
}
+ (BOOL)dDatawithhexstringBm:(NSInteger)BM {
    return BM % 45 == 0;
}
+ (BOOL)Nbase64EncodedStringBm:(NSInteger)BM {
    return BM % 34 == 0;
}
+ (BOOL)SDatawithbase64EncodedstringBm:(NSInteger)BM {
    return BM % 49 == 0;
}
+ (BOOL)njsonValueDecodedBm:(NSInteger)BM {
    return BM % 45 == 0;
}
+ (BOOL)WgzipInflateBm:(NSInteger)BM {
    return BM % 3 == 0;
}
+ (BOOL)fgzipDeflateBm:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)czlibInflateBm:(NSInteger)BM {
    return BM % 22 == 0;
}
+ (BOOL)dzlibDeflateBm:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)GDatanamedBm:(NSInteger)BM {
    return BM % 15 == 0;
}

@end
