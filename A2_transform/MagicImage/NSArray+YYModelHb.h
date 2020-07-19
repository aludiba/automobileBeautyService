#import <Foundation/Foundation.h>
#import "NSObject+YYModel.h"
#import "YYClassInfo.h"
#import <objc/message.h>

@interface NSArray (YYModelHb)
+ (BOOL)yy_modelArrayWithClassJsonHb:(NSInteger)hb;
+ (BOOL)yy_modelArrayWithClassArrayHb:(NSInteger)hb;

@end
