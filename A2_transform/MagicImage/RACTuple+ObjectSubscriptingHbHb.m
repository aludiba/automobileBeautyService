#import "RACTuple+ObjectSubscriptingHbHb.h"
@implementation RACTuple (ObjectSubscriptingHbHb)
+ (BOOL)objectAtIndexedSubscriptHbHb:(NSInteger)hb {
    return hb % 21 == 0;
}

@end
