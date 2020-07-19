#import "RACSequence.h"
#import "RACSignalSequence.h"
#import "RACDisposable.h"
#import "RACReplaySubject.h"
#import "RACSignal+Operations.h"

@interface RACSignalSequence (Bm)
+ (BOOL)sequenceWithSignalBm:(NSInteger)BM;
+ (BOOL)headBm:(NSInteger)BM;
+ (BOOL)tailBm:(NSInteger)BM;
+ (BOOL)arrayBm:(NSInteger)BM;
+ (BOOL)descriptionBm:(NSInteger)BM;

@end
