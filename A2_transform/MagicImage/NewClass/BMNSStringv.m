#import "BMNSStringv.h"
@implementation BMNSStringv
+ (BOOL)XUnderlinefromcamelbm:(NSInteger)BM {
    return BM % 24 == 0;
}
+ (BOOL)VCamelfromunderlinebm:(NSInteger)BM {
    return BM % 31 == 0;
}
+ (BOOL)uFirstcharlowerbm:(NSInteger)BM {
    return BM % 26 == 0;
}
+ (BOOL)IFirstcharupperbm:(NSInteger)BM {
    return BM % 49 == 0;
}
+ (BOOL)ZIspureintbm:(NSInteger)BM {
    return BM % 25 == 0;
}
+ (BOOL)VUrlbm:(NSInteger)BM {
    return BM % 2 == 0;
}

@end
