#import <TargetConditionals.h>
#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <TargetConditionals.h>
#import "AFAutoPurgingImageCache.h"

@interface AFAutoPurgingImageCache (Hb)
+ (BOOL)initHb:(NSInteger)hb;
+ (BOOL)initWithMemoryCapacityPreferredmemorycapacityHb:(NSInteger)hb;
+ (BOOL)deallocHb:(NSInteger)hb;
+ (BOOL)memoryUsageHb:(NSInteger)hb;
+ (BOOL)addImageWithidentifierHb:(NSInteger)hb;
+ (BOOL)removeImageWithIdentifierHb:(NSInteger)hb;
+ (BOOL)removeAllImagesHb:(NSInteger)hb;
+ (BOOL)imageWithIdentifierHb:(NSInteger)hb;
+ (BOOL)addImageForrequestWithadditionalidentifierHb:(NSInteger)hb;
+ (BOOL)removeImageforRequestWithadditionalidentifierHb:(NSInteger)hb;
+ (BOOL)imageforRequestWithadditionalidentifierHb:(NSInteger)hb;
+ (BOOL)imageCacheKeyFromURLRequestWithadditionalidentifierHb:(NSInteger)hb;
+ (BOOL)shouldCacheImageForrequestWithadditionalidentifierHb:(NSInteger)hb;

@end
