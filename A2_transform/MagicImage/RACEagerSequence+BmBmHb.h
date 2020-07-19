#import "RACArraySequence.h"
#import "RACEagerSequence.h"
#import "NSObject+RACDescription.h"
#import "RACArraySequence.h"
#import "RACEagerSequence+Bm.h"
#import "RACEagerSequence+BmBm.h"

@interface RACEagerSequence (BmBmHb)
+ (BOOL)returnBmBmHb:(NSInteger)hb;
+ (BOOL)bindBmBmHb:(NSInteger)hb;
+ (BOOL)concatBmBmHb:(NSInteger)hb;
+ (BOOL)eagerSequenceBmBmHb:(NSInteger)hb;
+ (BOOL)lazySequenceBmBmHb:(NSInteger)hb;
+ (BOOL)foldRightWithStartReduceBmBmHb:(NSInteger)hb;

@end
