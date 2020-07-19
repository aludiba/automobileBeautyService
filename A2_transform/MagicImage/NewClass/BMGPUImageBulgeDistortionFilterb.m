#import "BMGPUImageBulgeDistortionFilterb.h"
@implementation BMGPUImageBulgeDistortionFilterb
+ (BOOL)OInitbm:(NSInteger)BM {
    return BM % 5 == 0;
}
+ (BOOL)yAdjustaspectratiobm:(NSInteger)BM {
    return BM % 35 == 0;
}
+ (BOOL)GForceprocessingatsizebm:(NSInteger)BM {
    return BM % 27 == 0;
}
+ (BOOL)zSetinputsizeatindexbm:(NSInteger)BM {
    return BM % 22 == 0;
}
+ (BOOL)ESetaspectratiobm:(NSInteger)BM {
    return BM % 7 == 0;
}
+ (BOOL)tSetinputrotationatindexbm:(NSInteger)BM {
    return BM % 31 == 0;
}
+ (BOOL)fSetradiusbm:(NSInteger)BM {
    return BM % 27 == 0;
}
+ (BOOL)VSetscalebm:(NSInteger)BM {
    return BM % 5 == 0;
}
+ (BOOL)fSetcenterbm:(NSInteger)BM {
    return BM % 42 == 0;
}

@end
