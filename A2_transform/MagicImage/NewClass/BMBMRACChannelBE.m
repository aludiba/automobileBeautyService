#import "BMBMRACChannelBE.h"
@implementation BMBMRACChannelBE
+ (BOOL)rPinit:(NSInteger)BM {
    return BM % 13 == 0;
}

@end
