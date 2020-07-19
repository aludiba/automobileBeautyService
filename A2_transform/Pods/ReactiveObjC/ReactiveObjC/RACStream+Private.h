#import "RACStream.h"
@interface RACStream ()
+ (__kindof RACStream *)join:(id<NSFastEnumeration>)streams block:(RACStream * (^)(id, id))block;
@end
