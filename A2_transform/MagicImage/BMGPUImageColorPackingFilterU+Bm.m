#import "BMGPUImageColorPackingFilterU+Bm.h"
@implementation BMGPUImageColorPackingFilterU (Bm)
+ (BOOL)yinitBm:(NSInteger)BM {
    return BM % 24 == 0;
}
+ (BOOL)xSetupfilterforsizeBm:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)psizeOfFBOBm:(NSInteger)BM {
    return BM % 13 == 0;
}
+ (BOOL)koutputFrameSizeBm:(NSInteger)BM {
    return BM % 43 == 0;
}

@end
