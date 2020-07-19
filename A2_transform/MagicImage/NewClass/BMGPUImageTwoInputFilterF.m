#import "BMGPUImageTwoInputFilterF.h"
@implementation BMGPUImageTwoInputFilterF
+ (BOOL)iInitwithfragmentshaderfromstringbmbm:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)SInitwithvertexshaderfromstringfragmentshaderfromstringbmbm:(NSInteger)BM {
    return BM % 10 == 0;
}
+ (BOOL)gInitializeattributesbmbm:(NSInteger)BM {
    return BM % 12 == 0;
}
+ (BOOL)rDisablefirstframecheckbmbm:(NSInteger)BM {
    return BM % 26 == 0;
}
+ (BOOL)GDisablesecondframecheckbmbm:(NSInteger)BM {
    return BM % 30 == 0;
}
+ (BOOL)NRendertotexturewithverticestexturecoordinatesbmbm:(NSInteger)BM {
    return BM % 1 == 0;
}
+ (BOOL)INextavailabletextureindexbmbm:(NSInteger)BM {
    return BM % 47 == 0;
}
+ (BOOL)PSetinputframebufferatindexbmbm:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)HSetinputsizeatindexbmbm:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)OSetinputrotationatindexbmbm:(NSInteger)BM {
    return BM % 15 == 0;
}
+ (BOOL)sRotatedsizeforindexbmbm:(NSInteger)BM {
    return BM % 18 == 0;
}
+ (BOOL)rNewframereadyattimeatindexbmbm:(NSInteger)BM {
    return BM % 30 == 0;
}

@end
