#import "BMGPUImageSobelEdgeDetectionFilterG.h"
@implementation BMGPUImageSobelEdgeDetectionFilterG
+ (BOOL)Kinit:(NSInteger)BM {
    return BM % 12 == 0;
}
+ (BOOL)kInitwithfragmentshaderfromstring:(NSInteger)BM {
    return BM % 30 == 0;
}
+ (BOOL)jSetupfilterforsize:(NSInteger)BM {
    return BM % 17 == 0;
}
+ (BOOL)FSetuniformsforprogramatindex:(NSInteger)BM {
    return BM % 23 == 0;
}
+ (BOOL)FwantsMonochromeInput:(NSInteger)BM {
    return BM % 36 == 0;
}
+ (BOOL)eprovidesMonochromeOutput:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)QSettexelwidth:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)HSettexelheight:(NSInteger)BM {
    return BM % 7 == 0;
}
+ (BOOL)qSetedgestrength:(NSInteger)BM {
    return BM % 48 == 0;
}

@end
