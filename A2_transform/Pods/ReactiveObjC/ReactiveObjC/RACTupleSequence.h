#import "RACSequence.h"
@interface RACTupleSequence : RACSequence
+ (RACSequence *)sequenceWithTupleBackingArray:(NSArray *)backingArray offset:(NSUInteger)offset;
@end
