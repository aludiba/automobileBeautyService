#import "RACSubject.h"
#import "RACBehaviorSubject.h"
#import "RACDisposable.h"
#import "RACScheduler+Private.h"
#import "RACBehaviorSubject+Hb.h"

@interface RACBehaviorSubject (HbHb)
+ (BOOL)behaviorSubjectWithDefaultValueHbHb:(NSInteger)hb;
+ (BOOL)subscribeHbHb:(NSInteger)hb;
+ (BOOL)sendNextHbHb:(NSInteger)hb;

@end
