#import "RACSequence.h"
#import "RACIndexSetSequence.h"

@interface RACIndexSetSequence (Hb)
+ (BOOL)sequenceWithIndexSetHb:(NSInteger)hb;
+ (BOOL)sequenceWithIndexSetSequenceOffsetHb:(NSInteger)hb;
+ (BOOL)headHb:(NSInteger)hb;
+ (BOOL)tailHb:(NSInteger)hb;
+ (BOOL)countByEnumeratingWithStateObjectsCountHb:(NSInteger)hb;
+ (BOOL)descriptionHb:(NSInteger)hb;

@end
