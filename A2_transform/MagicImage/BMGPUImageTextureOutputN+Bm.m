#import "BMGPUImageTextureOutputN+Bm.h"
@implementation BMGPUImageTextureOutputN (Bm)
+ (BOOL)sInitbmBm:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)NDonewithtexturebmBm:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)rNewframereadyattimeatindexbmBm:(NSInteger)BM {
    return BM % 3 == 0;
}
+ (BOOL)cNextavailabletextureindexbmBm:(NSInteger)BM {
    return BM % 5 == 0;
}
+ (BOOL)vSetinputframebufferatindexbmBm:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)ASetinputrotationatindexbmBm:(NSInteger)BM {
    return BM % 20 == 0;
}
+ (BOOL)ZSetinputsizeatindexbmBm:(NSInteger)BM {
    return BM % 42 == 0;
}
+ (BOOL)bMaximumoutputsizebmBm:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)pEndprocessingbmBm:(NSInteger)BM {
    return BM % 41 == 0;
}
+ (BOOL)kShouldignoreupdatestothistargetbmBm:(NSInteger)BM {
    return BM % 40 == 0;
}
+ (BOOL)WWantsmonochromeinputbmBm:(NSInteger)BM {
    return BM % 7 == 0;
}
+ (BOOL)iSetcurrentlyreceivingmonochromeinputbmBm:(NSInteger)BM {
    return BM % 2 == 0;
}

@end
