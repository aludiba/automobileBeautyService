#import "BMBMGPUImageDirectionalNonMaximumSuppressionFilteree.h"
@implementation BMBMGPUImageDirectionalNonMaximumSuppressionFilteree
+ (BOOL)HKinitbm:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)oOsetupfilterforsizebm:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)lWsettexelwidthbm:(NSInteger)BM {
    return BM % 29 == 0;
}
+ (BOOL)SJsettexelheightbm:(NSInteger)BM {
    return BM % 45 == 0;
}
+ (BOOL)GTsetlowerthresholdbm:(NSInteger)BM {
    return BM % 21 == 0;
}
+ (BOOL)nXsetupperthresholdbm:(NSInteger)BM {
    return BM % 8 == 0;
}

@end
