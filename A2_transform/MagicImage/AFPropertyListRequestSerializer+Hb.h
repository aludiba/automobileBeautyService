#import <Foundation/Foundation.h>
#import <TargetConditionals.h>
#import <UIKit/UIKit.h>
#import <WatchKit/WatchKit.h>
#import "AFURLRequestSerialization.h"
#import <MobileCoreServices/MobileCoreServices.h>
#import <CoreServices/CoreServices.h>

@interface AFPropertyListRequestSerializer (Hb)
+ (BOOL)serializerHb:(NSInteger)hb;
+ (BOOL)serializerWithFormatWriteoptionsHb:(NSInteger)hb;
+ (BOOL)requestBySerializingRequestWithparametersErrorHb:(NSInteger)hb;
+ (BOOL)initWithCoderHb:(NSInteger)hb;
+ (BOOL)encodeWithCoderHb:(NSInteger)hb;
+ (BOOL)copyWithZoneHb:(NSInteger)hb;

@end
