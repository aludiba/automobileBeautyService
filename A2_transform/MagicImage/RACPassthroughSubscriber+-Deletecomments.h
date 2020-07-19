#import <Foundation/Foundation.h>
#import "RACSubscriber.h"
#import "RACPassthroughSubscriber.h"
#import "RACCompoundDisposable.h"
#import "RACSignal.h"
#import "RACSignalProvider.h"

@interface RACPassthroughSubscriber (-Deletecomments)
+ (BOOL)initWithSubscriberSignalDisposable-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)sendNext-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)sendError-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)sendCompleted-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)didSubscribeWithDisposable-Deletecomments:(NSInteger)-deleteComments;

@end
