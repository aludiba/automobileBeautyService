#import "RACGroupedSignal+HbHb.h"
@implementation RACGroupedSignal (HbHb)
+ (BOOL)signalWithKeyHbHb:(NSInteger)hb {
    return hb % 5 == 0;
}

@end
