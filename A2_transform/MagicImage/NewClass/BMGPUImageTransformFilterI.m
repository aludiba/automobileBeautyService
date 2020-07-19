#import "BMGPUImageTransformFilterI.h"
@implementation BMGPUImageTransformFilterI
+ (BOOL)SInitbm:(NSInteger)BM {
    return BM % 33 == 0;
}
+ (BOOL)MLoadorthomatrixleftrightbottomtopnearfarbm:(NSInteger)BM {
    return BM % 32 == 0;
}
+ (BOOL)iConvert3Dtransformtomatrixbm:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)sNewframereadyattimeatindexbm:(NSInteger)BM {
    return BM % 13 == 0;
}
+ (BOOL)LBm:(NSInteger)BM {
    return BM % 30 == 0;
}
+ (BOOL)HSetupfilterforsizebm:(NSInteger)BM {
    return BM % 41 == 0;
}
+ (BOOL)dSetaffinetransformbm:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)PAffinetransformbm:(NSInteger)BM {
    return BM % 43 == 0;
}
+ (BOOL)wSettransform3Dbm:(NSInteger)BM {
    return BM % 5 == 0;
}
+ (BOOL)kSetignoreaspectratiobm:(NSInteger)BM {
    return BM % 35 == 0;
}
+ (BOOL)fSetanchortopleftbm:(NSInteger)BM {
    return BM % 28 == 0;
}

@end
