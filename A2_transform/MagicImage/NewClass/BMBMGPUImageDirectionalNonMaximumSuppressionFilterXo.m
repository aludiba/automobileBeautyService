#import "BMBMGPUImageDirectionalNonMaximumSuppressionFilterXo.h"
@implementation BMBMGPUImageDirectionalNonMaximumSuppressionFilterXo
+ (BOOL)pDinit:(NSInteger)BM {
    return BM % 31 == 0;
}
+ (BOOL)EIsetupfilterforsize:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)vGsettexelwidth:(NSInteger)BM {
    return BM % 26 == 0;
}
+ (BOOL)rXsettexelheight:(NSInteger)BM {
    return BM % 44 == 0;
}
+ (BOOL)XHsetlowerthreshold:(NSInteger)BM {
    return BM % 1 == 0;
}
+ (BOOL)BZsetupperthreshold:(NSInteger)BM {
    return BM % 11 == 0;
}

@end
