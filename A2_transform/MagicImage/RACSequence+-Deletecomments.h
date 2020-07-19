#import <Foundation/Foundation.h>
#import "RACStream.h"
#import "RACSequence.h"
#import "RACArraySequence.h"
#import "RACDynamicSequence.h"
#import "RACEagerSequence.h"
#import "RACEmptySequence.h"
#import "RACScheduler.h"
#import "RACSignal.h"
#import "RACSubscriber.h"
#import "RACTuple.h"
#import "RACUnarySequence.h"

@interface RACSequence (-Deletecomments)
+ (BOOL)sequenceWithHeadBlockTailblock-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)head-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)tail-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)empty-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)return-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)bind-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)bindPassingthroughvaluesfromsequence-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)concat-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)zipWith-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)array-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)objectEnumerator-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)signal-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)signalWithScheduler-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)foldLeftWithStartReduce-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)foldRightWithStartReduce-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)any-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)all-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)objectPassingTest-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)eagerSequence-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)lazySequence-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)copyWithZone-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)classForCoder-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)initWithCoder-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)encodeWithCoder-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)countByEnumeratingWithStateObjectsCount-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)hash-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)isEqual-Deletecomments:(NSInteger)-deleteComments;

@end
