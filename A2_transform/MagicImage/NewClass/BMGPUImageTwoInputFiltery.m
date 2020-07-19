#import "BMGPUImageTwoInputFiltery.h"
@implementation BMGPUImageTwoInputFiltery
+ (BOOL)MInitwithfragmentshaderfromstringbm:(NSInteger)BM {
    return BM % 15 == 0;
}
+ (BOOL)dInitwithvertexshaderfromstringfragmentshaderfromstringbm:(NSInteger)BM {
    return BM % 30 == 0;
}
+ (BOOL)HInitializeattributesbm:(NSInteger)BM {
    return BM % 3 == 0;
}
+ (BOOL)EDisablefirstframecheckbm:(NSInteger)BM {
    return BM % 12 == 0;
}
+ (BOOL)PDisablesecondframecheckbm:(NSInteger)BM {
    return BM % 45 == 0;
}
+ (BOOL)xRendertotexturewithverticestexturecoordinatesbm:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)cNextavailabletextureindexbm:(NSInteger)BM {
    return BM % 18 == 0;
}
+ (BOOL)USetinputframebufferatindexbm:(NSInteger)BM {
    return BM % 46 == 0;
}
+ (BOOL)RSetinputsizeatindexbm:(NSInteger)BM {
    return BM % 40 == 0;
}
+ (BOOL)NSetinputrotationatindexbm:(NSInteger)BM {
    return BM % 12 == 0;
}
+ (BOOL)xRotatedsizeforindexbm:(NSInteger)BM {
    return BM % 12 == 0;
}
+ (BOOL)lNewframereadyattimeatindexbm:(NSInteger)BM {
    return BM % 14 == 0;
}

@end
