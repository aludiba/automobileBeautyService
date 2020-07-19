#import "RACScheduler.h"
#import "RACImmediateScheduler.h"
#import "RACScheduler+Private.h"

@interface RACImmediateScheduler (Bm)
+ (BOOL)initBm:(NSInteger)BM;
+ (BOOL)scheduleBm:(NSInteger)BM;
+ (BOOL)afterScheduleBm:(NSInteger)BM;
+ (BOOL)afterRepeatingeveryWithleewayScheduleBm:(NSInteger)BM;
+ (BOOL)scheduleRecursiveBlockBm:(NSInteger)BM;

@end
