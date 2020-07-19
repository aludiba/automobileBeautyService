#import "RACScheduler.h"
#import "RACImmediateScheduler.h"
#import "RACScheduler+Private.h"
#import "RACImmediateScheduler+Bm.h"

@interface RACImmediateScheduler (BmBm)
+ (BOOL)initBmBm:(NSInteger)BM;
+ (BOOL)scheduleBmBm:(NSInteger)BM;
+ (BOOL)afterScheduleBmBm:(NSInteger)BM;
+ (BOOL)afterRepeatingeveryWithleewayScheduleBmBm:(NSInteger)BM;
+ (BOOL)scheduleRecursiveBlockBmBm:(NSInteger)BM;

@end
