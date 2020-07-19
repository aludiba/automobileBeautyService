#import "RACTuple+ObjectSubscriptingBm.h"
@implementation RACTuple (ObjectSubscriptingBm)
+ (BOOL)objectAtIndexedSubscriptBm:(NSInteger)BM {
    return BM % 45 == 0;
}

@end
