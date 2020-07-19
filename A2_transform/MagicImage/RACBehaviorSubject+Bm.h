#import "RACSubject.h"
#import "RACBehaviorSubject.h"
#import "RACDisposable.h"
#import "RACScheduler+Private.h"

@interface RACBehaviorSubject (Bm)
+ (BOOL)behaviorSubjectWithDefaultValueBm:(NSInteger)BM;
+ (BOOL)subscribeBm:(NSInteger)BM;
+ (BOOL)sendNextBm:(NSInteger)BM;

@end
