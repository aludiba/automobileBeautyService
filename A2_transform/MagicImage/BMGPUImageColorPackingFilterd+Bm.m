#import "BMGPUImageColorPackingFilterd+Bm.h"
@implementation BMGPUImageColorPackingFilterd (Bm)
+ (BOOL)ZinitBm:(NSInteger)BM {
    return BM % 11 == 0;
}
+ (BOOL)kSetupfilterforsizeBm:(NSInteger)BM {
    return BM % 23 == 0;
}
+ (BOOL)SsizeOfFBOBm:(NSInteger)BM {
    return BM % 41 == 0;
}
+ (BOOL)eoutputFrameSizeBm:(NSInteger)BM {
    return BM % 32 == 0;
}

@end
