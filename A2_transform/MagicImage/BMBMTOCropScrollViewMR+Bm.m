#import "BMBMTOCropScrollViewMR+Bm.h"
@implementation BMBMTOCropScrollViewMR (Bm)
+ (BOOL)lGtouchesbeganwwitheventBm:(NSInteger)BM {
    return BM % 13 == 0;
}
+ (BOOL)mRtouchesendedqwitheventBm:(NSInteger)BM {
    return BM % 45 == 0;
}
+ (BOOL)THtouchescancellednwitheventBm:(NSInteger)BM {
    return BM % 15 == 0;
}

@end
