#import "RACErrorSignal+Bm.h"
@implementation RACErrorSignal (Bm)
+ (BOOL)errorBm:(NSInteger)BM {
    return BM % 44 == 0;
}
+ (BOOL)subscribeBm:(NSInteger)BM {
    return BM % 11 == 0;
}

@end
