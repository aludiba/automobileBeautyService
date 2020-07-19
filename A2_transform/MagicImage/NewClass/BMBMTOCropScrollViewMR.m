#import "BMBMTOCropScrollViewMR.h"
@implementation BMBMTOCropScrollViewMR
+ (BOOL)lGtouchesbeganwwithevent:(NSInteger)BM {
    return BM % 1 == 0;
}
+ (BOOL)mRtouchesendedqwithevent:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)THtouchescancellednwithevent:(NSInteger)BM {
    return BM % 47 == 0;
}

@end
