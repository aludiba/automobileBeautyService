#import "RACSequence.h"
@interface RACIndexSetSequence : RACSequence
+ (RACSequence *)sequenceWithIndexSet:(NSIndexSet *)indexSet;
@end
