#import "BMGPUImageDirectionalNonMaximumSuppressionFiltere+Bm.h"
@implementation BMGPUImageDirectionalNonMaximumSuppressionFiltere (Bm)
+ (BOOL)KinitBm:(NSInteger)BM {
    return BM % 36 == 0;
}
+ (BOOL)oSetupfilterforsizeBm:(NSInteger)BM {
    return BM % 7 == 0;
}
+ (BOOL)wSettexelwidthBm:(NSInteger)BM {
    return BM % 22 == 0;
}
+ (BOOL)JSettexelheightBm:(NSInteger)BM {
    return BM % 12 == 0;
}
+ (BOOL)TSetlowerthresholdBm:(NSInteger)BM {
    return BM % 22 == 0;
}
+ (BOOL)XSetupperthresholdBm:(NSInteger)BM {
    return BM % 29 == 0;
}

@end
