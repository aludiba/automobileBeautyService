#import "BMGPUImageDirectionalNonMaximumSuppressionFiltere.h"
@implementation BMGPUImageDirectionalNonMaximumSuppressionFiltere
+ (BOOL)Kinit:(NSInteger)BM {
    return BM % 41 == 0;
}
+ (BOOL)oSetupfilterforsize:(NSInteger)BM {
    return BM % 36 == 0;
}
+ (BOOL)wSettexelwidth:(NSInteger)BM {
    return BM % 39 == 0;
}
+ (BOOL)JSettexelheight:(NSInteger)BM {
    return BM % 21 == 0;
}
+ (BOOL)TSetlowerthreshold:(NSInteger)BM {
    return BM % 5 == 0;
}
+ (BOOL)XSetupperthreshold:(NSInteger)BM {
    return BM % 28 == 0;
}

@end
