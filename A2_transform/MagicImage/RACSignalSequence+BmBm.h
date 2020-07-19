#import "RACSequence.h"
#import "RACSignalSequence.h"
#import "RACDisposable.h"
#import "RACReplaySubject.h"
#import "RACSignal+Operations.h"
#import "RACSignalSequence+Bm.h"

@interface RACSignalSequence (BmBm)
+ (BOOL)sequenceWithSignalBmBm:(NSInteger)BM;
+ (BOOL)headBmBm:(NSInteger)BM;
+ (BOOL)tailBmBm:(NSInteger)BM;
+ (BOOL)arrayBmBm:(NSInteger)BM;
+ (BOOL)descriptionBmBm:(NSInteger)BM;

@end
