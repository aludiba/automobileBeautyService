#import "BMGPUImageCropFilteri.h"
@implementation BMGPUImageCropFilteri
+ (BOOL)HInitwithcropregionbmbm:(NSInteger)BM {
    return BM % 20 == 0;
}
+ (BOOL)LInitbmbm:(NSInteger)BM {
    return BM % 36 == 0;
}
+ (BOOL)rSetinputsizeatindexbmbm:(NSInteger)BM {
    return BM % 45 == 0;
}
+ (BOOL)UCalculatecroptexturecoordinatesbmbm:(NSInteger)BM {
    return BM % 17 == 0;
}
+ (BOOL)hNewframereadyattimeatindexbmbm:(NSInteger)BM {
    return BM % 46 == 0;
}
+ (BOOL)VSetcropregionbmbm:(NSInteger)BM {
    return BM % 44 == 0;
}
+ (BOOL)uSetinputrotationatindexbmbm:(NSInteger)BM {
    return BM % 1 == 0;
}

@end
