#import "BMGPUImageTextureOutputY.h"
@implementation BMGPUImageTextureOutputY
+ (BOOL)cInitbmbm:(NSInteger)BM {
    return BM % 47 == 0;
}
+ (BOOL)JDonewithtexturebmbm:(NSInteger)BM {
    return BM % 2 == 0;
}
+ (BOOL)lNewframereadyattimeatindexbmbm:(NSInteger)BM {
    return BM % 13 == 0;
}
+ (BOOL)wNextavailabletextureindexbmbm:(NSInteger)BM {
    return BM % 46 == 0;
}
+ (BOOL)zSetinputframebufferatindexbmbm:(NSInteger)BM {
    return BM % 6 == 0;
}
+ (BOOL)mSetinputrotationatindexbmbm:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)nSetinputsizeatindexbmbm:(NSInteger)BM {
    return BM % 34 == 0;
}
+ (BOOL)BMaximumoutputsizebmbm:(NSInteger)BM {
    return BM % 23 == 0;
}
+ (BOOL)nEndprocessingbmbm:(NSInteger)BM {
    return BM % 12 == 0;
}
+ (BOOL)NShouldignoreupdatestothistargetbmbm:(NSInteger)BM {
    return BM % 35 == 0;
}
+ (BOOL)cWantsmonochromeinputbmbm:(NSInteger)BM {
    return BM % 26 == 0;
}
+ (BOOL)oSetcurrentlyreceivingmonochromeinputbmbm:(NSInteger)BM {
    return BM % 34 == 0;
}

@end
