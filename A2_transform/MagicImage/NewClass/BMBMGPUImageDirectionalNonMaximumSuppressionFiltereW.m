#import "BMBMGPUImageDirectionalNonMaximumSuppressionFiltereW.h"
@implementation BMBMGPUImageDirectionalNonMaximumSuppressionFiltereW
+ (BOOL)sKinit:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)aOsetupfilterforsize:(NSInteger)BM {
    return BM % 21 == 0;
}
+ (BOOL)nWsettexelwidth:(NSInteger)BM {
    return BM % 44 == 0;
}
+ (BOOL)cJsettexelheight:(NSInteger)BM {
    return BM % 18 == 0;
}
+ (BOOL)lTsetlowerthreshold:(NSInteger)BM {
    return BM % 42 == 0;
}
+ (BOOL)SXsetupperthreshold:(NSInteger)BM {
    return BM % 36 == 0;
}

@end
