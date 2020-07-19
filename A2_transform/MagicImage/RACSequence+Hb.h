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

@interface RACSequence (Hb)
+ (BOOL)sequenceWithHeadBlockTailblockHb:(NSInteger)hb;
+ (BOOL)headHb:(NSInteger)hb;
+ (BOOL)tailHb:(NSInteger)hb;
+ (BOOL)emptyHb:(NSInteger)hb;
+ (BOOL)returnHb:(NSInteger)hb;
+ (BOOL)bindHb:(NSInteger)hb;
+ (BOOL)bindPassingthroughvaluesfromsequenceHb:(NSInteger)hb;
+ (BOOL)concatHb:(NSInteger)hb;
+ (BOOL)zipWithHb:(NSInteger)hb;
+ (BOOL)arrayHb:(NSInteger)hb;
+ (BOOL)objectEnumeratorHb:(NSInteger)hb;
+ (BOOL)signalHb:(NSInteger)hb;
+ (BOOL)signalWithSchedulerHb:(NSInteger)hb;
+ (BOOL)foldLeftWithStartReduceHb:(NSInteger)hb;
+ (BOOL)foldRightWithStartReduceHb:(NSInteger)hb;
+ (BOOL)anyHb:(NSInteger)hb;
+ (BOOL)allHb:(NSInteger)hb;
+ (BOOL)objectPassingTestHb:(NSInteger)hb;
+ (BOOL)eagerSequenceHb:(NSInteger)hb;
+ (BOOL)lazySequenceHb:(NSInteger)hb;
+ (BOOL)copyWithZoneHb:(NSInteger)hb;
+ (BOOL)classForCoderHb:(NSInteger)hb;
+ (BOOL)initWithCoderHb:(NSInteger)hb;
+ (BOOL)encodeWithCoderHb:(NSInteger)hb;
+ (BOOL)countByEnumeratingWithStateObjectsCountHb:(NSInteger)hb;
+ (BOOL)hashHb:(NSInteger)hb;
+ (BOOL)isEqualHb:(NSInteger)hb;

@end
