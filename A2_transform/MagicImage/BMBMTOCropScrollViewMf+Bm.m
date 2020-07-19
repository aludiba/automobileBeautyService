#import "BMBMTOCropScrollViewMf+Bm.h"
@implementation BMBMTOCropScrollViewMf (Bm)
+ (BOOL)pGtouchesbeganwwitheventbmBm:(NSInteger)BM {
    return BM % 17 == 0;
}
+ (BOOL)zRtouchesendedqwitheventbmBm:(NSInteger)BM {
    return BM % 12 == 0;
}
+ (BOOL)YHtouchescancellednwitheventbmBm:(NSInteger)BM {
    return BM % 25 == 0;
}

@end
