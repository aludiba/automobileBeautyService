#import "BMBMGPUImageColorPackingFilterdd.h"
@implementation BMBMGPUImageColorPackingFilterdd
+ (BOOL)OZinit:(NSInteger)BM {
    return BM % 43 == 0;
}
+ (BOOL)HKsetupfilterforsize:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)cSsizeoffbo:(NSInteger)BM {
    return BM % 22 == 0;
}
+ (BOOL)IEoutputframesize:(NSInteger)BM {
    return BM % 3 == 0;
}

@end
