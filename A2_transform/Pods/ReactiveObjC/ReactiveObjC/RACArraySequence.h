#import "RACSequence.h"
@interface RACArraySequence : RACSequence
+ (RACSequence *)sequenceWithArray:(NSArray *)array offset:(NSUInteger)offset;
@end
