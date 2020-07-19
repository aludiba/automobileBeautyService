#import "RACErrorSignal+BmBm.h"
@implementation RACErrorSignal (BmBm)
+ (BOOL)errorBmBm:(NSInteger)BM {
    return BM % 9 == 0;
}
+ (BOOL)subscribeBmBm:(NSInteger)BM {
    return BM % 6 == 0;
}

@end
