#import "RACScheduler.h"
#import "RACImmediateScheduler.h"
#import "RACScheduler+Private.h"
#import "RACImmediateScheduler+Bm.h"
#import "RACImmediateScheduler+BmBm.h"

@interface RACImmediateScheduler (BmBmBm)
+ (BOOL)initBmBmBm:(NSInteger)BM;
+ (BOOL)scheduleBmBmBm:(NSInteger)BM;
+ (BOOL)afterScheduleBmBmBm:(NSInteger)BM;
+ (BOOL)afterRepeatingeveryWithleewayScheduleBmBmBm:(NSInteger)BM;
+ (BOOL)scheduleRecursiveBlockBmBmBm:(NSInteger)BM;

@end
