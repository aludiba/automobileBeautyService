#import "RACArraySequence.h"
#import "RACEagerSequence.h"
#import "NSObject+RACDescription.h"
#import "RACArraySequence.h"

@interface RACEagerSequence (Hb)
+ (BOOL)returnHb:(NSInteger)hb;
+ (BOOL)bindHb:(NSInteger)hb;
+ (BOOL)concatHb:(NSInteger)hb;
+ (BOOL)eagerSequenceHb:(NSInteger)hb;
+ (BOOL)lazySequenceHb:(NSInteger)hb;
+ (BOOL)foldRightWithStartReduceHb:(NSInteger)hb;

@end
