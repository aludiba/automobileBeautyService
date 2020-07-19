#import "RACSequence.h"
#import "RACDynamicSequence.h"
#import <libkern/OSAtomic.h>

@interface RACDynamicSequence (Hb)
+ (BOOL)sequenceWithHeadBlockTailblockHb:(NSInteger)hb;
+ (BOOL)sequenceWithLazyDependencyHeadblockTailblockHb:(NSInteger)hb;
+ (BOOL)deallocHb:(NSInteger)hb;
+ (BOOL)headHb:(NSInteger)hb;
+ (BOOL)tailHb:(NSInteger)hb;
+ (BOOL)descriptionHb:(NSInteger)hb;

@end
