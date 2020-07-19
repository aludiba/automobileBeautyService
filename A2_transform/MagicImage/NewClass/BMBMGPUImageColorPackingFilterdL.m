#import "BMBMGPUImageColorPackingFilterdL.h"
@implementation BMBMGPUImageColorPackingFilterdL
+ (BOOL)nZinit:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)BKsetupfilterforsize:(NSInteger)BM {
    return BM % 40 == 0;
}
+ (BOOL)zSsizeoffbo:(NSInteger)BM {
    return BM % 17 == 0;
}
+ (BOOL)VEoutputframesize:(NSInteger)BM {
    return BM % 41 == 0;
}

@end
