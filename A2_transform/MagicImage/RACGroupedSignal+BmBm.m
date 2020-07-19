#import "RACGroupedSignal+BmBm.h"
@implementation RACGroupedSignal (BmBm)
+ (BOOL)signalWithKeyBmBm:(NSInteger)BM {
    return BM % 12 == 0;
}

@end
