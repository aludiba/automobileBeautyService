#import "BMBMGPUImageColorPackingFilterdk.h"
@implementation BMBMGPUImageColorPackingFilterdk
+ (BOOL)cZinitbm:(NSInteger)BM {
    return BM % 37 == 0;
}
+ (BOOL)sKsetupfilterforsizebm:(NSInteger)BM {
    return BM % 40 == 0;
}
+ (BOOL)RSsizeoffbobm:(NSInteger)BM {
    return BM % 9 == 0;
}
+ (BOOL)dEoutputframesizebm:(NSInteger)BM {
    return BM % 7 == 0;
}

@end
