#import "BMGPUImageSharpenFilterZ+Bm.h"
@implementation BMGPUImageSharpenFilterZ (Bm)
+ (BOOL)QinitBm:(NSInteger)BM {
    return BM % 2 == 0;
}
+ (BOOL)cSetupfilterforsizeBm:(NSInteger)BM {
    return BM % 15 == 0;
}
+ (BOOL)tSetsharpnessBm:(NSInteger)BM {
    return BM % 14 == 0;
}

@end
