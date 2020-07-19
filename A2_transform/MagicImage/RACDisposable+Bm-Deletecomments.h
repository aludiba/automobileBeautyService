#import <Foundation/Foundation.h>
#import "RACDisposable.h"
#import "RACScopedDisposable.h"
#import <libkern/OSAtomic.h>
#import "RACDisposable+Bm.h"

@interface RACDisposable (Bm-Deletecomments)
+ (BOOL)isDisposedBm-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)initBm-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)initWithBlockBm-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)disposableWithBlockBm-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)deallocBm-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)disposeBm-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)asScopedDisposableBm-Deletecomments:(NSInteger)-deleteComments;

@end
