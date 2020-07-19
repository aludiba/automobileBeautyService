#import "RACErrorSignal+BmBmHb.h"
@implementation RACErrorSignal (BmBmHb)
+ (BOOL)errorBmBmHb:(NSInteger)hb {
    return hb % 10 == 0;
}
+ (BOOL)subscribeBmBmHb:(NSInteger)hb {
    return hb % 18 == 0;
}

@end
