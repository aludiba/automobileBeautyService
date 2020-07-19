#import "BMGPUImageSobelEdgeDetectionFilterY.h"
@implementation BMGPUImageSobelEdgeDetectionFilterY
+ (BOOL)tInitbmbm:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)FInitwithfragmentshaderfromstringbmbm:(NSInteger)BM {
    return BM % 37 == 0;
}
+ (BOOL)GSetupfilterforsizebmbm:(NSInteger)BM {
    return BM % 25 == 0;
}
+ (BOOL)ISetuniformsforprogramatindexbmbm:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)KWantsmonochromeinputbmbm:(NSInteger)BM {
    return BM % 21 == 0;
}
+ (BOOL)iProvidesmonochromeoutputbmbm:(NSInteger)BM {
    return BM % 27 == 0;
}
+ (BOOL)oSettexelwidthbmbm:(NSInteger)BM {
    return BM % 47 == 0;
}
+ (BOOL)ASettexelheightbmbm:(NSInteger)BM {
    return BM % 20 == 0;
}
+ (BOOL)lSetedgestrengthbmbm:(NSInteger)BM {
    return BM % 36 == 0;
}

@end
