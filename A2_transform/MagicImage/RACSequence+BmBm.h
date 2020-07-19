#import <Foundation/Foundation.h>
#import "RACStream.h"
#import "RACSequence.h"
#import "RACArraySequence.h"
#import "RACDynamicSequence.h"
#import "RACEagerSequence.h"
#import "RACEmptySequence.h"
#import "RACScheduler.h"
#import "RACSignal.h"
#import "RACSubscriber.h"
#import "RACTuple.h"
#import "RACUnarySequence.h"
#import "RACSequence+Bm.h"

@interface RACSequence (BmBm)
+ (BOOL)sequenceWithHeadBlockTailblockBmBm:(NSInteger)BM;
+ (BOOL)headBmBm:(NSInteger)BM;
+ (BOOL)tailBmBm:(NSInteger)BM;
+ (BOOL)emptyBmBm:(NSInteger)BM;
+ (BOOL)returnBmBm:(NSInteger)BM;
+ (BOOL)bindBmBm:(NSInteger)BM;
+ (BOOL)bindPassingthroughvaluesfromsequenceBmBm:(NSInteger)BM;
+ (BOOL)concatBmBm:(NSInteger)BM;
+ (BOOL)zipWithBmBm:(NSInteger)BM;
+ (BOOL)arrayBmBm:(NSInteger)BM;
+ (BOOL)objectEnumeratorBmBm:(NSInteger)BM;
+ (BOOL)signalBmBm:(NSInteger)BM;
+ (BOOL)signalWithSchedulerBmBm:(NSInteger)BM;
+ (BOOL)foldLeftWithStartReduceBmBm:(NSInteger)BM;
+ (BOOL)foldRightWithStartReduceBmBm:(NSInteger)BM;
+ (BOOL)anyBmBm:(NSInteger)BM;
+ (BOOL)allBmBm:(NSInteger)BM;
+ (BOOL)objectPassingTestBmBm:(NSInteger)BM;
+ (BOOL)eagerSequenceBmBm:(NSInteger)BM;
+ (BOOL)lazySequenceBmBm:(NSInteger)BM;
+ (BOOL)copyWithZoneBmBm:(NSInteger)BM;
+ (BOOL)classForCoderBmBm:(NSInteger)BM;
+ (BOOL)initWithCoderBmBm:(NSInteger)BM;
+ (BOOL)encodeWithCoderBmBm:(NSInteger)BM;
+ (BOOL)countByEnumeratingWithStateObjectsCountBmBm:(NSInteger)BM;
+ (BOOL)hashBmBm:(NSInteger)BM;
+ (BOOL)isEqualBmBm:(NSInteger)BM;

@end
