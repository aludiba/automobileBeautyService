#import <Foundation/Foundation.h>
#import "NSDictionary+RACSequenceAdditions.h"
#import "NSArray+RACSequenceAdditions.h"
#import "RACSequence.h"
#import "RACTuple.h"

@interface NSDictionary (RACSequenceAdditions-Deletecomments)
+ (BOOL)rac_sequence-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)rac_keySequence-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)rac_valueSequence-Deletecomments:(NSInteger)-deleteComments;

@end
