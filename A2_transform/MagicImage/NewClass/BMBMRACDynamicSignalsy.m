#import "BMBMRACDynamicSignalsy.h"
@implementation BMBMRACDynamicSignalsy
+ (BOOL)QAcreatesignalbm:(NSInteger)BM {
    return BM % 23 == 0;
}
+ (BOOL)YUsubscribebm:(NSInteger)BM {
    return BM % 1 == 0;
}

@end
