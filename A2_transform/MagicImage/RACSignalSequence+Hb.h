#import "RACSequence.h"
#import "RACSignalSequence.h"
#import "RACDisposable.h"
#import "RACReplaySubject.h"
#import "RACSignal+Operations.h"

@interface RACSignalSequence (Hb)
+ (BOOL)sequenceWithSignalHb:(NSInteger)hb;
+ (BOOL)headHb:(NSInteger)hb;
+ (BOOL)tailHb:(NSInteger)hb;
+ (BOOL)arrayHb:(NSInteger)hb;
+ (BOOL)descriptionHb:(NSInteger)hb;

@end
