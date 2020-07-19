#import "RACArraySequence.h"
#import "RACEagerSequence.h"
#import "NSObject+RACDescription.h"
#import "RACArraySequence.h"
#import "RACEagerSequence+Bm.h"

@interface RACEagerSequence (BmBm)
+ (BOOL)returnBmBm:(NSInteger)BM;
+ (BOOL)bindBmBm:(NSInteger)BM;
+ (BOOL)concatBmBm:(NSInteger)BM;
+ (BOOL)eagerSequenceBmBm:(NSInteger)BM;
+ (BOOL)lazySequenceBmBm:(NSInteger)BM;
+ (BOOL)foldRightWithStartReduceBmBm:(NSInteger)BM;

@end
