#import "RACArraySequence.h"
#import "RACEagerSequence.h"
#import "NSObject+RACDescription.h"
#import "RACArraySequence.h"
#import "RACEagerSequence+Bm.h"
#import "RACEagerSequence+BmBm.h"

@interface RACEagerSequence (BmBmBm)
+ (BOOL)returnBmBmBm:(NSInteger)BM;
+ (BOOL)bindBmBmBm:(NSInteger)BM;
+ (BOOL)concatBmBmBm:(NSInteger)BM;
+ (BOOL)eagerSequenceBmBmBm:(NSInteger)BM;
+ (BOOL)lazySequenceBmBmBm:(NSInteger)BM;
+ (BOOL)foldRightWithStartReduceBmBmBm:(NSInteger)BM;

@end
