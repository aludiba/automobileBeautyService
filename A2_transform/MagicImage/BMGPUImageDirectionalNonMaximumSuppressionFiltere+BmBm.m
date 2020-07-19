#import "BMGPUImageDirectionalNonMaximumSuppressionFiltere+BmBm.h"
@implementation BMGPUImageDirectionalNonMaximumSuppressionFiltere (BmBm)
+ (BOOL)KinitBmBm:(NSInteger)BM {
    return BM % 11 == 0;
}
+ (BOOL)oSetupfilterforsizeBmBm:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)wSettexelwidthBmBm:(NSInteger)BM {
    return BM % 36 == 0;
}
+ (BOOL)JSettexelheightBmBm:(NSInteger)BM {
    return BM % 50 == 0;
}
+ (BOOL)TSetlowerthresholdBmBm:(NSInteger)BM {
    return BM % 45 == 0;
}
+ (BOOL)XSetupperthresholdBmBm:(NSInteger)BM {
    return BM % 19 == 0;
}

@end
