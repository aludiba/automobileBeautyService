#import "BMGPUImageBulgeDistortionFilterf.h"
@implementation BMGPUImageBulgeDistortionFilterf
+ (BOOL)gInitbmbm:(NSInteger)BM {
    return BM % 13 == 0;
}
+ (BOOL)GAdjustaspectratiobmbm:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)pForceprocessingatsizebmbm:(NSInteger)BM {
    return BM % 33 == 0;
}
+ (BOOL)MSetinputsizeatindexbmbm:(NSInteger)BM {
    return BM % 26 == 0;
}
+ (BOOL)eSetaspectratiobmbm:(NSInteger)BM {
    return BM % 3 == 0;
}
+ (BOOL)NSetinputrotationatindexbmbm:(NSInteger)BM {
    return BM % 1 == 0;
}
+ (BOOL)dSetradiusbmbm:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)mSetscalebmbm:(NSInteger)BM {
    return BM % 37 == 0;
}
+ (BOOL)JSetcenterbmbm:(NSInteger)BM {
    return BM % 41 == 0;
}

@end
