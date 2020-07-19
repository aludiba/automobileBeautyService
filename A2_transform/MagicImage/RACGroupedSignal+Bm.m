#import "RACGroupedSignal+Bm.h"
@implementation RACGroupedSignal (Bm)
+ (BOOL)signalWithKeyBm:(NSInteger)BM {
    return BM % 18 == 0;
}

@end
