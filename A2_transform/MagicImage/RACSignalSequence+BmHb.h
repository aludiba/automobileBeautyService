#import "RACSequence.h"
#import "RACSignalSequence.h"
#import "RACDisposable.h"
#import "RACReplaySubject.h"
#import "RACSignal+Operations.h"
#import "RACSignalSequence+Bm.h"

@interface RACSignalSequence (BmHb)
+ (BOOL)sequenceWithSignalBmHb:(NSInteger)hb;
+ (BOOL)headBmHb:(NSInteger)hb;
+ (BOOL)tailBmHb:(NSInteger)hb;
+ (BOOL)arrayBmHb:(NSInteger)hb;
+ (BOOL)descriptionBmHb:(NSInteger)hb;

@end
