#import "BMGPUImageSobelEdgeDetectionFilterR+Bm.h"
@implementation BMGPUImageSobelEdgeDetectionFilterR (Bm)
+ (BOOL)qinitBm:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)QInitwithfragmentshaderfromstringBm:(NSInteger)BM {
    return BM % 40 == 0;
}
+ (BOOL)DSetupfilterforsizeBm:(NSInteger)BM {
    return BM % 37 == 0;
}
+ (BOOL)SSetuniformsforprogramatindexBm:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)NwantsMonochromeInputBm:(NSInteger)BM {
    return BM % 25 == 0;
}
+ (BOOL)uprovidesMonochromeOutputBm:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)sSettexelwidthBm:(NSInteger)BM {
    return BM % 13 == 0;
}
+ (BOOL)qSettexelheightBm:(NSInteger)BM {
    return BM % 40 == 0;
}
+ (BOOL)ESetedgestrengthBm:(NSInteger)BM {
    return BM % 8 == 0;
}

@end
