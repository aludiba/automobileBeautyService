#import "RACSequence.h"
#import "RACDynamicSequence.h"
#import <libkern/OSAtomic.h>
#import "RACDynamicSequence+Bm.h"
#import "RACDynamicSequence+BmBm.h"

@interface RACDynamicSequence (BmBmBm)
+ (BOOL)sequenceWithHeadBlockTailblockBmBmBm:(NSInteger)BM;
+ (BOOL)sequenceWithLazyDependencyHeadblockTailblockBmBmBm:(NSInteger)BM;
+ (BOOL)deallocBmBmBm:(NSInteger)BM;
+ (BOOL)headBmBmBm:(NSInteger)BM;
+ (BOOL)tailBmBmBm:(NSInteger)BM;
+ (BOOL)descriptionBmBmBm:(NSInteger)BM;

@end
