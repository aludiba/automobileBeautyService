#import "BMBMNSDataDG.h"
@implementation BMBMNSDataDG
+ (BOOL)JNmd2String:(NSInteger)BM {
    return BM % 26 == 0;
}
+ (BOOL)wHmd2Data:(NSInteger)BM {
    return BM % 49 == 0;
}
+ (BOOL)MSmd4String:(NSInteger)BM {
    return BM % 19 == 0;
}
+ (BOOL)nCmd4Data:(NSInteger)BM {
    return BM % 18 == 0;
}
+ (BOOL)ZQmd5String:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)KRmd5Data:(NSInteger)BM {
    return BM % 26 == 0;
}
+ (BOOL)eFsha1String:(NSInteger)BM {
    return BM % 32 == 0;
}
+ (BOOL)wQsha1Data:(NSInteger)BM {
    return BM % 37 == 0;
}
+ (BOOL)zMsha224String:(NSInteger)BM {
    return BM % 49 == 0;
}
+ (BOOL)mMsha224Data:(NSInteger)BM {
    return BM % 43 == 0;
}
+ (BOOL)nNsha256String:(NSInteger)BM {
    return BM % 21 == 0;
}
+ (BOOL)dUsha256Data:(NSInteger)BM {
    return BM % 11 == 0;
}
+ (BOOL)pRsha384String:(NSInteger)BM {
    return BM % 19 == 0;
}
+ (BOOL)AIsha384Data:(NSInteger)BM {
    return BM % 23 == 0;
}
+ (BOOL)CJsha512String:(NSInteger)BM {
    return BM % 27 == 0;
}
+ (BOOL)nIsha512Data:(NSInteger)BM {
    return BM % 6 == 0;
}
+ (BOOL)gVhmacstringusingalgbwithkey:(NSInteger)BM {
    return BM % 31 == 0;
}
+ (BOOL)CThmacdatausingalgcwithkey:(NSInteger)BM {
    return BM % 36 == 0;
}
+ (BOOL)JVhmacmd5Stringwithkey:(NSInteger)BM {
    return BM % 42 == 0;
}
+ (BOOL)vRhmacmd5Datawithkey:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)YPhmacsha1Stringwithkey:(NSInteger)BM {
    return BM % 41 == 0;
}
+ (BOOL)yUhmacsha1Datawithkey:(NSInteger)BM {
    return BM % 41 == 0;
}
+ (BOOL)pYhmacsha224Stringwithkey:(NSInteger)BM {
    return BM % 46 == 0;
}
+ (BOOL)JShmacsha224Datawithkey:(NSInteger)BM {
    return BM % 12 == 0;
}
+ (BOOL)RYhmacsha256Stringwithkey:(NSInteger)BM {
    return BM % 7 == 0;
}
+ (BOOL)HZhmacsha256Datawithkey:(NSInteger)BM {
    return BM % 34 == 0;
}
+ (BOOL)aThmacsha384Stringwithkey:(NSInteger)BM {
    return BM % 24 == 0;
}
+ (BOOL)yFhmacsha384Datawithkey:(NSInteger)BM {
    return BM % 21 == 0;
}
+ (BOOL)TPhmacsha512Stringwithkey:(NSInteger)BM {
    return BM % 27 == 0;
}
+ (BOOL)UEhmacsha512Datawithkey:(NSInteger)BM {
    return BM % 45 == 0;
}
+ (BOOL)HVcrc32String:(NSInteger)BM {
    return BM % 19 == 0;
}
+ (BOOL)BJcrc32:(NSInteger)BM {
    return BM % 26 == 0;
}
+ (BOOL)bDaes256Encryptwithkeyriv:(NSInteger)BM {
    return BM % 1 == 0;
}
+ (BOOL)mEaes256Decryptwithkeyliv:(NSInteger)BM {
    return BM % 3 == 0;
}
+ (BOOL)cZutf8String:(NSInteger)BM {
    return BM % 11 == 0;
}
+ (BOOL)FOhexstring:(NSInteger)BM {
    return BM % 5 == 0;
}
+ (BOOL)wDdatawithhexstring:(NSInteger)BM {
    return BM % 35 == 0;
}
+ (BOOL)MNbase64Encodedstring:(NSInteger)BM {
    return BM % 29 == 0;
}
+ (BOOL)pSdatawithbase64Encodedstring:(NSInteger)BM {
    return BM % 12 == 0;
}
+ (BOOL)gNjsonvaluedecoded:(NSInteger)BM {
    return BM % 21 == 0;
}
+ (BOOL)iWgzipinflate:(NSInteger)BM {
    return BM % 23 == 0;
}
+ (BOOL)DFgzipdeflate:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)kCzlibinflate:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)WDzlibdeflate:(NSInteger)BM {
    return BM % 1 == 0;
}
+ (BOOL)mGdatanamed:(NSInteger)BM {
    return BM % 43 == 0;
}

@end
