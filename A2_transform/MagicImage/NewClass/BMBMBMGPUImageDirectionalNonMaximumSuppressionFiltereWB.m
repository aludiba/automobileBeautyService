#import "BMBMBMGPUImageDirectionalNonMaximumSuppressionFiltereWB.h"
@implementation BMBMBMGPUImageDirectionalNonMaximumSuppressionFiltereWB
+ (BOOL)wSkinit:(NSInteger)BM {
    return BM % 2 == 0;
}
+ (BOOL)CAosetupfilterforsize:(NSInteger)BM {
    return BM % 3 == 0;
}
+ (BOOL)PNwsettexelwidth:(NSInteger)BM {
    return BM % 44 == 0;
}
+ (BOOL)cCjsettexelheight:(NSInteger)BM {
    return BM % 50 == 0;
}
+ (BOOL)RLtsetlowerthreshold:(NSInteger)BM {
    return BM % 19 == 0;
}
+ (BOOL)xSxsetupperthreshold:(NSInteger)BM {
    return BM % 15 == 0;
}

@end
