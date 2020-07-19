#import "RACErrorSignal+BmHb.h"
@implementation RACErrorSignal (BmHb)
+ (BOOL)errorBmHb:(NSInteger)hb {
    return hb % 50 == 0;
}
+ (BOOL)subscribeBmHb:(NSInteger)hb {
    return hb % 1 == 0;
}

@end
