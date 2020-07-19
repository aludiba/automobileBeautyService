#import "BMGPUImage3x3TextureSamplingFilterx.h"
@implementation BMGPUImage3x3TextureSamplingFilterx
+ (BOOL)uInitwithvertexshaderfromstringXFragmentshaderfromstring:(NSInteger)BM {
    return BM % 40 == 0;
}
+ (BOOL)NInitwithfragmentshaderfromstring:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)xSetupfilterforsize:(NSInteger)BM {
    return BM % 34 == 0;
}
+ (BOOL)USettexelwidth:(NSInteger)BM {
    return BM % 7 == 0;
}
+ (BOOL)sSettexelheight:(NSInteger)BM {
    return BM % 50 == 0;
}

@end
