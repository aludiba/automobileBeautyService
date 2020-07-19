#import "RACGroupedSignal+Hb.h"
@implementation RACGroupedSignal (Hb)
+ (BOOL)signalWithKeyHb:(NSInteger)hb {
    return hb % 44 == 0;
}

@end
