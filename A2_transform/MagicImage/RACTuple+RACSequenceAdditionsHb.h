#import <Foundation/Foundation.h>
#import "RACmetamacros.h"
#import "RACTuple.h"
#import <ReactiveObjC/RACEXTKeyPathCoding.h>
#import "RACTupleSequence.h"

@interface RACTuple (RACSequenceAdditionsHb)
+ (BOOL)rac_sequenceHb:(NSInteger)hb;

@end
