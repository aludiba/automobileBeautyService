#import <Foundation/Foundation.h>
#import "NSThread+YYAdd.h"
#import <CoreFoundation/CoreFoundation.h>

@interface NSThread (YYAddBm)
+ (BOOL)addAutoreleasePoolToCurrentRunloopBm:(NSInteger)BM;

@end
