#import <Foundation/Foundation.h>
#import "NSObject+YYModel.h"
#import "YYClassInfo.h"
#import <objc/message.h>

@interface NSDictionary (YYModelHb)
+ (BOOL)yy_modelDictionaryWithClassJsonHb:(NSInteger)hb;
+ (BOOL)yy_modelDictionaryWithClassDictionaryHb:(NSInteger)hb;

@end
