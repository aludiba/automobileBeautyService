#import "RACSubject.h"
#import "RACBehaviorSubject.h"
#import "RACDisposable.h"
#import "RACScheduler+Private.h"

@interface RACBehaviorSubject (Hb)
+ (BOOL)behaviorSubjectWithDefaultValueHb:(NSInteger)hb;
+ (BOOL)subscribeHb:(NSInteger)hb;
+ (BOOL)sendNextHb:(NSInteger)hb;

@end
