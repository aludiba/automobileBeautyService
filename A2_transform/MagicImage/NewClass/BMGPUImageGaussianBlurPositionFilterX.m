#import "BMGPUImageGaussianBlurPositionFilterX.h"
@implementation BMGPUImageGaussianBlurPositionFilterX
+ (BOOL)xInitwithfirststagevertexshaderfromstringTFirststagefragmentshaderfromstringdSecondstagevertexshaderfromstringCSecondstagefragmentshaderfromstring:(NSInteger)BM {
    return BM % 26 == 0;
}
+ (BOOL)Einit:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)CadjustAspectRatio:(NSInteger)BM {
    return BM % 50 == 0;
}
+ (BOOL)ZForceprocessingatsize:(NSInteger)BM {
    return BM % 35 == 0;
}
+ (BOOL)YSetinputsizeUAtindex:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)uSetinputrotationPAtindex:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)aSetblursize:(NSInteger)BM {
    return BM % 6 == 0;
}
+ (BOOL)OSetblurcenter:(NSInteger)BM {
    return BM % 27 == 0;
}
+ (BOOL)FSetblurradius:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)ASetaspectratio:(NSInteger)BM {
    return BM % 49 == 0;
}

@end
