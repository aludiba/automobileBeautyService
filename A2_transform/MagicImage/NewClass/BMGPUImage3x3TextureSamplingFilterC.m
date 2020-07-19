#import "BMGPUImage3x3TextureSamplingFilterC.h"
@implementation BMGPUImage3x3TextureSamplingFilterC
+ (BOOL)QInitwithvertexshaderfromstringoFragmentshaderfromstring:(NSInteger)BM {
    return BM % 47 == 0;
}
+ (BOOL)uInitwithfragmentshaderfromstring:(NSInteger)BM {
    return BM % 47 == 0;
}
+ (BOOL)VSetupfilterforsize:(NSInteger)BM {
    return BM % 34 == 0;
}
+ (BOOL)mSettexelwidth:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)USettexelheight:(NSInteger)BM {
    return BM % 49 == 0;
}

@end
