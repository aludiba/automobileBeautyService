#import "BMBMGPUImageSharpenFilterZL+Bm.h"
@implementation BMBMGPUImageSharpenFilterZL (Bm)
+ (BOOL)oQinitBm:(NSInteger)BM {
    return BM % 24 == 0;
}
+ (BOOL)oCsetupfilterforsizeBm:(NSInteger)BM {
    return BM % 35 == 0;
}
+ (BOOL)sTsetsharpnessBm:(NSInteger)BM {
    return BM % 1 == 0;
}

@end
