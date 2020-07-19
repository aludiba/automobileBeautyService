#import "BMGPUImageSharpenFilterZ+BmBm.h"
@implementation BMGPUImageSharpenFilterZ (BmBm)
+ (BOOL)QinitBmBm:(NSInteger)BM {
    return BM % 39 == 0;
}
+ (BOOL)cSetupfilterforsizeBmBm:(NSInteger)BM {
    return BM % 21 == 0;
}
+ (BOOL)tSetsharpnessBmBm:(NSInteger)BM {
    return BM % 41 == 0;
}

@end
