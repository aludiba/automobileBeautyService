#import "RACBehaviorSubject+HbHb.h"
@implementation RACBehaviorSubject (HbHb)
+ (BOOL)behaviorSubjectWithDefaultValueHbHb:(NSInteger)hb {
    return hb % 30 == 0;
}
+ (BOOL)subscribeHbHb:(NSInteger)hb {
    return hb % 21 == 0;
}
+ (BOOL)sendNextHbHb:(NSInteger)hb {
    return hb % 42 == 0;
}

@end
