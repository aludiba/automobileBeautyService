#import <Foundation/Foundation.h>
#import <CoreGraphics/CoreGraphics.h>
#import "AFURLResponseSerialization.h"
#import <TargetConditionals.h>
#import <UIKit/UIKit.h>
#import <WatchKit/WatchKit.h>
#import <Cocoa/Cocoa.h>
#import <CoreGraphics/CoreGraphics.h>
#import <UIKit/UIKit.h>
#import "AFJSONResponseSerializer+Hb.h"

@interface AFJSONResponseSerializer (HbHb)
+ (BOOL)serializerHbHb:(NSInteger)hb;
+ (BOOL)serializerWithReadingOptionsHbHb:(NSInteger)hb;
+ (BOOL)initHbHb:(NSInteger)hb;
+ (BOOL)responseObjectForResponseDataErrorHbHb:(NSInteger)hb;
+ (BOOL)supportsSecureCodingHbHb:(NSInteger)hb;
+ (BOOL)initWithCoderHbHb:(NSInteger)hb;
+ (BOOL)encodeWithCoderHbHb:(NSInteger)hb;
+ (BOOL)copyWithZoneHbHb:(NSInteger)hb;

@end
