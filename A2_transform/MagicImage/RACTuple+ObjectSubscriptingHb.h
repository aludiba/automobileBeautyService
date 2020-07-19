#import <Foundation/Foundation.h>
#import "RACmetamacros.h"
#import "RACTuple.h"
#import <ReactiveObjC/RACEXTKeyPathCoding.h>
#import "RACTupleSequence.h"

@interface RACTuple (ObjectSubscriptingHb)
+ (BOOL)objectAtIndexedSubscriptHb:(NSInteger)hb;

@end
