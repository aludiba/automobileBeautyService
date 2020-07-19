#import "RACSequence.h"
#import "RACDynamicSequence.h"
#import <libkern/OSAtomic.h>
#import "RACDynamicSequence+Bm.h"
#import "RACDynamicSequence+BmBm.h"

@interface RACDynamicSequence (BmBmHb)
+ (BOOL)sequenceWithHeadBlockTailblockBmBmHb:(NSInteger)hb;
+ (BOOL)sequenceWithLazyDependencyHeadblockTailblockBmBmHb:(NSInteger)hb;
+ (BOOL)deallocBmBmHb:(NSInteger)hb;
+ (BOOL)headBmBmHb:(NSInteger)hb;
+ (BOOL)tailBmBmHb:(NSInteger)hb;
+ (BOOL)descriptionBmBmHb:(NSInteger)hb;

@end
