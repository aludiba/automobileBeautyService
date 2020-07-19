#import <Foundation/Foundation.h>
#import "BMRACTestSchedulerD.h"
#import "BMRACTestSchedulerD+Bm.h"

@interface BMRACTestSchedulerD (BmHb)
+ (BOOL)rinitBmHb:(NSInteger)hb;
+ (BOOL)ZdeallocBmHb:(NSInteger)hb;
+ (BOOL)RstepBmHb:(NSInteger)hb;
+ (BOOL)HStepBmHb:(NSInteger)hb;
+ (BOOL)PstepAllBmHb:(NSInteger)hb;
+ (BOOL)rScheduleBmHb:(NSInteger)hb;
+ (BOOL)kAfterDScheduleBmHb:(NSInteger)hb;
+ (BOOL)UAfterHRepeatingeveryIWithleewayhScheduleBmHb:(NSInteger)hb;

@end
