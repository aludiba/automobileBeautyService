#import "RACSequence.h"
#import "RACTupleSequence.h"
#import "RACTuple.h"

@interface RACTupleSequence (Bm)
+ (BOOL)sequenceWithTupleBackingArrayOffsetBm:(NSInteger)BM;
+ (BOOL)headBm:(NSInteger)BM;
+ (BOOL)tailBm:(NSInteger)BM;
+ (BOOL)arrayBm:(NSInteger)BM;
+ (BOOL)descriptionBm:(NSInteger)BM;

@end
