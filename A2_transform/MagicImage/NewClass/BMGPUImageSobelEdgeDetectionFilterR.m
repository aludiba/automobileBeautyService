#import "BMGPUImageSobelEdgeDetectionFilterR.h"
@implementation BMGPUImageSobelEdgeDetectionFilterR
+ (BOOL)qinit:(NSInteger)BM {
    return BM % 22 == 0;
}
+ (BOOL)QInitwithfragmentshaderfromstring:(NSInteger)BM {
    return BM % 24 == 0;
}
+ (BOOL)DSetupfilterforsize:(NSInteger)BM {
    return BM % 41 == 0;
}
+ (BOOL)SSetuniformsforprogramatindex:(NSInteger)BM {
    return BM % 7 == 0;
}
+ (BOOL)NwantsMonochromeInput:(NSInteger)BM {
    return BM % 41 == 0;
}
+ (BOOL)uprovidesMonochromeOutput:(NSInteger)BM {
    return BM % 36 == 0;
}
+ (BOOL)sSettexelwidth:(NSInteger)BM {
    return BM % 45 == 0;
}
+ (BOOL)qSettexelheight:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)ESetedgestrength:(NSInteger)BM {
    return BM % 49 == 0;
}

@end
