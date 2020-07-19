#import "BMBMGPUImageTextureOutputNf.h"
@implementation BMBMGPUImageTextureOutputNf
+ (BOOL)NSinitbm:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)eNdonewithtexturebm:(NSInteger)BM {
    return BM % 9 == 0;
}
+ (BOOL)jRnewframereadyattimeatindexbm:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)SCnextavailabletextureindexbm:(NSInteger)BM {
    return BM % 5 == 0;
}
+ (BOOL)TVsetinputframebufferatindexbm:(NSInteger)BM {
    return BM % 23 == 0;
}
+ (BOOL)JAsetinputrotationatindexbm:(NSInteger)BM {
    return BM % 30 == 0;
}
+ (BOOL)zZsetinputsizeatindexbm:(NSInteger)BM {
    return BM % 24 == 0;
}
+ (BOOL)XBmaximumoutputsizebm:(NSInteger)BM {
    return BM % 31 == 0;
}
+ (BOOL)kPendprocessingbm:(NSInteger)BM {
    return BM % 46 == 0;
}
+ (BOOL)SKshouldignoreupdatestothistargetbm:(NSInteger)BM {
    return BM % 11 == 0;
}
+ (BOOL)gWwantsmonochromeinputbm:(NSInteger)BM {
    return BM % 6 == 0;
}
+ (BOOL)ZIsetcurrentlyreceivingmonochromeinputbm:(NSInteger)BM {
    return BM % 28 == 0;
}

@end
