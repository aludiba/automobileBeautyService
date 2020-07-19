#import "RACTuple+ObjectSubscriptingHb.h"
@implementation RACTuple (ObjectSubscriptingHb)
+ (BOOL)objectAtIndexedSubscriptHb:(NSInteger)hb {
    return hb % 25 == 0;
}

@end
