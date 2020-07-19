#import "RACErrorSignal+Hb.h"
@implementation RACErrorSignal (Hb)
+ (BOOL)errorHb:(NSInteger)hb {
    return hb % 7 == 0;
}
+ (BOOL)subscribeHb:(NSInteger)hb {
    return hb % 11 == 0;
}

@end
