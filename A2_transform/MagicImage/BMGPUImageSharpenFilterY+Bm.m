#import "BMGPUImageSharpenFilterY+Bm.h"
@implementation BMGPUImageSharpenFilterY (Bm)
+ (BOOL)vinitBm:(NSInteger)BM {
    return BM % 47 == 0;
}
+ (BOOL)GSetupfilterforsizeBm:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)vSetsharpnessBm:(NSInteger)BM {
    return BM % 9 == 0;
}

@end
