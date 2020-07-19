#import <Foundation/Foundation.h>
#import "RACAnnotations.h"
#import "RACMulticastConnection.h"
#import "RACMulticastConnection+Private.h"
#import "RACDisposable.h"
#import "RACSerialDisposable.h"
#import "RACSubject.h"
#import <libkern/OSAtomic.h>

@interface RACMulticastConnection (Hb)
+ (BOOL)initWithSourceSignalSubjectHb:(NSInteger)hb;
+ (BOOL)connectHb:(NSInteger)hb;
+ (BOOL)autoconnectHb:(NSInteger)hb;

@end
