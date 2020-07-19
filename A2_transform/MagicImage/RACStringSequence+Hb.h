#import "RACSequence.h"
#import "RACStringSequence.h"

@interface RACStringSequence (Hb)
+ (BOOL)sequenceWithStringOffsetHb:(NSInteger)hb;
+ (BOOL)headHb:(NSInteger)hb;
+ (BOOL)tailHb:(NSInteger)hb;
+ (BOOL)arrayHb:(NSInteger)hb;
+ (BOOL)descriptionHb:(NSInteger)hb;

@end
