#import "BMGPUImageCropFilterf+Bm.h"
@implementation BMGPUImageCropFilterf (Bm)
+ (BOOL)jInitwithcropregionbmBm:(NSInteger)BM {
    return BM % 43 == 0;
}
+ (BOOL)kInitbmBm:(NSInteger)BM {
    return BM % 46 == 0;
}
+ (BOOL)MSetinputsizeatindexbmBm:(NSInteger)BM {
    return BM % 9 == 0;
}
+ (BOOL)dCalculatecroptexturecoordinatesbmBm:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)MNewframereadyattimeatindexbmBm:(NSInteger)BM {
    return BM % 37 == 0;
}
+ (BOOL)JSetcropregionbmBm:(NSInteger)BM {
    return BM % 23 == 0;
}
+ (BOOL)iSetinputrotationatindexbmBm:(NSInteger)BM {
    return BM % 17 == 0;
}

@end
