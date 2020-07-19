#import "BMGPUImageTwoInputFilterG.h"
@implementation BMGPUImageTwoInputFilterG
+ (BOOL)WInitwithfragmentshaderfromstringbm:(NSInteger)BM {
    return BM % 10 == 0;
}
+ (BOOL)nInitwithvertexshaderfromstringfragmentshaderfromstringbm:(NSInteger)BM {
    return BM % 10 == 0;
}
+ (BOOL)eInitializeattributesbm:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)nDisablefirstframecheckbm:(NSInteger)BM {
    return BM % 45 == 0;
}
+ (BOOL)EDisablesecondframecheckbm:(NSInteger)BM {
    return BM % 35 == 0;
}
+ (BOOL)vRendertotexturewithverticestexturecoordinatesbm:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)UNextavailabletextureindexbm:(NSInteger)BM {
    return BM % 49 == 0;
}
+ (BOOL)nSetinputframebufferatindexbm:(NSInteger)BM {
    return BM % 21 == 0;
}
+ (BOOL)ISetinputsizeatindexbm:(NSInteger)BM {
    return BM % 6 == 0;
}
+ (BOOL)cSetinputrotationatindexbm:(NSInteger)BM {
    return BM % 44 == 0;
}
+ (BOOL)XRotatedsizeforindexbm:(NSInteger)BM {
    return BM % 47 == 0;
}
+ (BOOL)MNewframereadyattimeatindexbm:(NSInteger)BM {
    return BM % 18 == 0;
}

@end
