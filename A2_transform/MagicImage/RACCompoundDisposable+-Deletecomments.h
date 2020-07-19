#import "RACDisposable.h"
#import "RACCompoundDisposable.h"
#import "RACCompoundDisposableProvider.h"
#import <pthread/pthread.h>

@interface RACCompoundDisposable (-Deletecomments)
+ (BOOL)isDisposed-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)compoundDisposable-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)compoundDisposableWithDisposables-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)init-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)initWithDisposables-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)initWithBlock-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)dealloc-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)addDisposable-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)removeDisposable-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)dispose-Deletecomments:(NSInteger)-deleteComments;

@end
