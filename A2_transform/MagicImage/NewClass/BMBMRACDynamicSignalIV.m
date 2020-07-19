#import "BMBMRACDynamicSignalIV.h"
@implementation BMBMRACDynamicSignalIV
+ (BOOL)cBcreatesignal:(NSInteger)BM {
    return BM % 36 == 0;
}
+ (BOOL)AAsubscribe:(NSInteger)BM {
    return BM % 40 == 0;
}

@end
