#import <Foundation/Foundation.h>
#import "BMRACMulticastConnections.h"
#import "BMRACMulticastConnections+Bm.h"
#import "BMRACMulticastConnections+BmBm.h"

@interface BMRACMulticastConnections (BmBmHb)
+ (BOOL)eInitwithsourcesignalpSubjectBmBmHb:(NSInteger)hb;
+ (BOOL)sconnectBmBmHb:(NSInteger)hb;
+ (BOOL)WautoconnectBmBmHb:(NSInteger)hb;

@end
