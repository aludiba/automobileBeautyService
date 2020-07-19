#import "RACSequence.h"
#import "RACDynamicSequence.h"
#import <libkern/OSAtomic.h>
#import "RACDynamicSequence+Bm.h"
#import "RACDynamicSequence+BmBm.h"
#import "RACDynamicSequence+BmBmBm.h"

@interface RACDynamicSequence (BmBmBmHb)
+ (BOOL)sequenceWithHeadBlockTailblockBmBmBmHb:(NSInteger)hb;
+ (BOOL)sequenceWithLazyDependencyHeadblockTailblockBmBmBmHb:(NSInteger)hb;
+ (BOOL)deallocBmBmBmHb:(NSInteger)hb;
+ (BOOL)headBmBmBmHb:(NSInteger)hb;
+ (BOOL)tailBmBmBmHb:(NSInteger)hb;
+ (BOOL)descriptionBmBmBmHb:(NSInteger)hb;

@end
