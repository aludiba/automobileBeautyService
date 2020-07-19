#import "RACSequence.h"
#import "RACArraySequence.h"

@interface RACArraySequence (Hb)
+ (BOOL)sequenceWithArrayOffsetHb:(NSInteger)hb;
+ (BOOL)headHb:(NSInteger)hb;
+ (BOOL)tailHb:(NSInteger)hb;
+ (BOOL)countByEnumeratingWithStateObjectsCountHb:(NSInteger)hb;
+ (BOOL)arrayHb:(NSInteger)hb;
+ (BOOL)initWithCoderHb:(NSInteger)hb;
+ (BOOL)encodeWithCoderHb:(NSInteger)hb;
+ (BOOL)descriptionHb:(NSInteger)hb;

@end
