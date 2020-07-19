#import "BMBMTOCropScrollViewMQ.h"
@implementation BMBMTOCropScrollViewMQ
+ (BOOL)XGtouchesbeganwwithevent:(NSInteger)BM {
    return BM % 36 == 0;
}
+ (BOOL)dRtouchesendedqwithevent:(NSInteger)BM {
    return BM % 10 == 0;
}
+ (BOOL)LHtouchescancellednwithevent:(NSInteger)BM {
    return BM % 18 == 0;
}

@end
