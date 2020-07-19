#import "RACSequence.h"
#import "RACIndexSetSequence.h"

@interface RACIndexSetSequence (Bm)
+ (BOOL)sequenceWithIndexSetBm:(NSInteger)BM;
+ (BOOL)sequenceWithIndexSetSequenceOffsetBm:(NSInteger)BM;
+ (BOOL)headBm:(NSInteger)BM;
+ (BOOL)tailBm:(NSInteger)BM;
+ (BOOL)countByEnumeratingWithStateObjectsCountBm:(NSInteger)BM;
+ (BOOL)descriptionBm:(NSInteger)BM;

@end
