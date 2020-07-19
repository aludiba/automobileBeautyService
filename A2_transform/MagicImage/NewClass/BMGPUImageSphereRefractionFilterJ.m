#import "BMGPUImageSphereRefractionFilterJ.h"
@implementation BMGPUImageSphereRefractionFilterJ
+ (BOOL)bInitbm:(NSInteger)BM {
    return BM % 22 == 0;
}
+ (BOOL)CInitwithfragmentshaderfromstringbm:(NSInteger)BM {
    return BM % 41 == 0;
}
+ (BOOL)VSetinputsizeatindexbm:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)wAdjustaspectratiobm:(NSInteger)BM {
    return BM % 21 == 0;
}
+ (BOOL)vSetinputrotationatindexbm:(NSInteger)BM {
    return BM % 26 == 0;
}
+ (BOOL)qForceprocessingatsizebm:(NSInteger)BM {
    return BM % 5 == 0;
}
+ (BOOL)XSetradiusbm:(NSInteger)BM {
    return BM % 30 == 0;
}
+ (BOOL)CSetcenterbm:(NSInteger)BM {
    return BM % 27 == 0;
}
+ (BOOL)zSetaspectratiobm:(NSInteger)BM {
    return BM % 7 == 0;
}
+ (BOOL)fSetrefractiveindexbm:(NSInteger)BM {
    return BM % 35 == 0;
}

@end
