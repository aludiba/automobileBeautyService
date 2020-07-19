#import <Foundation/Foundation.h>
#import "NSDictionary+RACSequenceAdditions.h"
#import "NSArray+RACSequenceAdditions.h"
#import "RACSequence.h"
#import "RACTuple.h"

@interface NSDictionary (RACSequenceAdditionsBm)
+ (BOOL)rac_sequenceBm:(NSInteger)BM;
+ (BOOL)rac_keySequenceBm:(NSInteger)BM;
+ (BOOL)rac_valueSequenceBm:(NSInteger)BM;

@end
