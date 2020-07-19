#import <Foundation/Foundation.h>
#import <CoreGraphics/CoreGraphics.h>
#import "AFURLResponseSerialization.h"
#import <TargetConditionals.h>
#import <UIKit/UIKit.h>
#import <WatchKit/WatchKit.h>
#import <Cocoa/Cocoa.h>
#import <CoreGraphics/CoreGraphics.h>
#import <UIKit/UIKit.h>

@interface AFXMLDocumentResponseSerializer (Hb)
+ (BOOL)serializerHb:(NSInteger)hb;
+ (BOOL)serializerWithXMLDocumentOptionsHb:(NSInteger)hb;
+ (BOOL)initHb:(NSInteger)hb;
+ (BOOL)responseObjectForResponseDataErrorHb:(NSInteger)hb;
+ (BOOL)initWithCoderHb:(NSInteger)hb;
+ (BOOL)encodeWithCoderHb:(NSInteger)hb;
+ (BOOL)copyWithZoneHb:(NSInteger)hb;

@end
