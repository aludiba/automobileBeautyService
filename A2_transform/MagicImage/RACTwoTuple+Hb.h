#import <Foundation/Foundation.h>
#import "RACmetamacros.h"
#import "RACTuple.h"
#import <ReactiveObjC/RACEXTKeyPathCoding.h>
#import "RACTupleSequence.h"

@interface RACTwoTuple (Hb)
+ (BOOL)initHb:(NSInteger)hb;
+ (BOOL)initWithBackingArrayHb:(NSInteger)hb;
+ (BOOL)tupleByAddingObjectHb:(NSInteger)hb;
+ (BOOL)packFirstHb:(NSInteger)hb;
+ (BOOL)isEqualHb:(NSInteger)hb;

@end
