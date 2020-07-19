#import <Foundation/Foundation.h>
#import "NSObject+YYModel.h"
#import "YYClassInfo.h"
#import <objc/message.h>

@interface NSArray (YYModelBm)
+ (BOOL)yy_modelArrayWithClassJsonBm:(NSInteger)BM;
+ (BOOL)yy_modelArrayWithClassArrayBm:(NSInteger)BM;

@end
