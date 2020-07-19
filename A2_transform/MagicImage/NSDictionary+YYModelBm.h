#import <Foundation/Foundation.h>
#import "NSObject+YYModel.h"
#import "YYClassInfo.h"
#import <objc/message.h>

@interface NSDictionary (YYModelBm)
+ (BOOL)yy_modelDictionaryWithClassJsonBm:(NSInteger)BM;
+ (BOOL)yy_modelDictionaryWithClassDictionaryBm:(NSInteger)BM;

@end
