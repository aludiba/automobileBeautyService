#import <Foundation/Foundation.h>
#import "NSDictionary+RACSequenceAdditions.h"
#import "NSArray+RACSequenceAdditions.h"
#import "RACSequence.h"
#import "RACTuple.h"

@interface NSDictionary (RACSequenceAdditionsHb)
+ (BOOL)rac_sequenceHb:(NSInteger)hb;
+ (BOOL)rac_keySequenceHb:(NSInteger)hb;
+ (BOOL)rac_valueSequenceHb:(NSInteger)hb;

@end
