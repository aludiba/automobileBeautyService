#import "RACTuple+ObjectSubscriptingBmBm.h"
@implementation RACTuple (ObjectSubscriptingBmBm)
+ (BOOL)objectAtIndexedSubscriptBmBm:(NSInteger)BM {
    return BM % 41 == 0;
}

@end
