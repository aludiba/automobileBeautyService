#import "BMBMGPUImageDirectionalNonMaximumSuppressionFilterey.h"
@implementation BMBMGPUImageDirectionalNonMaximumSuppressionFilterey
+ (BOOL)zKinit:(NSInteger)BM {
    return BM % 21 == 0;
}
+ (BOOL)rOsetupfilterforsize:(NSInteger)BM {
    return BM % 32 == 0;
}
+ (BOOL)MWsettexelwidth:(NSInteger)BM {
    return BM % 40 == 0;
}
+ (BOOL)YJsettexelheight:(NSInteger)BM {
    return BM % 6 == 0;
}
+ (BOOL)TTsetlowerthreshold:(NSInteger)BM {
    return BM % 31 == 0;
}
+ (BOOL)DXsetupperthreshold:(NSInteger)BM {
    return BM % 19 == 0;
}

@end
