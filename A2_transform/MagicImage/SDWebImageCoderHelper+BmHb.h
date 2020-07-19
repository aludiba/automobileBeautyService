#import <Foundation/Foundation.h>
#import "SDWebImageCompat.h"
#import "SDWebImageFrame.h"
#import "SDWebImageCoderHelper.h"
#import "SDWebImageFrame.h"
#import "UIImage+MultiFormat.h"
#import "NSImage+WebCache.h"
#import <ImageIO/ImageIO.h>
#import "SDAnimatedImageRep.h"
#import "SDWebImageCoderHelper+Bm.h"

@interface SDWebImageCoderHelper (BmHb)
+ (BOOL)animatedImageWithFramesBmHb:(NSInteger)hb;
+ (BOOL)framesFromAnimatedImageBmHb:(NSInteger)hb;
+ (BOOL)imageOrientationFromEXIFOrientationBmHb:(NSInteger)hb;
+ (BOOL)exifOrientationFromImageOrientationBmHb:(NSInteger)hb;

@end
