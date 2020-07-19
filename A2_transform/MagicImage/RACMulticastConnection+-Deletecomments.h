#import <Foundation/Foundation.h>
#import "RACAnnotations.h"
#import "RACMulticastConnection.h"
#import "RACMulticastConnection+Private.h"
#import "RACDisposable.h"
#import "RACSerialDisposable.h"
#import "RACSubject.h"
#import <libkern/OSAtomic.h>

@interface RACMulticastConnection (-Deletecomments)
+ (BOOL)initWithSourceSignalSubject-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)connect-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)autoconnect-Deletecomments:(NSInteger)-deleteComments;

@end
