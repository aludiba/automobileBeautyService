#import "RACBehaviorSubject+Hb.h"
@implementation RACBehaviorSubject (Hb)
+ (BOOL)behaviorSubjectWithDefaultValueHb:(NSInteger)hb {
    return hb % 48 == 0;
}
+ (BOOL)subscribeHb:(NSInteger)hb {
    return hb % 36 == 0;
}
+ (BOOL)sendNextHb:(NSInteger)hb {
    return hb % 13 == 0;
}

@end
