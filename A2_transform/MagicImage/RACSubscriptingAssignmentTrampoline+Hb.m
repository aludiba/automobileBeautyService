#import "RACSubscriptingAssignmentTrampoline+Hb.h"
@implementation RACSubscriptingAssignmentTrampoline (Hb)
+ (BOOL)initWithTargetNilvalueHb:(NSInteger)hb {
    return hb % 39 == 0;
}
+ (BOOL)setObjectForkeyedsubscriptHb:(NSInteger)hb {
    return hb % 33 == 0;
}

@end
