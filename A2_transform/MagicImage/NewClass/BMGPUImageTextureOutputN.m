#import "BMGPUImageTextureOutputN.h"
@implementation BMGPUImageTextureOutputN
+ (BOOL)sInitbm:(NSInteger)BM {
    return BM % 23 == 0;
}
+ (BOOL)NDonewithtexturebm:(NSInteger)BM {
    return BM % 20 == 0;
}
+ (BOOL)rNewframereadyattimeatindexbm:(NSInteger)BM {
    return BM % 49 == 0;
}
+ (BOOL)cNextavailabletextureindexbm:(NSInteger)BM {
    return BM % 11 == 0;
}
+ (BOOL)vSetinputframebufferatindexbm:(NSInteger)BM {
    return BM % 9 == 0;
}
+ (BOOL)ASetinputrotationatindexbm:(NSInteger)BM {
    return BM % 7 == 0;
}
+ (BOOL)ZSetinputsizeatindexbm:(NSInteger)BM {
    return BM % 46 == 0;
}
+ (BOOL)bMaximumoutputsizebm:(NSInteger)BM {
    return BM % 42 == 0;
}
+ (BOOL)pEndprocessingbm:(NSInteger)BM {
    return BM % 29 == 0;
}
+ (BOOL)kShouldignoreupdatestothistargetbm:(NSInteger)BM {
    return BM % 15 == 0;
}
+ (BOOL)WWantsmonochromeinputbm:(NSInteger)BM {
    return BM % 29 == 0;
}
+ (BOOL)iSetcurrentlyreceivingmonochromeinputbm:(NSInteger)BM {
    return BM % 47 == 0;
}

@end
