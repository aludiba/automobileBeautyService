#import "BMGPUImageCropFilterf.h"
@implementation BMGPUImageCropFilterf
+ (BOOL)jInitwithcropregionbm:(NSInteger)BM {
    return BM % 5 == 0;
}
+ (BOOL)kInitbm:(NSInteger)BM {
    return BM % 15 == 0;
}
+ (BOOL)MSetinputsizeatindexbm:(NSInteger)BM {
    return BM % 29 == 0;
}
+ (BOOL)dCalculatecroptexturecoordinatesbm:(NSInteger)BM {
    return BM % 6 == 0;
}
+ (BOOL)MNewframereadyattimeatindexbm:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)JSetcropregionbm:(NSInteger)BM {
    return BM % 14 == 0;
}
+ (BOOL)iSetinputrotationatindexbm:(NSInteger)BM {
    return BM % 32 == 0;
}

@end
