#import <Foundation/Foundation.h>
#import "RACDisposable.h"
#import "RACScopedDisposable.h"
#import <libkern/OSAtomic.h>

@interface RACDisposable (-Deletecomments)
+ (BOOL)isDisposed-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)init-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)initWithBlock-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)disposableWithBlock-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)dealloc-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)dispose-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)asScopedDisposable-Deletecomments:(NSInteger)-deleteComments;

@end
