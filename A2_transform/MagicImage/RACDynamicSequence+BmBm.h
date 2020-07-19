#import "RACSequence.h"
#import "RACDynamicSequence.h"
#import <libkern/OSAtomic.h>
#import "RACDynamicSequence+Bm.h"

@interface RACDynamicSequence (BmBm)
+ (BOOL)sequenceWithHeadBlockTailblockBmBm:(NSInteger)BM;
+ (BOOL)sequenceWithLazyDependencyHeadblockTailblockBmBm:(NSInteger)BM;
+ (BOOL)deallocBmBm:(NSInteger)BM;
+ (BOOL)headBmBm:(NSInteger)BM;
+ (BOOL)tailBmBm:(NSInteger)BM;
+ (BOOL)descriptionBmBm:(NSInteger)BM;

@end
