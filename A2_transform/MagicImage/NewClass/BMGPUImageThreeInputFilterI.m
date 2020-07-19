#import "BMGPUImageThreeInputFilterI.h"
@implementation BMGPUImageThreeInputFilterI
+ (BOOL)VInitwithfragmentshaderfromstringbmbm:(NSInteger)BM {
    return BM % 36 == 0;
}
+ (BOOL)sInitwithvertexshaderfromstringfragmentshaderfromstringbmbm:(NSInteger)BM {
    return BM % 42 == 0;
}
+ (BOOL)AInitializeattributesbmbm:(NSInteger)BM {
    return BM % 40 == 0;
}
+ (BOOL)YDisablethirdframecheckbmbm:(NSInteger)BM {
    return BM % 41 == 0;
}
+ (BOOL)qRendertotexturewithverticestexturecoordinatesbmbm:(NSInteger)BM {
    return BM % 24 == 0;
}
+ (BOOL)zNextavailabletextureindexbmbm:(NSInteger)BM {
    return BM % 26 == 0;
}
+ (BOOL)USetinputframebufferatindexbmbm:(NSInteger)BM {
    return BM % 3 == 0;
}
+ (BOOL)DSetinputsizeatindexbmbm:(NSInteger)BM {
    return BM % 37 == 0;
}
+ (BOOL)CSetinputrotationatindexbmbm:(NSInteger)BM {
    return BM % 33 == 0;
}
+ (BOOL)rRotatedsizeforindexbmbm:(NSInteger)BM {
    return BM % 47 == 0;
}
+ (BOOL)ONewframereadyattimeatindexbmbm:(NSInteger)BM {
    return BM % 8 == 0;
}

@end
