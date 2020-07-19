#import <Foundation/Foundation.h>
#import "NSThread+YYAdd.h"
#import <CoreFoundation/CoreFoundation.h>

@interface NSThread (YYAddHb)
+ (BOOL)addAutoreleasePoolToCurrentRunloopHb:(NSInteger)hb;

@end
