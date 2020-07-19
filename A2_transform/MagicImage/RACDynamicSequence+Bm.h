#import "RACSequence.h"
#import "RACDynamicSequence.h"
#import <libkern/OSAtomic.h>

@interface RACDynamicSequence (Bm)
+ (BOOL)sequenceWithHeadBlockTailblockBm:(NSInteger)BM;
+ (BOOL)sequenceWithLazyDependencyHeadblockTailblockBm:(NSInteger)BM;
+ (BOOL)deallocBm:(NSInteger)BM;
+ (BOOL)headBm:(NSInteger)BM;
+ (BOOL)tailBm:(NSInteger)BM;
+ (BOOL)descriptionBm:(NSInteger)BM;

@end
