#import "BMGPUImageDirectionalNonMaximumSuppressionFilterh.h"
@implementation BMGPUImageDirectionalNonMaximumSuppressionFilterh
+ (BOOL)aInitbmbm:(NSInteger)BM {
    return BM % 20 == 0;
}
+ (BOOL)ESetupfilterforsizebmbm:(NSInteger)BM {
    return BM % 33 == 0;
}
+ (BOOL)BSettexelwidthbmbm:(NSInteger)BM {
    return BM % 13 == 0;
}
+ (BOOL)NSettexelheightbmbm:(NSInteger)BM {
    return BM % 49 == 0;
}
+ (BOOL)OSetlowerthresholdbmbm:(NSInteger)BM {
    return BM % 11 == 0;
}
+ (BOOL)ESetupperthresholdbmbm:(NSInteger)BM {
    return BM % 22 == 0;
}

@end
