#import "BMGPUImageDirectionalNonMaximumSuppressionFiltere+BmHb.h"
@implementation BMGPUImageDirectionalNonMaximumSuppressionFiltere (BmHb)
+ (BOOL)KinitBmHb:(NSInteger)hb {
    return hb % 32 == 0;
}
+ (BOOL)oSetupfilterforsizeBmHb:(NSInteger)hb {
    return hb % 33 == 0;
}
+ (BOOL)wSettexelwidthBmHb:(NSInteger)hb {
    return hb % 46 == 0;
}
+ (BOOL)JSettexelheightBmHb:(NSInteger)hb {
    return hb % 28 == 0;
}
+ (BOOL)TSetlowerthresholdBmHb:(NSInteger)hb {
    return hb % 24 == 0;
}
+ (BOOL)XSetupperthresholdBmHb:(NSInteger)hb {
    return hb % 30 == 0;
}

@end
