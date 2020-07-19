#import "BMGPUImageSobelEdgeDetectionFilters.h"
@implementation BMGPUImageSobelEdgeDetectionFilters
+ (BOOL)NInitbm:(NSInteger)BM {
    return BM % 21 == 0;
}
+ (BOOL)WInitwithfragmentshaderfromstringbm:(NSInteger)BM {
    return BM % 19 == 0;
}
+ (BOOL)VSetupfilterforsizebm:(NSInteger)BM {
    return BM % 30 == 0;
}
+ (BOOL)kSetuniformsforprogramatindexbm:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)PWantsmonochromeinputbm:(NSInteger)BM {
    return BM % 10 == 0;
}
+ (BOOL)SProvidesmonochromeoutputbm:(NSInteger)BM {
    return BM % 33 == 0;
}
+ (BOOL)eSettexelwidthbm:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)FSettexelheightbm:(NSInteger)BM {
    return BM % 30 == 0;
}
+ (BOOL)rSetedgestrengthbm:(NSInteger)BM {
    return BM % 26 == 0;
}

@end
