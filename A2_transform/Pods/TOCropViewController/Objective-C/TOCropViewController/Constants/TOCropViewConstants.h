#import <Foundation/Foundation.h>
typedef NS_ENUM(NSInteger, TOCropViewCroppingStyle) {
    TOCropViewCroppingStyleDefault,     
    TOCropViewCroppingStyleCircular     
};
typedef NS_ENUM(NSInteger, TOCropViewControllerAspectRatioPreset) {
    TOCropViewControllerAspectRatioPresetOriginal,
    TOCropViewControllerAspectRatioPresetSquare,
    TOCropViewControllerAspectRatioPreset3x2,
    TOCropViewControllerAspectRatioPreset5x3,
    TOCropViewControllerAspectRatioPreset4x3,
    TOCropViewControllerAspectRatioPreset5x4,
    TOCropViewControllerAspectRatioPreset7x5,
    TOCropViewControllerAspectRatioPreset16x9,
    TOCropViewControllerAspectRatioPresetCustom
};
typedef NS_ENUM(NSInteger, TOCropViewControllerToolbarPosition) {
    TOCropViewControllerToolbarPositionBottom,  
    TOCropViewControllerToolbarPositionTop     
};
static inline NSBundle *TO_CROP_VIEW_RESOURCE_BUNDLE_FOR_OBJECT(NSObject *object) {
    NSBundle *resourceBundle = nil;
    NSBundle *classBundle = [NSBundle bundleForClass:object.class];
    NSURL *resourceBundleURL = [classBundle URLForResource:@"TOCropViewControllerBundle" withExtension:@"bundle"];
    if (resourceBundleURL) {
        resourceBundle = [[NSBundle alloc] initWithURL:resourceBundleURL];
    }
    else {
        resourceBundle = classBundle;
    }
    return resourceBundle;
}
