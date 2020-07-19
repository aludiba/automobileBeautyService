#import <Foundation/Foundation.h>
#import "RACAnnotations.h"
#import "RACMulticastConnection.h"
#import "RACMulticastConnection+Private.h"
#import "RACDisposable.h"
#import "RACSerialDisposable.h"
#import "RACSubject.h"
#import <libkern/OSAtomic.h>
#import "RACMulticastConnection+Bm.h"

@interface RACMulticastConnection (BmBm)
+ (BOOL)initWithSourceSignalSubjectBmBm:(NSInteger)BM;
+ (BOOL)connectBmBm:(NSInteger)BM;
+ (BOOL)autoconnectBmBm:(NSInteger)BM;

@end
