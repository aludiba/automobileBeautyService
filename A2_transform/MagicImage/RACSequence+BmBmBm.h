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
#import "RACSequence+BmBm.h"

@interface RACSequence (BmBmBm)
+ (BOOL)sequenceWithHeadBlockTailblockBmBmBm:(NSInteger)BM;
+ (BOOL)headBmBmBm:(NSInteger)BM;
+ (BOOL)tailBmBmBm:(NSInteger)BM;
+ (BOOL)emptyBmBmBm:(NSInteger)BM;
+ (BOOL)returnBmBmBm:(NSInteger)BM;
+ (BOOL)bindBmBmBm:(NSInteger)BM;
+ (BOOL)bindPassingthroughvaluesfromsequenceBmBmBm:(NSInteger)BM;
+ (BOOL)concatBmBmBm:(NSInteger)BM;
+ (BOOL)zipWithBmBmBm:(NSInteger)BM;
+ (BOOL)arrayBmBmBm:(NSInteger)BM;
+ (BOOL)objectEnumeratorBmBmBm:(NSInteger)BM;
+ (BOOL)signalBmBmBm:(NSInteger)BM;
+ (BOOL)signalWithSchedulerBmBmBm:(NSInteger)BM;
+ (BOOL)foldLeftWithStartReduceBmBmBm:(NSInteger)BM;
+ (BOOL)foldRightWithStartReduceBmBmBm:(NSInteger)BM;
+ (BOOL)anyBmBmBm:(NSInteger)BM;
+ (BOOL)allBmBmBm:(NSInteger)BM;
+ (BOOL)objectPassingTestBmBmBm:(NSInteger)BM;
+ (BOOL)eagerSequenceBmBmBm:(NSInteger)BM;
+ (BOOL)lazySequenceBmBmBm:(NSInteger)BM;
+ (BOOL)copyWithZoneBmBmBm:(NSInteger)BM;
+ (BOOL)classForCoderBmBmBm:(NSInteger)BM;
+ (BOOL)initWithCoderBmBmBm:(NSInteger)BM;
+ (BOOL)encodeWithCoderBmBmBm:(NSInteger)BM;
+ (BOOL)countByEnumeratingWithStateObjectsCountBmBmBm:(NSInteger)BM;
+ (BOOL)hashBmBmBm:(NSInteger)BM;
+ (BOOL)isEqualBmBmBm:(NSInteger)BM;

@end
