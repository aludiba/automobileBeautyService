#import "RACSequence.h"
#import "RACTupleSequence.h"
#import "RACTuple.h"

@interface RACTupleSequence (Hb)
+ (BOOL)sequenceWithTupleBackingArrayOffsetHb:(NSInteger)hb;
+ (BOOL)headHb:(NSInteger)hb;
+ (BOOL)tailHb:(NSInteger)hb;
+ (BOOL)arrayHb:(NSInteger)hb;
+ (BOOL)descriptionHb:(NSInteger)hb;

@end
