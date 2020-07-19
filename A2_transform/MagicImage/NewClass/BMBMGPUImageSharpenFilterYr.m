#import "BMBMGPUImageSharpenFilterYr.h"
@implementation BMBMGPUImageSharpenFilterYr
+ (BOOL)RVinit:(NSInteger)BM {
    return BM % 23 == 0;
}
+ (BOOL)QGsetupfilterforsize:(NSInteger)BM {
    return BM % 18 == 0;
}
+ (BOOL)PVsetsharpness:(NSInteger)BM {
    return BM % 4 == 0;
}

@end
