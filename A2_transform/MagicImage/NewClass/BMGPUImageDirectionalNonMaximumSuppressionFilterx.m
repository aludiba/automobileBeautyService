#import "BMGPUImageDirectionalNonMaximumSuppressionFilterX.h"
@implementation BMGPUImageDirectionalNonMaximumSuppressionFilterX
+ (BOOL)Dinit:(NSInteger)BM {
    return BM % 41 == 0;
}
+ (BOOL)ISetupfilterforsize:(NSInteger)BM {
    return BM % 44 == 0;
}
+ (BOOL)gSettexelwidth:(NSInteger)BM {
    return BM % 17 == 0;
}
+ (BOOL)XSettexelheight:(NSInteger)BM {
    return BM % 39 == 0;
}
+ (BOOL)HSetlowerthreshold:(NSInteger)BM {
    return BM % 5 == 0;
}
+ (BOOL)zSetupperthreshold:(NSInteger)BM {
    return BM % 50 == 0;
}

@end
