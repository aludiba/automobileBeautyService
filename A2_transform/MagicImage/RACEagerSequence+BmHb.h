#import "RACArraySequence.h"
#import "RACEagerSequence.h"
#import "NSObject+RACDescription.h"
#import "RACArraySequence.h"
#import "RACEagerSequence+Bm.h"

@interface RACEagerSequence (BmHb)
+ (BOOL)returnBmHb:(NSInteger)hb;
+ (BOOL)bindBmHb:(NSInteger)hb;
+ (BOOL)concatBmHb:(NSInteger)hb;
+ (BOOL)eagerSequenceBmHb:(NSInteger)hb;
+ (BOOL)lazySequenceBmHb:(NSInteger)hb;
+ (BOOL)foldRightWithStartReduceBmHb:(NSInteger)hb;

@end
