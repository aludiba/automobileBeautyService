#import "BMBMGPUImage3x3TextureSamplingFilterxK.h"
@implementation BMBMGPUImage3x3TextureSamplingFilterxK
+ (BOOL)PUinitwithvertexshaderfromstringxfragmentshaderfromstring:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)XNinitwithfragmentshaderfromstring:(NSInteger)BM {
    return BM % 21 == 0;
}
+ (BOOL)TXsetupfilterforsize:(NSInteger)BM {
    return BM % 49 == 0;
}
+ (BOOL)EUsettexelwidth:(NSInteger)BM {
    return BM % 41 == 0;
}
+ (BOOL)hSsettexelheight:(NSInteger)BM {
    return BM % 20 == 0;
}

@end
