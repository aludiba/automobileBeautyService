#import "BMGPUImageSphereRefractionFilterN.h"
@implementation BMGPUImageSphereRefractionFilterN
+ (BOOL)FInitbm:(NSInteger)BM {
    return BM % 6 == 0;
}
+ (BOOL)bInitwithfragmentshaderfromstringbm:(NSInteger)BM {
    return BM % 2 == 0;
}
+ (BOOL)OSetinputsizeatindexbm:(NSInteger)BM {
    return BM % 46 == 0;
}
+ (BOOL)KAdjustaspectratiobm:(NSInteger)BM {
    return BM % 3 == 0;
}
+ (BOOL)PSetinputrotationatindexbm:(NSInteger)BM {
    return BM % 44 == 0;
}
+ (BOOL)kForceprocessingatsizebm:(NSInteger)BM {
    return BM % 50 == 0;
}
+ (BOOL)oSetradiusbm:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)tSetcenterbm:(NSInteger)BM {
    return BM % 25 == 0;
}
+ (BOOL)zSetaspectratiobm:(NSInteger)BM {
    return BM % 21 == 0;
}
+ (BOOL)gSetrefractiveindexbm:(NSInteger)BM {
    return BM % 20 == 0;
}

@end
