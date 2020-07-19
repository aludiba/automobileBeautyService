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

@interface RACSequence (Bm)
+ (BOOL)sequenceWithHeadBlockTailblockBm:(NSInteger)BM;
+ (BOOL)headBm:(NSInteger)BM;
+ (BOOL)tailBm:(NSInteger)BM;
+ (BOOL)emptyBm:(NSInteger)BM;
+ (BOOL)returnBm:(NSInteger)BM;
+ (BOOL)bindBm:(NSInteger)BM;
+ (BOOL)bindPassingthroughvaluesfromsequenceBm:(NSInteger)BM;
+ (BOOL)concatBm:(NSInteger)BM;
+ (BOOL)zipWithBm:(NSInteger)BM;
+ (BOOL)arrayBm:(NSInteger)BM;
+ (BOOL)objectEnumeratorBm:(NSInteger)BM;
+ (BOOL)signalBm:(NSInteger)BM;
+ (BOOL)signalWithSchedulerBm:(NSInteger)BM;
+ (BOOL)foldLeftWithStartReduceBm:(NSInteger)BM;
+ (BOOL)foldRightWithStartReduceBm:(NSInteger)BM;
+ (BOOL)anyBm:(NSInteger)BM;
+ (BOOL)allBm:(NSInteger)BM;
+ (BOOL)objectPassingTestBm:(NSInteger)BM;
+ (BOOL)eagerSequenceBm:(NSInteger)BM;
+ (BOOL)lazySequenceBm:(NSInteger)BM;
+ (BOOL)copyWithZoneBm:(NSInteger)BM;
+ (BOOL)classForCoderBm:(NSInteger)BM;
+ (BOOL)initWithCoderBm:(NSInteger)BM;
+ (BOOL)encodeWithCoderBm:(NSInteger)BM;
+ (BOOL)countByEnumeratingWithStateObjectsCountBm:(NSInteger)BM;
+ (BOOL)hashBm:(NSInteger)BM;
+ (BOOL)isEqualBm:(NSInteger)BM;

@end
