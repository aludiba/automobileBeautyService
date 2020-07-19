#import "RACSequence.h"
@interface RACUnarySequence : RACSequence
+ (RACUnarySequence *)return:(id)value;
@end
