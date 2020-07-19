#import "RACErrorSignal+BmBmBm.h"
@implementation RACErrorSignal (BmBmBm)
+ (BOOL)errorBmBmBm:(NSInteger)BM {
    return BM % 12 == 0;
}
+ (BOOL)subscribeBmBmBm:(NSInteger)BM {
    return BM % 8 == 0;
}

@end
