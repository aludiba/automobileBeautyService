#import "BMGPUImageTransformFilterA.h"
@implementation BMGPUImageTransformFilterA
+ (BOOL)FInitbm:(NSInteger)BM {
    return BM % 24 == 0;
}
+ (BOOL)pLoadorthomatrixleftrightbottomtopnearfarbm:(NSInteger)BM {
    return BM % 29 == 0;
}
+ (BOOL)fConvert3Dtransformtomatrixbm:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)UNewframereadyattimeatindexbm:(NSInteger)BM {
    return BM % 39 == 0;
}
+ (BOOL)tBm:(NSInteger)BM {
    return BM % 18 == 0;
}
+ (BOOL)ZSetupfilterforsizebm:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)uSetaffinetransformbm:(NSInteger)BM {
    return BM % 19 == 0;
}
+ (BOOL)XAffinetransformbm:(NSInteger)BM {
    return BM % 20 == 0;
}
+ (BOOL)YSettransform3Dbm:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)DSetignoreaspectratiobm:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)PSetanchortopleftbm:(NSInteger)BM {
    return BM % 16 == 0;
}

@end
