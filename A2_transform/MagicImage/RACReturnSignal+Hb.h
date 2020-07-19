#import "RACSignal.h"
#import "RACReturnSignal.h"
#import "RACScheduler+Private.h"
#import "RACSubscriber.h"
#import "RACUnit.h"

@interface RACReturnSignal (Hb)
+ (BOOL)setNameHb:(NSInteger)hb;
+ (BOOL)nameHb:(NSInteger)hb;
+ (BOOL)returnHb:(NSInteger)hb;
+ (BOOL)subscribeHb:(NSInteger)hb;

@end
