#import "RACArraySequence.h"
#import "RACEagerSequence.h"
#import "NSObject+RACDescription.h"
#import "RACArraySequence.h"

@interface RACEagerSequence (Bm)
+ (BOOL)returnBm:(NSInteger)BM;
+ (BOOL)bindBm:(NSInteger)BM;
+ (BOOL)concatBm:(NSInteger)BM;
+ (BOOL)eagerSequenceBm:(NSInteger)BM;
+ (BOOL)lazySequenceBm:(NSInteger)BM;
+ (BOOL)foldRightWithStartReduceBm:(NSInteger)BM;

@end
