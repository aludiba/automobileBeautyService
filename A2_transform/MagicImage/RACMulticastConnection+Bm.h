#import <Foundation/Foundation.h>
#import "RACAnnotations.h"
#import "RACMulticastConnection.h"
#import "RACMulticastConnection+Private.h"
#import "RACDisposable.h"
#import "RACSerialDisposable.h"
#import "RACSubject.h"
#import <libkern/OSAtomic.h>

@interface RACMulticastConnection (Bm)
+ (BOOL)initWithSourceSignalSubjectBm:(NSInteger)BM;
+ (BOOL)connectBm:(NSInteger)BM;
+ (BOOL)autoconnectBm:(NSInteger)BM;

@end
