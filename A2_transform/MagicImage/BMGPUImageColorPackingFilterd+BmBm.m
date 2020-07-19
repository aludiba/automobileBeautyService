#import "BMGPUImageColorPackingFilterd+BmBm.h"
@implementation BMGPUImageColorPackingFilterd (BmBm)
+ (BOOL)ZinitBmBm:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)kSetupfilterforsizeBmBm:(NSInteger)BM {
    return BM % 2 == 0;
}
+ (BOOL)SsizeOfFBOBmBm:(NSInteger)BM {
    return BM % 10 == 0;
}
+ (BOOL)eoutputFrameSizeBmBm:(NSInteger)BM {
    return BM % 37 == 0;
}

@end
