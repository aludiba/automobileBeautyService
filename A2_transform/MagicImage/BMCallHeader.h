#import "GPUImageBuffer+Bm.h"
#import "GPUImageShiTomasiFeatureDetectionFilter+Bm.h"
#import "GPUImageThreeInputFilter+Bm.h"
#import "GPUImageSmoothToonFilter+Bm.h"
#import "GPUImageVoronoiConsumerFilter+Bm.h"
#import "GPUImageMovieComposition+Bm.h"
#import "GPUImageRawDataOutput+Bm.h"
#import "GPUImageContrastFilter+Bm.h"
#import "GPUImageHalftoneFilter+Bm.h"
#import "GPUImageHazeFilter+Bm.h"
#import "GPUImageRGBDilationFilter+Bm.h"
#import "GPUImageCrosshairGenerator+Bm.h"
#import "GPUImageAverageColor+Bm.h"
#import "GPUImageColorBlendFilter+Bm.h"
#import "GPUImageSubtractBlendFilter+Bm.h"
#import "GPUImageMaskFilter+Bm.h"
#import "GPUImageSwirlFilter+Bm.h"
#import "GPUImageSoftLightBlendFilter+Bm.h"
#import "GPUImageLuminosity+Bm.h"
#import "GPUImageGaussianSelectiveBlurFilter+Bm.h"
#import "GPUImageSharpenFilter+Bm.h"
#import "GPUImagePoissonBlendFilter+Bm.h"
#import "GPUImageMotionBlurFilter+Bm.h"
#import "GPUImageGlassSphereFilter+Bm.h"
#import "GPUImageScreenBlendFilter+Bm.h"
#import "GPUImageTwoInputCrossTextureSamplingFilter+Bm.h"
#import "GPUImagePinchDistortionFilter+Bm.h"
#import "GPUImageMedianFilter+Bm.h"
#import "GPUImageLinearBurnBlendFilter+Bm.h"
#import "GPUImageLocalBinaryPatternFilter+Bm.h"
#import "GPUImageDirectionalNonMaximumSuppressionFilter+Bm.h"
#import "GPUImageClosingFilter+Bm.h"
#import "GPUImageMotionDetector+Bm.h"
#import "GPUImageHoughTransformLineDetector+Bm.h"
#import "GPUImageRGBErosionFilter+Bm.h"
#import "GPUImageLowPassFilter+Bm.h"
#import "GPUImageRGBOpeningFilter+Bm.h"
#import "GPUImageWhiteBalanceFilter+Bm.h"
#import "GPUImageRawDataInput+Bm.h"
#import "GPUImageThresholdSketchFilter+Bm.h"
#import "GPUImageMosaicFilter+Bm.h"
#import "GPUImageSingleComponentGaussianBlurFilter+Bm.h"
#import "GPUImageKuwaharaFilter+Bm.h"
#import "GPUImageCrosshatchFilter+Bm.h"
#import "GPUImageNobleCornerDetectionFilter+Bm.h"
#import "GPUImageHighlightShadowFilter+Bm.h"
#import "GPUImage3x3ConvolutionFilter+Bm.h"
#import "GPUImageNormalBlendFilter+Bm.h"
#import "GPUImageDilationFilter+Bm.h"
#import "GPUImageAddBlendFilter+Bm.h"
#import "GPUImageHSBFilter+Bm.h"
#import "GPUImageHueBlendFilter+Bm.h"
#import "GPUImagePerlinNoiseFilter+Bm.h"
#import "GPUImageTextureOutput+Bm.h"
#import "GPUImagePrewittEdgeDetectionFilter+Bm.h"
#import "GPUImageVideoCamera+Bm.h"
#import "GPUImageDarkenBlendFilter+Bm.h"
#import "GPUImageCGAColorspaceFilter+Bm.h"
#import "GPUImageLightenBlendFilter+Bm.h"
#import "GPUImageStillCamera+Bm.h"
#import "GPUImageFilter+Bm.h"
#import "GPUImageLookupFilter+Bm.h"
#import "GPUImageBulgeDistortionFilter+Bm.h"
#import "GPUImageFalseColorFilter+Bm.h"
#import "GPUImagePolkaDotFilter+Bm.h"
#import "GPUImageChromaKeyBlendFilter+Bm.h"
#import "GPUImageLuminanceRangeFilter+Bm.h"
#import "GPUImageLuminosityBlendFilter+Bm.h"
#import "GPUImageExposureFilter+Bm.h"
#import "GPUImageView+Bm.h"
#import "GPUImageContext+Bm.h"
#import "GPUImageMovieWriter+Bm.h"
#import "GPUImagePicture+Bm.h"
#import "GPUImagePicture+TextureSubimageBm.h"
#import "GPUImageTwoInputFilter+Bm.h"
#import "GPUImageColorInvertFilter+Bm.h"
#import "GPUImageEmbossFilter+Bm.h"
#import "GPUImageGrayscaleFilter+Bm.h"
#import "GPUImageNonMaximumSuppressionFilter+Bm.h"
#import "GPUImageWeakPixelInclusionFilter+Bm.h"
#import "GPUImageUIElement+Bm.h"
#import "GPUImageColorPackingFilter+Bm.h"
#import "GPUImageGaussianBlurPositionFilter+Bm.h"
#import "GPUImageSoftEleganceFilter+Bm.h"
#import "GPUImageTwoPassFilter+Bm.h"
#import "GPUImageHighPassFilter+Bm.h"
#import "GPUImageSobelEdgeDetectionFilter+Bm.h"
#import "GPUImageFilterGroup+Bm.h"
#import "GPUImageParallelCoordinateLineTransformFilter+Bm.h"
#import "GPUImageLuminanceThresholdFilter+Bm.h"
#import "GPUImageChromaKeyFilter+Bm.h"
#import "GPUImageThresholdEdgeDetectionFilter+Bm.h"
#import "GPUImageColorBurnBlendFilter+Bm.h"
#import "GPUImageTwoPassTextureSamplingFilter+Bm.h"
#import "GPUImageUnsharpMaskFilter+Bm.h"
#import "GPUImageGammaFilter+Bm.h"
#import "GPUImageAlphaBlendFilter+Bm.h"
#import "GPUImageHistogramGenerator+Bm.h"
#import "GPUImageBilateralFilter+Bm.h"
#import "GPUImageKuwaharaRadius3Filter+Bm.h"
#import "GPUImageThresholdedNonMaximumSuppressionFilter+Bm.h"
#import "GPUImageAmatorkaFilter+Bm.h"
#import "GPUImageTransformFilter+Bm.h"
#import "GPUImageHueFilter+Bm.h"
#import "GPUImageJFAVoronoiFilter+Bm.h"
#import "GPUImageiOSBlurFilter+Bm.h"
#import "GPUImageSketchFilter+Bm.h"
#import "GPUImageVignetteFilter+Bm.h"
#import "GPUImageHistogramEqualizationFilter+Bm.h"
#import "GPUImageMissEtikateFilter+Bm.h"
#import "GPUImagePixellatePositionFilter+Bm.h"
#import "GPUImageHistogramFilter+Bm.h"
#import "GPUImageFASTCornerDetectionFilter+Bm.h"
#import "GPUImageLevelsFilter+Bm.h"
#import "GPUImageMovie+Bm.h"
#import "GPUImageCannyEdgeDetectionFilter+Bm.h"
#import "GPUImageLineGenerator+Bm.h"
#import "GPUImageSepiaFilter+Bm.h"
#import "GPUImage3x3TextureSamplingFilter+Bm.h"
#import "GPUImageSphereRefractionFilter+Bm.h"
#import "GPUImageRGBClosingFilter+Bm.h"
#import "GPUImageTextureInput+Bm.h"
#import "GPUImageOpacityFilter+Bm.h"
#import "GPUImagePixellateFilter+Bm.h"
#import "GPUImageCropFilter+Bm.h"
#import "GPUImageDissolveBlendFilter+Bm.h"
#import "GPUImageToonFilter+Bm.h"
#import "GPUImageErosionFilter+Bm.h"
#import "GPUImageSaturationFilter+Bm.h"
#import "GPUImageOpeningFilter+Bm.h"
#import "GPUImagePolarPixellateFilter+Bm.h"
#import "GPUImageAdaptiveThresholdFilter+Bm.h"
#import "GPUImageHardLightBlendFilter+Bm.h"
#import "GPUImageZoomBlurFilter+Bm.h"
#import "GPUImageHarrisCornerDetectionFilter+Bm.h"
#import "GPUImageMultiplyBlendFilter+Bm.h"
#import "GPUImageOverlayBlendFilter+Bm.h"
#import "GPUImageColorMatrixFilter+Bm.h"
#import "GPUImageSolidColorGenerator+Bm.h"
#import "GPUImageExclusionBlendFilter+Bm.h"
#import "GPUImageGaussianBlurFilter+Bm.h"
#import "GPUImageFramebufferCache+Bm.h"
#import "GPUImageTiltShiftFilter+Bm.h"
#import "GPUImageSaturationBlendFilter+Bm.h"
#import "GPUImageRGBFilter+Bm.h"
#import "GPUImageBoxBlurFilter+Bm.h"
#import "GPUImageSourceOverBlendFilter+Bm.h"
#import "GPUImageFramebuffer+Bm.h"
#import "GPUImageLaplacianFilter+Bm.h"
#import "GPUImageLanczosResamplingFilter+Bm.h"
#import "GPUImageFilterPipeline+Bm.h"
#import "GPUImageXYDerivativeFilter+Bm.h"
#import "GPUImageColorDodgeBlendFilter+Bm.h"
#import "GPUImageAverageLuminanceThresholdFilter+Bm.h"
#import "GPUImageOutput+Bm.h"
#import "GPUImagePosterizeFilter+Bm.h"
#import "GPUImageDirectionalSobelEdgeDetectionFilter+Bm.h"
#import "GPUImageBrightnessFilter+Bm.h"
#import "GPUImageDifferenceBlendFilter+Bm.h"
#import "GPUImageDivideBlendFilter+Bm.h"
#import "GPUImageStretchDistortionFilter+Bm.h"
#import "GLProgram+Bm.h"
#import "DGActivityIndicatorView+Bm.h"
#import "DGActivityIndicatorBallClipRotateMultipleAnimation+Bm.h"
#import "DGActivityIndicatorBallGridBeatAnimation+Bm.h"
#import "DGActivityIndicatorLineScaleAnimation+Bm.h"
#import "DGActivityIndicatorTwoDotsAnimation+Bm.h"
#import "DGActivityIndicatorNineDotsAnimation+Bm.h"
#import "DGActivityIndicatorBallScaleRippleMultipleAnimation+Bm.h"
#import "DGActivityIndicatorFiveDotsAnimation+Bm.h"
#import "DGActivityIndicatorBallScaleAnimation+Bm.h"
#import "DGActivityIndicatorBallPulseSyncAnimation+Bm.h"
#import "DGActivityIndicatorBallPulseAnimation+Bm.h"
#import "DGActivityIndicatorRotatingSandglassAnimation+Bm.h"
#import "DGActivityIndicatorBallTrianglePathAnimation+Bm.h"
#import "DGActivityIndicatorBallBeatAnimation+Bm.h"
#import "DGActivityIndicatorBallZigZagDeflectAnimation+Bm.h"
#import "DGActivityIndicatorBallSpinFadeLoader+Bm.h"
#import "DGActivityIndicatorLineScalePulseOutRapidAnimation+Bm.h"
#import "DGActivityIndicatorBallClipRotateAnimation+Bm.h"
#import "DGActivityIndicatorRotatingTrigonAnimation+Bm.h"
#import "DGActivityIndicatorTriangleSkewSpinAnimation+Bm.h"
#import "DGActivityIndicatorTripleRingsAnimation+Bm.h"
#import "DGActivityIndicatorAnimation+Bm.h"
#import "DGActivityIndicatorTriplePulseAnimation+Bm.h"
#import "DGActivityIndicatorBallClipRotatePulseAnimation+Bm.h"
#import "DGActivityIndicatorBallGridPulseAnimation+Bm.h"
#import "DGActivityIndicatorBallRotateAnimation+Bm.h"
#import "DGActivityIndicatorBallScaleRippleAnimation+Bm.h"
#import "DGActivityIndicatorBallScaleMultipleAnimation+Bm.h"
#import "DGActivityIndicatorRotatingSquaresAnimation+Bm.h"
#import "DGActivityIndicatorLineScalePartyAnimation+Bm.h"
#import "DGActivityIndicatorCookieTerminatorAnimation+Bm.h"
#import "DGActivityIndicatorDoubleBounceAnimation+Bm.h"
#import "DGActivityIndicatorLineScalePulseOutAnimation+Bm.h"
#import "DGActivityIndicatorBallZigZagAnimation+Bm.h"
#import "DGActivityIndicatorThreeDotsAnimation+Bm.h"
#import "NSString+RACSequenceAdditionsBm.h"
#import "NSDictionary+RACSequenceAdditionsBm.h"
#import "UITextField+RACSignalSupportBm.h"
#import "UISegmentedControl+RACSignalSupportBm.h"
#import "RACKVOProxy+Bm.h"
#import "RACQueueScheduler+Bm.h"
#import "NSArray+RACSequenceAdditionsBm.h"
#import "RACPassthroughSubscriber+Bm.h"
#import "RACScopedDisposable+Bm.h"
#import "RACDynamicSignal+Bm.h"
#import "UISlider+RACSignalSupportBm.h"
#import "RACReturnSignal+Bm.h"
#import "UIRefreshControl+RACCommandSupportBm.h"
#import "RACTestScheduler+Bm.h"
#import "NSSet+RACSequenceAdditionsBm.h"
#import "NSInvocation+RACTypeParsingBm.h"
#import "UIGestureRecognizer+RACSignalSupportBm.h"
#import "UIAlertView+RACSignalSupportBm.h"
#import "RACValueTransformer+Bm.h"
#import "RACUnit+Bm.h"
#import "RACCompoundDisposable+Bm.h"
#import "RACEagerSequence+Bm.h"
#import "RACDelegateProxy+Bm.h"
#import "RACSubscriber+Bm.h"
#import "NSObject+RACSelectorSignalBm.h"
#import "NSObject+RACKVOWrapperBm.h"
#import "RACSubject+Bm.h"
#import "NSObject+RACLiftingBm.h"
#import "RACSerialDisposable+Bm.h"
#import "UIActionSheet+RACSignalSupportBm.h"
#import "UIButton+RACCommandSupportBm.h"
#import "RACDisposable+Bm.h"
#import "NSString+RACKeyPathUtilitiesBm.h"
#import "UIControl+RACSignalSupportBm.h"
#import "NSIndexSet+RACSequenceAdditionsBm.h"
#import "RACTupleNil+Bm.h"
#import "RACTuple+Bm.h"
#import "RACOneTuple+Bm.h"
#import "RACTwoTuple+Bm.h"
#import "RACThreeTuple+Bm.h"
#import "RACFourTuple+Bm.h"
#import "RACFiveTuple+Bm.h"
#import "RACTupleUnpackingTrampoline+Bm.h"
#import "RACTuple+RACSequenceAdditionsBm.h"
#import "RACTuple+ObjectSubscriptingBm.h"
#import "RACImmediateScheduler+Bm.h"
#import "RACEmptySignal+Bm.h"
#import "RACCommand+Bm.h"
#import "NSEnumerator+RACSequenceAdditionsBm.h"
#import "RACIndexSetSequence+Bm.h"
#import "NSUserDefaults+RACSupportBm.h"
#import "UITableViewCell+RACSignalSupportBm.h"
#import "UISwitch+RACSignalSupportBm.h"
#import "RACTargetQueueScheduler+Bm.h"
#import "RACSignal+Bm.h"
#import "RACSignal+RACStreamBm.h"
#import "RACSignal+SubscriptionBm.h"
#import "RACSignal+DebuggingBm.h"
#import "RACSignal+TestingBm.h"
#import "UITableViewHeaderFooterView+RACSignalSupportBm.h"
#import "RACScheduler+Bm.h"
#import "NSValue+RACDescriptionBm.h"
#import "NSString+RACDescriptionBm.h"
#import "RACTuple+RACDescriptionBm.h"
#import "RACStringSequence+Bm.h"
#import "UIStepper+RACSignalSupportBm.h"
#import "RACSubscriptionScheduler+Bm.h"
#import "NSNotificationCenter+RACSupportBm.h"
#import "NSFileHandle+RACSupportBm.h"
#import "RACChannel+Bm.h"
#import "RACChannelTerminal+Bm.h"
#import "RACTupleSequence+Bm.h"
#import "MKAnnotationView+RACSignalSupportBm.h"
#import "RACGroupedSignal+Bm.h"
#import "RACStream+Bm.h"
#import "RACStream+OperationsBm.h"
#import "UITextView+RACSignalSupportBm.h"
#import "RACSignal+OperationsBm.h"
#import "RACErrorSignal+Bm.h"
#import "RACArraySequence+Bm.h"
#import "RACBlockTrampoline+Bm.h"
#import "NSObject+RACDeallocatingBm.h"
#import "UIControl+RACSignalSupportPrivateBm.h"
#import "RACReplaySubject+Bm.h"
#import "UIImagePickerController+RACSignalSupportBm.h"
#import "NSOrderedSet+RACSequenceAdditionsBm.h"
#import "NSURLConnection+RACSupportBm.h"
#import "RACKVOTrampoline+Bm.h"
#import "RACSubscriptingAssignmentTrampoline+Bm.h"
#import "NSString+RACSupportBm.h"
#import "RACSequence+Bm.h"
#import "RACDynamicSequence+Bm.h"
#import "RACEmptySequence+Bm.h"
#import "RACUnarySequence+Bm.h"
#import "RACSignalSequence+Bm.h"
#import "UIDatePicker+RACSignalSupportBm.h"
#import "RACEvent+Bm.h"
#import "UICollectionReusableView+RACSignalSupportBm.h"
#import "UIBarButtonItem+RACCommandSupportBm.h"
#import "NSData+RACSupportBm.h"
#import "RACMulticastConnection+Bm.h"
#import "RACBehaviorSubject+Bm.h"
#import "NSObject+RACPropertySubscribingBm.h"
#import "RACKVOChannel+Bm.h"
#import "RACKVOChannel+RACChannelToBm.h"
#import "MASCompositeConstraint+Bm.h"
#import "MASConstraintMaker+Bm.h"
#import "MAS_VIEW+MASAdditionsBm.h"
#import "NSArray+MASAdditionsBm.h"
#import "MASViewAttribute+Bm.h"
#import "MASViewConstraint+Bm.h"
#import "MAS_VIEW+MASConstraintsBm.h"
#import "MASConstraint+Bm.h"
#import "NSLayoutConstraint+MASDebugAdditionsBm.h"
#import "MAS_VIEW_CONTROLLER+MASAdditionsBm.h"
#import "TOActivityCroppedImageProvider+Bm.h"
#import "TOCropViewControllerTransitioning+Bm.h"
#import "TOCroppedImageAttributes+Bm.h"
#import "TOCropView+Bm.h"
#import "TOCropOverlayView+Bm.h"
#import "TOCropToolbar+Bm.h"
#import "TOCropScrollView+Bm.h"
#import "UIImage+CropRotateBm.h"
#import "TOCropViewController+Bm.h"
#import "YYClassIvarInfo+Bm.h"
#import "YYClassMethodInfo+Bm.h"
#import "YYClassPropertyInfo+Bm.h"
#import "YYClassInfo+Bm.h"
#import "NSObject+YYModelBm.h"
#import "NSArray+YYModelBm.h"
#import "NSDictionary+YYModelBm.h"
#import "IQTextView+Bm.h"
#import "IQBarButtonItemConfiguration+Bm.h"
#import "UIImage+IQKeyboardToolbarNextPreviousImageBm.h"
#import "UIView+IQToolbarAdditionBm.h"
#import "IQToolbar+Bm.h"
#import "IQBarButtonItem+Bm.h"
#import "IQTitleBarButtonItem+Bm.h"
#import "IQKeyboardReturnKeyHandler+Bm.h"
#import "IQKeyboardManager+Bm.h"
#import "UIViewController+AdditionsBm.h"
#import "NSArray+IQ_NSArray_SortBm.h"
#import "UIScrollView+AdditionsBm.h"
#import "UITableView+PreviousNextIndexPathBm.h"
#import "UICollectionView+PreviousNextIndexPathBm.h"
#import "UIView+AdditionsBm.h"
#import "UIView+IQ_UIView_HierarchyBm.h"
#import "NSObject+IQ_LoggingBm.h"
#import "WKWebView+_AFNetworkingBm.h"
#import "WKWebView+AFNetworkingBm.h"
#import "UIButton+_AFNetworkingBm.h"
#import "UIButton+AFNetworkingBm.h"
#import "UIImageView+_AFNetworkingBm.h"
#import "UIImageView+AFNetworkingBm.h"
#import "AFImageDownloadReceipt+Bm.h"
#import "AFImageDownloader+Bm.h"
#import "AFAutoPurgingImageCache+Bm.h"
#import "UIActivityIndicatorView+AFNetworkingBm.h"
#import "UIProgressView+AFNetworkingBm.h"
#import "UIRefreshControl+AFNetworkingBm.h"
#import "AFNetworkActivityIndicatorManager+Bm.h"
#import "AFSecurityPolicy+Bm.h"
#import "AFNetworkReachabilityManager+Bm.h"
#import "AFURLSessionManager+Bm.h"
#import "AFHTTPRequestSerializer+Bm.h"
#import "AFJSONRequestSerializer+Bm.h"
#import "AFPropertyListRequestSerializer+Bm.h"
#import "AFHTTPResponseSerializer+Bm.h"
#import "AFJSONResponseSerializer+Bm.h"
#import "AFXMLParserResponseSerializer+Bm.h"
#import "AFXMLDocumentResponseSerializer+Bm.h"
#import "AFPropertyListResponseSerializer+Bm.h"
#import "AFImageResponseSerializer+Bm.h"
#import "AFCompoundResponseSerializer+Bm.h"
#import "UIImage+AFNetworkingSafeImageLoadingBm.h"
#import "AFHTTPSessionManager+Bm.h"
#import "UIControl+YYAddBm.h"
#import "UIImage+YYAddBm.h"
#import "UIFont+YYAddBm.h"
#import "UITextField+YYAddBm.h"
#import "UIColor+YYAddBm.h"
#import "UIBezierPath+YYAddBm.h"
#import "UIScreen+YYAddBm.h"
#import "UIScrollView+YYAddBm.h"
#import "UITableView+YYAddBm.h"
#import "UIDevice+YYAddBm.h"
#import "UIApplication+YYAddBm.h"
#import "UIGestureRecognizer+YYAddBm.h"
#import "UIBarButtonItem+YYAddBm.h"
#import "UIView+YYAddBm.h"
#import "NSTimer+YYAddBm.h"
#import "NSDate+YYAddBm.h"
#import "NSObject+YYAddForARCBm.h"
#import "NSNotificationCenter+YYAddBm.h"
#import "NSString+YYAddBm.h"
#import "NSObject+YYAddForKVOBm.h"
#import "NSDictionary+YYAddBm.h"
#import "NSMutableDictionary+YYAddBm.h"
#import "NSNumber+YYAddBm.h"
#import "NSArray+YYAddBm.h"
#import "NSMutableArray+YYAddBm.h"
#import "NSObject+YYAddBm.h"
#import "NSBundle+YYAddBm.h"
#import "NSKeyedUnarchiver+YYAddBm.h"
#import "NSThread+YYAddBm.h"
#import "NSData+YYAddBm.h"
#import "CALayer+YYAddBm.h"
#import "GPUImageMedianFilter+BmBm.h"
#import "AFXMLDocumentResponseSerializer+BmBm.h"
#import "TOActivityCroppedImageProvider+BmBm.h"
#import "UIButton+RACCommandSupportBmBm.h"
#import "GPUImageLuminosityBlendFilter+BmBm.h"
#import "GPUImageMotionDetector+BmBm.h"
#import "GPUImageSourceOverBlendFilter+BmBm.h"
#import "GPUImageWeakPixelInclusionFilter+BmBm.h"
#import "UIGestureRecognizer+RACSignalSupportBmBm.h"
#import "NSString+RACSupportBmBm.h"
#import "RACSignal+RACStreamBmBm.h"
#import "YYClassIvarInfo+BmBm.h"
#import "GPUImageFilterGroup+BmBm.h"
#import "UITableView+PreviousNextIndexPathBmBm.h"
#import "WKWebView+AFNetworkingBmBm.h"
#import "RACOneTuple+BmBm.h"
#import "MASViewAttribute+BmBm.h"
#import "GPUImageMovieWriter+BmBm.h"
#import "GPUImageUnsharpMaskFilter+BmBm.h"
#import "NSEnumerator+RACSequenceAdditionsBmBm.h"
#import "NSObject+RACPropertySubscribingBmBm.h"
#import "GPUImageLanczosResamplingFilter+BmBm.h"
#import "RACKVOChannel+BmBm.h"
#import "RACReturnSignal+BmBm.h"
#import "GPUImageNobleCornerDetectionFilter+BmBm.h"
#import "IQBarButtonItemConfiguration+BmBm.h"
#import "GPUImageCannyEdgeDetectionFilter+BmBm.h"
#import "GPUImageLuminanceThresholdFilter+BmBm.h"
#import "GPUImageGrayscaleFilter+BmBm.h"
#import "UIGestureRecognizer+YYAddBmBm.h"
#import "IQKeyboardReturnKeyHandler+BmBm.h"
#import "DGActivityIndicatorLineScalePulseOutRapidAnimation+BmBm.h"
#import "DGActivityIndicatorBallBeatAnimation+BmBm.h"
#import "RACStringSequence+BmBm.h"
#import "AFNetworkReachabilityManager+BmBm.h"
#import "GPUImageCrosshatchFilter+BmBm.h"
#import "RACFiveTuple+BmBm.h"
#import "UITableViewCell+RACSignalSupportBmBm.h"
#import "NSData+RACSupportBmBm.h"
#import "GPUImagePosterizeFilter+BmBm.h"
#import "NSObject+RACSelectorSignalBmBm.h"
#import "NSObject+RACKVOWrapperBmBm.h"
#import "AFCompoundResponseSerializer+BmBm.h"
#import "GPUImagePixellateFilter+BmBm.h"
#import "RACSignal+BmBm.h"
#import "UIColor+YYAddBmBm.h"
#import "GPUImageMovie+BmBm.h"
#import "GPUImageLuminanceRangeFilter+BmBm.h"
#import "AppDelegate+Bm.h"
#import "DGActivityIndicatorRotatingSquaresAnimation+BmBm.h"
#import "UITextField+RACSignalSupportBmBm.h"
#import "DGActivityIndicatorCookieTerminatorAnimation+BmBm.h"
#import "UIImage+IQKeyboardToolbarNextPreviousImageBmBm.h"
#import "RACKVOChannel+RACChannelToBmBm.h"
#import "RACCompoundDisposable+BmBm.h"
#import "GPUImageNormalBlendFilter+BmBm.h"
#import "GPUImagePerlinNoiseFilter+BmBm.h"
#import "RACQueueScheduler+BmBm.h"
#import "DGActivityIndicatorBallClipRotateMultipleAnimation+BmBm.h"
#import "TOCroppedImageAttributes+BmBm.h"
#import "UIScreen+YYAddBmBm.h"
#import "GPUImageTextureOutput+BmBm.h"
#import "UITableViewHeaderFooterView+RACSignalSupportBmBm.h"
#import "GPUImageAlphaBlendFilter+BmBm.h"
#import "UIView+IQ_UIView_HierarchyBmBm.h"
#import "GPUImageTwoPassFilter+BmBm.h"
#import "GPUImageLocalBinaryPatternFilter+BmBm.h"
#import "GPUImageOutput+BmBm.h"
#import "GPUImageRawDataInput+BmBm.h"
#import "GPUImageHarrisCornerDetectionFilter+BmBm.h"
#import "RACEagerSequence+BmBm.h"
#import "DGActivityIndicatorBallPulseAnimation+BmBm.h"
#import "GPUImageXYDerivativeFilter+BmBm.h"
#import "RACSignal+OperationsBmBm.h"
#import "DGActivityIndicatorBallPulseSyncAnimation+BmBm.h"
#import "GPUImageiOSBlurFilter+BmBm.h"
#import "UIRefreshControl+RACCommandSupportBmBm.h"
#import "DGActivityIndicatorNineDotsAnimation+BmBm.h"
#import "NSObject+YYAddForARCBmBm.h"
#import "GPUImageTwoPassTextureSamplingFilter+BmBm.h"
#import "GPUImageColorInvertFilter+BmBm.h"
#import "GPUImagePolkaDotFilter+BmBm.h"
#import "DGActivityIndicatorBallClipRotatePulseAnimation+BmBm.h"
#import "GPUImageGlassSphereFilter+BmBm.h"
#import "GPUImageSolidColorGenerator+BmBm.h"
#import "RACStream+OperationsBmBm.h"
#import "TOCropView+BmBm.h"
#import "GPUImageGaussianBlurPositionFilter+BmBm.h"
#import "IQTitleBarButtonItem+BmBm.h"
#import "UIScrollView+YYAddBmBm.h"
#import "UIView+IQToolbarAdditionBmBm.h"
#import "DGActivityIndicatorView+BmBm.h"
#import "GPUImageBulgeDistortionFilter+BmBm.h"
#import "RACFourTuple+BmBm.h"
#import "GPUImageJFAVoronoiFilter+BmBm.h"
#import "TOCropToolbar+BmBm.h"
#import "GPUImageSaturationFilter+BmBm.h"
#import "GPUImagePolarPixellateFilter+BmBm.h"
#import "NSUserDefaults+RACSupportBmBm.h"
#import "AFNetworkActivityIndicatorManager+BmBm.h"
#import "GPUImageShiTomasiFeatureDetectionFilter+BmBm.h"
#import "NSObject+IQ_LoggingBmBm.h"
#import "RACTargetQueueScheduler+BmBm.h"
#import "GPUImageBuffer+BmBm.h"
#import "GPUImageHistogramEqualizationFilter+BmBm.h"
#import "RACSubscriptingAssignmentTrampoline+BmBm.h"
#import "UIView+YYAddBmBm.h"
#import "RACDisposable+BmBm.h"
#import "UISlider+RACSignalSupportBmBm.h"
#import "RACSignalSequence+BmBm.h"
#import "UIDevice+YYAddBmBm.h"
#import "RACTupleUnpackingTrampoline+BmBm.h"
#import "YYClassInfo+BmBm.h"
#import "UISwitch+RACSignalSupportBmBm.h"
#import "GPUImageThreeInputFilter+BmBm.h"
#import "RACErrorSignal+BmBm.h"
#import "RACTuple+BmBm.h"
#import "AFPropertyListResponseSerializer+BmBm.h"
#import "GPUImageHardLightBlendFilter+BmBm.h"
#import "NSObject+RACLiftingBmBm.h"
#import "MIIPAPurchase+Bm.h"
#import "YWebFileManager+Bm.h"
#import "YWebDownManager+Bm.h"
#import "YWebDataHandle+Bm.h"
#import "UIColor+HexBm.h"
#import "SDPieProgressView+Bm.h"
#import "SDBaseProgressView+Bm.h"
#import "SDPieLoopProgressView+Bm.h"
#import "SDLoopProgressView+Bm.h"
#import "SDBallProgressView+Bm.h"
#import "SDRotationLoopProgressView+Bm.h"
#import "SDTransparentPieProgressView+Bm.h"
#import "UIView+SDExtensionBm.h"
#import "SDCycleScrollView+Bm.h"
#import "SDCollectionViewCell+Bm.h"
#import "TAAbstractDotView+Bm.h"
#import "TADotView+Bm.h"
#import "TAAnimatedDotView+Bm.h"
#import "TAPageControl+Bm.h"
#import "BKMIBaseTabBarVC+Bm.h"
#import "BKMIBaseNavigationC+Bm.h"
#import "UIImage+GradientColorBm.h"
#import "MISlideVC+Bm.h"
#import "NSArray+YYModelBmBm.h"
#import "UIButton+_AFNetworkingBmBm.h"
#import "NSString+RACDescriptionBmBm.h"
#import "NSNotificationCenter+YYAddBmBm.h"
#import "NSIndexSet+RACSequenceAdditionsBmBm.h"
#import "RACStream+BmBm.h"
#import "GPUImageVignetteFilter+BmBm.h"
#import "BMUICollectionReusableViewn+Bm.h"
#import "BMGPUImageShiTomasiFeatureDetectionFilterT+Bm.h"
#import "BMAFNetworkReachabilityManagerR+Bm.h"
#import "BMUIScrollViewg+Bm.h"
#import "BMNSObjecto+Bm.h"
#import "BMGPUImagePerlinNoiseFilterk+Bm.h"
#import "BMUIViewH+Bm.h"
#import "BMUIButtonc+Bm.h"
#import "BMUITextFieldE+Bm.h"
#import "BMNSObjectE+Bm.h"
#import "BMGPUImageGrayscaleFilterJ+Bm.h"
#import "BMDGActivityIndicatorBallZigZagAnimationi+Bm.h"
#import "BMRACTupleNilF+Bm.h"
#import "BMNSArrayQ+Bm.h"
#import "BMRACTupleb+Bm.h"
#import "BMDGActivityIndicatorBallPulseSyncAnimationV+Bm.h"
#import "BMGPUImagePosterizeFilterk+Bm.h"
#import "BMRACDisposabler+Bm.h"
#import "BMGPUImagePinchDistortionFilterX+Bm.h"
#import "BMRACEmptySignall+Bm.h"
#import "BMMAS_VIEW_CONTROLLERL+Bm.h"
#import "BMGPUImageOutputG+Bm.h"
#import "BMBKMIBaseTabBarVCC+Bm.h"
#import "BMGPUImageNormalBlendFilterr+Bm.h"
#import "BMIQTitleBarButtonItems+Bm.h"
#import "BMDGActivityIndicatorBallSpinFadeLoaderS+Bm.h"
#import "BMGPUImageColorPackingFilterd+Bm.h"
#import "BMRACFourTupler+Bm.h"
#import "BMUICollectionViewm+Bm.h"
#import "BMGPUImageHistogramEqualizationFilterR+Bm.h"
#import "BMAFImageDownloaderV+Bm.h"
#import "BMNSEnumeratoro+Bm.h"
#import "BMGPUImageBrightnessFilterw+Bm.h"
#import "BMNSDataG+Bm.h"
#import "BMYYClassPropertyInfoR+Bm.h"
#import "BMRACTupleUnpackingTrampolinef+Bm.h"
#import "BMGPUImageLuminosityBlendFilterz+Bm.h"
#import "BMRACScopedDisposableQ+Bm.h"
#import "BMGPUImageThresholdedNonMaximumSuppressionFilterJ+Bm.h"
#import "BMGPUImagePixellatePositionFilterm+Bm.h"
#import "BMGPUImageLocalBinaryPatternFilterP+Bm.h"
#import "BMAFNetworkActivityIndicatorManagerb+Bm.h"
#import "BMNSIndexSetJ+Bm.h"
#import "BMIQBarButtonItemD+Bm.h"
#import "BMRACStreamr+Bm.h"
#import "BMSDPieProgressViewK+Bm.h"
#import "BMIQKeyboardManagerS+Bm.h"
#import "BMGPUImageLocalBinaryPatternFilterz+Bm.h"
#import "BMGPUImageVignetteFilterM+Bm.h"
#import "BMGPUImageColorInvertFilterB+Bm.h"
#import "BMGPUImageMoviei+Bm.h"
#import "BMDGActivityIndicatorBallBeatAnimationB+Bm.h"
#import "BMGPUImageVoronoiConsumerFilterj+Bm.h"
#import "BMDGActivityIndicatorNineDotsAnimationZ+Bm.h"
#import "BMGPUImageMissEtikateFilterd+Bm.h"
#import "BMNSObjectA+Bm.h"
#import "BMAFImageResponseSerializerf+Bm.h"
#import "BMDGActivityIndicatorBallScaleAnimationX+Bm.h"
#import "BMUIImageViewN+Bm.h"
#import "BMGPUImageCropFilterL+Bm.h"
#import "BMAFHTTPSessionManagerk+Bm.h"
#import "BMGPUImageTwoPassFilterj+Bm.h"
#import "BMNSObjectk+Bm.h"
#import "BMUIRefreshControlC+Bm.h"
#import "BMNSThreado+Bm.h"
#import "BMNSURLConnectionm+Bm.h"
#import "BMTOCroppedImageAttributesv+Bm.h"
#import "BMTOCropToolbarE+Bm.h"
#import "BMGPUImageJFAVoronoiFilterh+Bm.h"
#import "BMNSDictionaryZ+Bm.h"
#import "BMGPUImageHalftoneFilterP+Bm.h"
#import "BMYYClassInfoI+Bm.h"
#import "BMGPUImageExposureFilterO+Bm.h"
#import "BMGPUImageTwoInputFilterU+Bm.h"
#import "BMDGActivityIndicatorViewD+Bm.h"
#import "BMGPUImageHardLightBlendFilterX+Bm.h"
#import "BMTOCropToolbarO+Bm.h"
#import "BMGPUImageTextureOutputy+Bm.h"
#import "BMRACSignalI+Bm.h"
#import "BMDGActivityIndicatorTriangleSkewSpinAnimationz+Bm.h"
#import "BMDGActivityIndicatorDoubleBounceAnimationS+Bm.h"
#import "BMNSLayoutConstraintB+Bm.h"
#import "BMRACStringSequenceQ+Bm.h"
#import "BMNSStringj+Bm.h"
#import "BMGPUImageThresholdEdgeDetectionFilterp+Bm.h"
#import "BMRACValueTransformern+Bm.h"
#import "BMUISliderU+Bm.h"
#import "BMRACUnarySequencez+Bm.h"
#import "BMGPUImage3x3TextureSamplingFilterx+Bm.h"
#import "BMBKMIBaseNavigationCH+Bm.h"
#import "BMUIButtonQ+Bm.h"
#import "BMIQBarButtonItemConfigurationL+Bm.h"
#import "BMGPUImageDivideBlendFilterQ+Bm.h"
#import "BMRACEventp+Bm.h"
#import "BMSDLoopProgressViewZ+Bm.h"
#import "BMUITableViewHeaderFooterViewF+Bm.h"
#import "BMGPUImageiOSBlurFiltere+Bm.h"
#import "BMRACDelegateProxyJ+Bm.h"
#import "BMUIViewP+Bm.h"
#import "BMUIControlh+Bm.h"
#import "BMAFJSONResponseSerializera+Bm.h"
#import "BMRACCompoundDisposableU+Bm.h"
#import "BMRACKVOChannelj+Bm.h"
#import "BMUISwitchh+Bm.h"
#import "BMGPUImageMotionBlurFilterl+Bm.h"
#import "BMRACTestSchedulerD+Bm.h"
#import "BMUIControlL+Bm.h"
#import "BMGPUImageRawDataOutputB+Bm.h"
#import "BMAFCompoundResponseSerializerc+Bm.h"
#import "BMGPUImageLowPassFilterA+Bm.h"
#import "BMUIGestureRecognizerY+Bm.h"
#import "BMUITableViewCellM+Bm.h"
#import "BMGPUImageChromaKeyFilteru+Bm.h"
#import "BMNSArrayG+Bm.h"
#import "BMRACIndexSetSequencer+Bm.h"
#import "BMGPUImageSolidColorGeneratorY+Bm.h"
#import "BMUITableViewHeaderFooterViewH+Bm.h"
#import "BMNSObjecty+Bm.h"
#import "BMNSArraym+Bm.h"
#import "BMUIImagev+Bm.h"
#import "BMGPUImageBufferv+Bm.h"
#import "BMIQKeyboardReturnKeyHandlerC+Bm.h"
#import "BMRACStreamJ+Bm.h"
#import "BMRACDynamicSequencex+Bm.h"
#import "BMWKWebViewa+Bm.h"
#import "BMDGActivityIndicatorFiveDotsAnimationv+Bm.h"
#import "BMGPUImageHarrisCornerDetectionFiltere+Bm.h"
#import "BMGPUImageExclusionBlendFilterS+Bm.h"
#import "BMGPUImageOverlayBlendFilterH+Bm.h"
#import "BMDGActivityIndicatorLineScalePartyAnimationT+Bm.h"
#import "BMDGActivityIndicatorRotatingTrigonAnimationr+Bm.h"
#import "BMGPUImageRawDataInputo+Bm.h"
#import "BMGPUImageFalseColorFilterG+Bm.h"
#import "BMTOCroppedImageAttributesR+Bm.h"
#import "BMGPUImagePixellateFilterj+Bm.h"
#import "BMGPUImageBulgeDistortionFilterF+Bm.h"
#import "BMDGActivityIndicatorThreeDotsAnimationE+Bm.h"
#import "BMGPUImageWhiteBalanceFilterf+Bm.h"
#import "BMGPUImageAverageColorx+Bm.h"
#import "BMGPUImageFilterm+Bm.h"
#import "BMTOCropOverlayViewK+Bm.h"
#import "BMGPUImageAddBlendFilterN+Bm.h"
#import "BMRACStringSequenceJ+Bm.h"
#import "BMGPUImageLuminanceRangeFilterz+Bm.h"
#import "BMGPUImageNobleCornerDetectionFilterk+Bm.h"
#import "BMDGActivityIndicatorBallClipRotateAnimationa+Bm.h"
#import "BMRACSignalx+Bm.h"
#import "BMGPUImageSketchFilterZ+Bm.h"
#import "BMDGActivityIndicatorLineScalePulseOutRapidAnimationg+Bm.h"
#import "BMRACErrorSignalg+Bm.h"
#import "BMUIViewK+Bm.h"
#import "BMTOCropViewo+Bm.h"
#import "BMRACFiveTuplel+Bm.h"
#import "BMGPUImageKuwaharaFilterD+Bm.h"
#import "BMGPUImageAmatorkaFilterz+Bm.h"
#import "BMGPUImageSolidColorGeneratorL+Bm.h"
#import "BMGPUImageMultiplyBlendFiltern+Bm.h"
#import "BMGPUImageZoomBlurFilterJ+Bm.h"
#import "BMGPUImagePictureI+Bm.h"
#import "BMGPUImageSmoothToonFilterL+Bm.h"
#import "BMUITextFieldf+Bm.h"
#import "BMUIScreenL+Bm.h"
#import "BMMASConstraintY+Bm.h"
#import "BMNSArrayX+Bm.h"
#import "BMGPUImagePicturec+Bm.h"
#import "BMNSMutableDictionaryh+Bm.h"
#import "BMUIGestureRecognizerL+Bm.h"
#import "BMNSObjectF+Bm.h"
#import "BMNSKeyedUnarchiverx+Bm.h"
#import "BMNSStringQ+Bm.h"
#import "BMGPUImageSourceOverBlendFilterP+Bm.h"
#import "BMGPUImageDirectionalNonMaximumSuppressionFiltere+Bm.h"
#import "BMGPUImageTwoPassTextureSamplingFilterG+Bm.h"
#import "BMGPUImageSoftLightBlendFilterL+Bm.h"
#import "BMDGActivityIndicatorBallScaleMultipleAnimationG+Bm.h"
#import "BMUIImagem+Bm.h"
#import "BMRACTargetQueueSchedulerQ+Bm.h"
#import "BMUIGestureRecognizerB+Bm.h"
#import "BMGPUImageStretchDistortionFilterg+Bm.h"
#import "BMMASViewConstraintC+Bm.h"
#import "BMGPUImageMotionDetectorQ+Bm.h"
#import "BMDGActivityIndicatorBallPulseAnimationd+Bm.h"
#import "BMUIViewO+Bm.h"
#import "BMGPUImageTwoPassFilterI+Bm.h"
#import "BMGPUImageCannyEdgeDetectionFilterO+Bm.h"
#import "BMGPUImagePosterizeFilterf+Bm.h"
#import "BMNSNumberS+Bm.h"
#import "BMRACMulticastConnections+Bm.h"
#import "BMMKAnnotationViewp+Bm.h"
#import "BMIQToolbarq+Bm.h"
#import "BMGPUImageHoughTransformLineDetectorE+Bm.h"
#import "BMGPUImageLaplacianFilterO+Bm.h"
#import "BMAFURLSessionManagerN+Bm.h"
#import "BMGLProgramI+Bm.h"
#import "BMRACReturnSignalw+Bm.h"
#import "BMGPUImageBoxBlurFilterT+Bm.h"
#import "BMYYClassMethodInfoV+Bm.h"
#import "BMGPUImageShiTomasiFeatureDetectionFilterE+Bm.h"
#import "BMUIScrollViewV+Bm.h"
#import "BMRACKVOChannelc+Bm.h"
#import "BMGPUImageAlphaBlendFilterC+Bm.h"
#import "BMGPUImageHighPassFilterO+Bm.h"
#import "BMUIImageQ+Bm.h"
#import "BMNSObjectT+Bm.h"
#import "BMDGActivityIndicatorBallPulseAnimationX+Bm.h"
#import "BMGPUImageiOSBlurFilterf+Bm.h"
#import "BMRACKVOTrampolineA+Bm.h"
#import "BMDGActivityIndicatorNineDotsAnimationo+Bm.h"
#import "BMUIButtonx+Bm.h"
#import "BMGPUImageThreeInputFilterN+Bm.h"
#import "BMUIAlertViewr+Bm.h"
#import "BMUISwitchk+Bm.h"
#import "BMAFPropertyListRequestSerializerI+Bm.h"
#import "BMNSDictionaryy+Bm.h"
#import "BMGPUImageSoftEleganceFilterb+Bm.h"
#import "BMRACQueueSchedulerr+Bm.h"
#import "BMIQTextViewX+Bm.h"
#import "BMDGActivityIndicatorBallZigZagDeflectAnimationw+Bm.h"
#import "BMTOCropViewControllert+Bm.h"
#import "BMRACEagerSequenceL+Bm.h"
#import "BMGPUImageLevelsFilterG+Bm.h"
#import "BMSDBaseProgressViewP+Bm.h"
#import "BMNSNotificationCenterV+Bm.h"
#import "BMGPUImageFilterPipelineO+Bm.h"
#import "BMDGActivityIndicatorTripleRingsAnimationl+Bm.h"
#import "BMGPUImageHarrisCornerDetectionFilterH+Bm.h"
#import "BMIQTitleBarButtonItemb+Bm.h"
#import "BMMIIPAPurchaseR+Bm.h"
#import "BMRACChanneld+Bm.h"
#import "BMRACReplaySubjectc+Bm.h"
#import "BMRACFourTuplec+Bm.h"
#import "BMGPUImageLuminanceThresholdFilterq+Bm.h"
#import "BMDGActivityIndicatorBallClipRotateMultipleAnimationD+Bm.h"
#import "BMGPUImageFramebufferN+Bm.h"
#import "BMGPUImageMovieCompositionC+Bm.h"
#import "BMRACSubjectj+Bm.h"
#import "BMGPUImageFASTCornerDetectionFilterq+Bm.h"
#import "BMRACSignalSequenceq+Bm.h"
#import "BMRACSignalj+Bm.h"
#import "BMGPUImageTextureOutputz+Bm.h"
#import "BMUIApplicationE+Bm.h"
#import "BMDGActivityIndicatorTwoDotsAnimationQ+Bm.h"
#import "BMAppDelegateR+Bm.h"
#import "BMGPUImageKuwaharaRadius3FilterH+Bm.h"
#import "BMUITextViewL+Bm.h"
#import "BMGPUImageBulgeDistortionFiltero+Bm.h"
#import "BMGPUImagePixellateFilterC+Bm.h"
#import "BMGPUImagePrewittEdgeDetectionFiltert+Bm.h"
#import "BMAFXMLParserResponseSerializerU+Bm.h"
#import "BMRACOneTuplet+Bm.h"
#import "BMTADotViewX+Bm.h"
#import "BMGPUImageCrosshatchFiltert+Bm.h"
#import "BMMAS_VIEWn+Bm.h"
#import "BMGPUImageRGBDilationFilterm+Bm.h"
#import "BMGPUImageRGBClosingFilterK+Bm.h"
#import "BMGPUImageMedianFilterN+Bm.h"
#import "BMUIProgressViewX+Bm.h"
#import "BMAFHTTPResponseSerializerI+Bm.h"
#import "BMGPUImageAdaptiveThresholdFiltery+Bm.h"
#import "BMGPUImageMovieWriterP+Bm.h"
#import "BMAFXMLDocumentResponseSerializerj+Bm.h"
#import "BMUIImagePickerControllerS+Bm.h"
#import "BMNSObjectp+Bm.h"
#import "BMUIControlO+Bm.h"
#import "BMDGActivityIndicatorCookieTerminatorAnimationE+Bm.h"
#import "BMYWebDataHandleI+Bm.h"
#import "BMDGActivityIndicatorBallRotateAnimationh+Bm.h"
#import "BMMASConstraintMakerL+Bm.h"
#import "BMGPUImageHazeFiltern+Bm.h"
#import "BMNSArrayn+Bm.h"
#import "BMGPUImageHighlightShadowFiltero+Bm.h"
#import "BMDGActivityIndicatorBallGridBeatAnimationu+Bm.h"
#import "BMDGActivityIndicatorBallClipRotatePulseAnimationW+Bm.h"
#import "BMUIFonty+Bm.h"
#import "BMGPUImageViewe+Bm.h"
#import "BMNSDatae+Bm.h"
#import "BMUIDevicen+Bm.h"
#import "BMRACEagerSequenceu+Bm.h"
#import "BMGPUImageSaturationBlendFilterK+Bm.h"
#import "BMGPUImageColorInvertFiltern+Bm.h"
#import "BMRACChannelTerminalp+Bm.h"
#import "BMGPUImageContextx+Bm.h"
#import "BMGPUImageGaussianBlurPositionFiltern+Bm.h"
#import "BMGPUImageTransformFilterW+Bm.h"
#import "BMGPUImageLanczosResamplingFilterz+Bm.h"
#import "BMGPUImageMovieWriterG+Bm.h"
#import "BMRACSignalSequenceH+Bm.h"
#import "BMNSNotificationCentere+Bm.h"
#import "BMUIDeviceD+Bm.h"
#import "BMDGActivityIndicatorLineScalePulseOutRapidAnimationL+Bm.h"
#import "BMRACSignals+Bm.h"
#import "BMUIBarButtonItemf+Bm.h"
#import "BMGPUImageMaskFilterZ+Bm.h"
#import "BMAFNetworkActivityIndicatorManagerN+Bm.h"
#import "BMUIColori+Bm.h"
#import "BMNSFileHandlee+Bm.h"
#import "BMRACQueueSchedulerA+Bm.h"
#import "BMRACImmediateSchedulere+Bm.h"
#import "BMGPUImageXYDerivativeFilterZ+Bm.h"
#import "BMGPUImageTwoPassTextureSamplingFilterb+Bm.h"
#import "BMAFAutoPurgingImageCacheQ+Bm.h"
#import "BMUISliderO+Bm.h"
#import "BMAFNetworkReachabilityManagerz+Bm.h"
#import "BMGPUImageHueBlendFilterS+Bm.h"
#import "BMGPUImageSubtractBlendFilterV+Bm.h"
#import "BMUIImageb+Bm.h"
#import "BMIQKeyboardReturnKeyHandlerW+Bm.h"
#import "BMDGActivityIndicatorRotatingSquaresAnimationq+Bm.h"
#import "BMGPUImageTiltShiftFilteri+Bm.h"
#import "BMGPUImagePoissonBlendFiltere+Bm.h"
#import "BMGPUImageFilterGroupu+Bm.h"
#import "BMGPUImageSphereRefractionFiltery+Bm.h"
#import "BMRACCompoundDisposableK+Bm.h"
#import "BMUIBezierPathG+Bm.h"
#import "BMGPUImageEmbossFiltert+Bm.h"
#import "BMGPUImageLuminosityu+Bm.h"
#import "BMTOCropScrollViewM+Bm.h"
#import "BMIQBarButtonItemConfigurationr+Bm.h"
#import "BMTAAnimatedDotVieww+Bm.h"
#import "BMUIImageL+Bm.h"
#import "BMGPUImageRGBOpeningFilterL+Bm.h"
#import "BMGPUImageVideoCameraj+Bm.h"
#import "BMGPUImageDarkenBlendFilterG+Bm.h"
#import "BMMASViewAttributel+Bm.h"
#import "BMUIViewd+Bm.h"
#import "BMRACSubscriptingAssignmentTrampolineY+Bm.h"
#import "BMUITableViews+Bm.h"
#import "BMGPUImageBilateralFilterc+Bm.h"
#import "BMDGActivityIndicatorViewZ+Bm.h"
#import "BMNSDataa+Bm.h"
#import "BMGPUImageParallelCoordinateLineTransformFilterk+Bm.h"
#import "BMGPUImagePolkaDotFilterH+Bm.h"
#import "BMAFImageDownloadReceipta+Bm.h"
#import "BMGPUImageMedianFilterW+Bm.h"
#import "BMGPUImageGlassSphereFilterW+Bm.h"
#import "BMGPUImageSobelEdgeDetectionFilterR+Bm.h"
#import "BMDGActivityIndicatorBallClipRotatePulseAnimationx+Bm.h"
#import "BMUIButtony+Bm.h"
#import "BMAFSecurityPolicyZ+Bm.h"
#import "BMRACFiveTupleU+Bm.h"
#import "BMRACSubscriptingAssignmentTrampolineo+Bm.h"
#import "BMAFJSONRequestSerializerL+Bm.h"
#import "BMSDCycleScrollViewY+Bm.h"
#import "BMNSObjectU+Bm.h"
#import "BMTOCropViewv+Bm.h"
#import "BMGPUImageSharpenFilterZ+Bm.h"
#import "BMAFHTTPRequestSerializerq+Bm.h"
#import "BMGPUImageLinearBurnBlendFilterx+Bm.h"
#import "BMUIImageViewP+Bm.h"
#import "BMGPUImageSingleComponentGaussianBlurFilterj+Bm.h"
#import "BMGPUImageSourceOverBlendFilteri+Bm.h"
#import "BMNSValueO+Bm.h"
#import "BMUIViewX+Bm.h"
#import "BMNSStringH+Bm.h"
#import "BMDGActivityIndicatorRotatingSquaresAnimationc+Bm.h"
#import "BMDGActivityIndicatorLineScalePulseOutAnimationr+Bm.h"
#import "BMRACOneTupleq+Bm.h"
#import "BMYYClassInfoa+Bm.h"
#import "BMMAS_VIEWK+Bm.h"
#import "BMSDTransparentPieProgressViewi+Bm.h"
#import "BMGPUImageTextureInputN+Bm.h"
#import "BMGPUImageCrosshairGeneratorL+Bm.h"
#import "BMGPUImageColorDodgeBlendFilterS+Bm.h"
#import "BMNSUserDefaultsU+Bm.h"
#import "BMGPUImageWeakPixelInclusionFilterW+Bm.h"
#import "BMRACStreamf+Bm.h"
#import "BMGPUImageSwirlFilterq+Bm.h"
#import "BMGPUImageClosingFilterS+Bm.h"
#import "BMWKWebViewM+Bm.h"
#import "BMUIStepperG+Bm.h"
#import "BMDGActivityIndicatorBallScaleRippleAnimationh+Bm.h"
#import "BMMASCompositeConstraintZ+Bm.h"
#import "BMGPUImageOutputs+Bm.h"
#import "BMNSEnumeratorQ+Bm.h"
#import "BMGPUImagePolkaDotFilterP+Bm.h"
#import "BMDGActivityIndicatorBallClipRotateMultipleAnimationk+Bm.h"
#import "BMWKWebViewi+Bm.h"
#import "BMGPUImageLuminanceRangeFilterg+Bm.h"
#import "BMRACDynamicSignals+Bm.h"
#import "BMNSIndexSetz+Bm.h"
#import "BMGPUImageColorBurnBlendFilterV+Bm.h"
#import "BMUIColorU+Bm.h"
#import "BMGPUImageLookupFilterp+Bm.h"
#import "BMNSOrderedSetl+Bm.h"
#import "BMRACPassthroughSubscriberW+Bm.h"
#import "BMGPUImageDifferenceBlendFiltery+Bm.h"
#import "BMRACSignalO+Bm.h"
#import "BMUIDatePickerO+Bm.h"
#import "BMRACEmptySequenceC+Bm.h"
#import "BMGPUImageRawDataInputg+Bm.h"
#import "BMGPUImageGaussianBlurPositionFilterX+Bm.h"
#import "BMNSMutableArrayq+Bm.h"
#import "BMRACTupleUnpackingTrampolineV+Bm.h"
#import "BMYWebDownManagerp+Bm.h"
#import "BMTOCropViewControllerTransitioningR+Bm.h"
#import "BMGPUImageXYDerivativeFilterf+Bm.h"
#import "BMGPUImageToonFilteri+Bm.h"
#import "BMGPUImageLineGeneratorE+Bm.h"
#import "BMGPUImageGammaFilterT+Bm.h"
#import "BMDGActivityIndicatorBallBeatAnimationX+Bm.h"
#import "BMGPUImagePolarPixellateFilterl+Bm.h"
#import "BMNSStringl+Bm.h"
#import "BMGPUImageRGBErosionFilterI+Bm.h"
#import "BMGPUImageFramebufferCachep+Bm.h"
#import "BMGPUImageAlphaBlendFilterl+Bm.h"
#import "BMGPUImageThreeInputFilterK+Bm.h"
#import "BMGPUImageErosionFiltert+Bm.h"
#import "BMRACKVOChannelL+Bm.h"
#import "BMUIScreenq+Bm.h"
#import "BMGPUImagePolarPixellateFilterf+Bm.h"
#import "BMRACUnitv+Bm.h"
#import "BMSDRotationLoopProgressViewG+Bm.h"
#import "BMRACKVOChannelY+Bm.h"
#import "BMGPUImageGrayscaleFilterk+Bm.h"
#import "BMTOActivityCroppedImageProviderZ+Bm.h"
#import "BMUIRefreshControll+Bm.h"
#import "BMNSObjectD+Bm.h"
#import "BMRACErrorSignalo+Bm.h"
#import "BMUIActivityIndicatorViewj+Bm.h"
#import "BMGPUImage3x3ConvolutionFilterb+Bm.h"
#import "BMRACGroupedSignalQ+Bm.h"
#import "BMGPUImageBufferA+Bm.h"
#import "BMMISlideVCn+Bm.h"
#import "BMSDPieLoopProgressViewm+Bm.h"
#import "BMGPUImageUnsharpMaskFilterQ+Bm.h"
#import "BMNSObjectN+Bm.h"
#import "BMGPUImageMotionDetectorw+Bm.h"
#import "BMRACSubscriptionSchedulerQ+Bm.h"
#import "BMGPUImageCGAColorspaceFilterM+Bm.h"
#import "BMRACKVOProxyy+Bm.h"
#import "BMGPUImageVignetteFilterb+Bm.h"
#import "BMRACArraySequenceH+Bm.h"
#import "BMGPUImageHardLightBlendFilterK+Bm.h"
#import "BMGPUImageHistogramEqualizationFilterS+Bm.h"
#import "BMTAPageControlA+Bm.h"
#import "BMGPUImageCrosshatchFilterj+Bm.h"
#import "BMGPUImageStillCameraq+Bm.h"
#import "BMRACSignalp+Bm.h"
#import "BMGPUImageNormalBlendFilterS+Bm.h"
#import "BMDGActivityIndicatorBallScaleRippleMultipleAnimations+Bm.h"
#import "BMNSUserDefaultsN+Bm.h"
#import "BMGPUImageLuminanceThresholdFilterk+Bm.h"
#import "BMCALayerr+Bm.h"
#import "BMYWebFileManagerQ+Bm.h"
#import "BMAFXMLDocumentResponseSerializerZ+Bm.h"
#import "BMGPUImageHistogramGeneratory+Bm.h"
#import "BMRACSequenceJ+Bm.h"
#import "BMNSDictionarym+Bm.h"
#import "BMRACTupleg+Bm.h"
#import "BMGPUImageWeakPixelInclusionFilterH+Bm.h"
#import "BMGPUImageLuminosityBlendFilterq+Bm.h"
#import "BMDGActivityIndicatorBallTrianglePathAnimationg+Bm.h"
#import "BMGPUImageMovieB+Bm.h"
#import "BMGPUImageHSBFilteru+Bm.h"
#import "BMUIActionSheetT+Bm.h"
#import "BMGPUImageScreenBlendFilterx+Bm.h"
#import "BMRACTuplem+Bm.h"
#import "BMTAAbstractDotViewu+Bm.h"
#import "BMYYClassIvarInfoi+Bm.h"
#import "BMDGActivityIndicatorRotatingSandglassAnimationp+Bm.h"
#import "BMGPUImageOpeningFilterX+Bm.h"
#import "BMGPUImageTwoInputCrossTextureSamplingFilterA+Bm.h"
#import "BMGPUImageColorBlendFilterw+Bm.h"
#import "BMGPUImageRGBFilterz+Bm.h"
#import "BMUITableViewCellT+Bm.h"
#import "BMGPUImagePerlinNoiseFilterN+Bm.h"
#import "BMRACTargetQueueSchedulers+Bm.h"
#import "BMRACTwoTuplee+Bm.h"
#import "BMUIRefreshControlH+Bm.h"
#import "BMNSInvocationI+Bm.h"
#import "BMGPUImageDirectionalSobelEdgeDetectionFilterq+Bm.h"
#import "BMRACSignalh+Bm.h"
#import "BMRACDisposablek+Bm.h"
#import "BMDGActivityIndicatorBallPulseSyncAnimationo+Bm.h"
#import "BMGPUImageJFAVoronoiFilterC+Bm.h"
#import "BMGPUImageHistogramFiltero+Bm.h"
#import "BMUITableViewF+Bm.h"
#import "BMGPUImageLightenBlendFilterq+Bm.h"
#import "BMUIColorX+Bm.h"
#import "BMGPUImageSaturationFiltere+Bm.h"
#import "BMGPUImageNonMaximumSuppressionFilterW+Bm.h"
#import "BMDGActivityIndicatorLineScaleAnimationV+Bm.h"
#import "BMGPUImageGlassSphereFilterH+Bm.h"
#import "BMRACSchedulerk+Bm.h"
#import "BMRACSerialDisposableN+Bm.h"
#import "BMDGActivityIndicatorCookieTerminatorAnimationc+Bm.h"
#import "BMGPUImageCannyEdgeDetectionFilterQ+Bm.h"
#import "BMGPUImageGaussianBlurFilterr+Bm.h"
#import "BMDGActivityIndicatorTriplePulseAnimationz+Bm.h"
#import "BMNSSety+Bm.h"
#import "BMGPUImageSepiaFilterQ+Bm.h"
#import "BMNSStringa+Bm.h"
#import "BMNSObjectV+Bm.h"
#import "BMRACSubscriberX+Bm.h"
#import "BMSDCollectionViewCelle+Bm.h"
#import "BMGPUImageThresholdSketchFilterQ+Bm.h"
#import "BMAFPropertyListResponseSerializerr+Bm.h"
#import "BMNSDateP+Bm.h"
#import "BMNSTimerD+Bm.h"
#import "BMUIImageW+Bm.h"
#import "BMUIButtont+Bm.h"
#import "BMGPUImageContrastFilterE+Bm.h"
#import "BMRACTupleSequenceu+Bm.h"
#import "BMUIViewControllerl+Bm.h"
#import "BMUISegmentedControlq+Bm.h"
#import "BMGPUImageAverageLuminanceThresholdFilterc+Bm.h"
#import "BMRACThreeTupleN+Bm.h"
#import "BMNSObjectx+Bm.h"
#import "BMAFCompoundResponseSerializerH+Bm.h"
#import "BMYYClassIvarInfoq+Bm.h"
#import "BMGPUImageDissolveBlendFilterI+Bm.h"
#import "BMSDBallProgressViews+Bm.h"
#import "BMGPUImageFilterGroupn+Bm.h"
#import "BMNSBundled+Bm.h"
#import "BMTOActivityCroppedImageProviderl+Bm.h"
#import "BMUIScrollViewz+Bm.h"
#import "BMNSObjectr+Bm.h"
#import "BMUIViewU+Bm.h"
#import "BMGPUImageUnsharpMaskFilterM+Bm.h"
#import "BMGPUImageChromaKeyBlendFiltert+Bm.h"
#import "BMGPUImageUIElemento+Bm.h"
#import "BMRACCommandW+Bm.h"
#import "BMRACReturnSignalg+Bm.h"
#import "BMUIBarButtonItemS+Bm.h"
#import "BMRACSignalF+Bm.h"
#import "BMUITableViewb+Bm.h"
#import "BMGPUImageColorMatrixFilterN+Bm.h"
#import "BMGPUImageNobleCornerDetectionFilteru+Bm.h"
#import "BMGPUImageDilationFilterI+Bm.h"
#import "BMGPUImageHueFilterN+Bm.h"
#import "BMRACTupleu+Bm.h"
#import "BMGPUImageMosaicFiltery+Bm.h"
#import "BMGPUImageOpacityFilterw+Bm.h"
#import "BMGPUImageSaturationFilterK+Bm.h"
#import "BMDGActivityIndicatorAnimationc+Bm.h"
#import "BMGPUImageGaussianSelectiveBlurFiltern+Bm.h"
#import "BMRACBehaviorSubjectL+Bm.h"
#import "BMGPUImageLanczosResamplingFilterO+Bm.h"
#import "BMDGActivityIndicatorBallGridPulseAnimationR+Bm.h"
#import "BMRACBlockTrampolinee+Bm.h"
#import "RACPassthroughSubscriber+BmBm.h"
#import "RACTupleSequence+BmBm.h"
#import "UICollectionView+PreviousNextIndexPathBmBm.h"
#import "RACChannel+BmBm.h"
#import "UIControl+RACSignalSupportBmBm.h"
#import "RACReplaySubject+BmBm.h"
#import "DGActivityIndicatorFiveDotsAnimation+BmBm.h"
#import "NSDictionary+RACSequenceAdditionsBmBm.h"
#import "GPUImageFASTCornerDetectionFilter+BmBm.h"
#import "DGActivityIndicatorBallZigZagAnimation+BmBm.h"
#import "TOCropOverlayView+BmBm.h"
#import "GPUImageExposureFilter+BmBm.h"
#import "UIButton+AFNetworkingBmBm.h"
#import "NSObject+YYAddBmBm.h"
#import "GPUImageVoronoiConsumerFilter+BmBm.h"
#import "GPUImageSoftLightBlendFilter+BmBm.h"
#import "DGActivityIndicatorAnimation+BmBm.h"
#import "MASConstraint+BmBm.h"
#import "RACScopedDisposable+BmBm.h"
#import "NSObject+RACDeallocatingBmBm.h"
#import "GPUImageDifferenceBlendFilter+BmBm.h"
#import "UIActivityIndicatorView+AFNetworkingBmBm.h"
#import "NSLayoutConstraint+MASDebugAdditionsBmBm.h"
#import "NSString+RACKeyPathUtilitiesBmBm.h"
#import "GPUImageMotionBlurFilter+BmBm.h"
#import "DGActivityIndicatorBallScaleRippleMultipleAnimation+BmBm.h"
#import "RACSignal+DebuggingBmBm.h"
#import "GPUImageColorDodgeBlendFilter+BmBm.h"
#import "GPUImageLuminosity+BmBm.h"
#import "GPUImageSobelEdgeDetectionFilter+BmBm.h"
#import "IQBarButtonItem+BmBm.h"
#import "MASConstraintMaker+BmBm.h"
#import "GPUImageZoomBlurFilter+BmBm.h"
#import "AFJSONRequestSerializer+BmBm.h"
#import "GPUImageRawDataOutput+BmBm.h"
#import "AFSecurityPolicy+BmBm.h"
#import "GPUImageThresholdedNonMaximumSuppressionFilter+BmBm.h"
#import "RACSignal+SubscriptionBmBm.h"
#import "GPUImageBoxBlurFilter+BmBm.h"
#import "GPUImagePicture+TextureSubimageBmBm.h"
#import "UIImageView+AFNetworkingBmBm.h"
#import "GPUImageLevelsFilter+BmBm.h"
#import "RACSerialDisposable+BmBm.h"
#import "GPUImageThresholdSketchFilter+BmBm.h"
#import "NSDictionary+YYAddBmBm.h"
#import "TOCropViewControllerTransitioning+BmBm.h"
#import "DGActivityIndicatorTriangleSkewSpinAnimation+BmBm.h"
#import "GPUImageMovieComposition+BmBm.h"
#import "DGActivityIndicatorRotatingSandglassAnimation+BmBm.h"
#import "GPUImageUIElement+BmBm.h"
#import "DGActivityIndicatorTripleRingsAnimation+BmBm.h"
#import "UIDatePicker+RACSignalSupportBmBm.h"
#import "NSURLConnection+RACSupportBmBm.h"
#import "AFImageResponseSerializer+BmBm.h"
#import "AFAutoPurgingImageCache+BmBm.h"
#import "RACSubscriber+BmBm.h"
#import "NSData+YYAddBmBm.h"
#import "GPUImageHoughTransformLineDetector+BmBm.h"
#import "GPUImageNonMaximumSuppressionFilter+BmBm.h"
#import "UITextView+RACSignalSupportBmBm.h"
#import "GPUImageSphereRefractionFilter+BmBm.h"
#import "GPUImageFramebuffer+BmBm.h"
#import "BKMIHomeSectionOneCell+Bm.h"
#import "BKMITagsDetailCell+Bm.h"
#import "BKMIFilterDetialCell+Bm.h"
#import "BKMITagsCell+Bm.h"
#import "BKMIHomeToolsView+Bm.h"
#import "BKMIHomeSectionTowCell+Bm.h"
#import "BKMIHomeView+Bm.h"
#import "BKMIStickerDetailCell+Bm.h"
#import "BKMIFilterCell+Bm.h"
#import "BKMIHomeHeaderView+Bm.h"
#import "BKMIFeedbackVC+Bm.h"
#import "BKMIMoreVC+Bm.h"
#import "BKMIMoreHeaderView+Bm.h"
#import "BKMIMoreCell+Bm.h"
#import "BKMILoginVC+Bm.h"
#import "BKMIRegisterVC+Bm.h"
#import "BKMICoinsCell+Bm.h"
#import "BKMIStoreVC+Bm.h"
#import "BKMITagsVC+Bm.h"
#import "BKMIWebVC+Bm.h"
#import "BKMIFilterDetailVC+Bm.h"
#import "BKMIBaseTypeVC+Bm.h"
#import "BKMIStickerDetailVC+Bm.h"
#import "BKMIStickerVC+Bm.h"
#import "BKMIHomeVC+Bm.h"
#import "BKMITagsDetailVC+Bm.h"
#import "BKMIFilterVC+Bm.h"
#import "AFHTTPResponseSerializer+BmBm.h"
#import "GPUImageColorBurnBlendFilter+BmBm.h"
#import "GPUImageHueBlendFilter+BmBm.h"
#import "GPUImageDissolveBlendFilter+BmBm.h"
#import "GPUImageView+BmBm.h"
#import "GPUImagePoissonBlendFilter+BmBm.h"
#import "NSSet+RACSequenceAdditionsBmBm.h"
#import "NSBundle+YYAddBmBm.h"
#import "GPUImageSwirlFilter+BmBm.h"
#import "RACEmptySequence+BmBm.h"
#import "RACSubscriptionScheduler+BmBm.h"
#import "NSMutableArray+YYAddBmBm.h"
#import "IQKeyboardManager+BmBm.h"
#import "GPUImageFilter+BmBm.h"
#import "NSThread+YYAddBmBm.h"
#import "GPUImagePrewittEdgeDetectionFilter+BmBm.h"
#import "GPUImageGammaFilter+BmBm.h"
#import "DGActivityIndicatorBallTrianglePathAnimation+BmBm.h"
#import "GPUImageThresholdEdgeDetectionFilter+BmBm.h"
#import "GPUImageLineGenerator+BmBm.h"
#import "NSMutableDictionary+YYAddBmBm.h"
#import "GPUImageDilationFilter+BmBm.h"
#import "RACTwoTuple+BmBm.h"
#import "YYClassPropertyInfo+BmBm.h"
#import "GPUImageMaskFilter+BmBm.h"
#import "NSObject+YYAddForKVOBmBm.h"
#import "UIImage+YYAddBmBm.h"
#import "RACUnit+BmBm.h"
#import "GPUImageSingleComponentGaussianBlurFilter+BmBm.h"
#import "GPUImageSharpenFilter+BmBm.h"
#import "RACEmptySignal+BmBm.h"
#import "GPUImageVideoCamera+BmBm.h"
#import "DGActivityIndicatorBallSpinFadeLoader+BmBm.h"
#import "NSString+YYAddBmBm.h"
#import "NSNotificationCenter+RACSupportBmBm.h"
#import "UIFont+YYAddBmBm.h"
#import "NSFileHandle+RACSupportBmBm.h"
#import "GPUImagePicture+BmBm.h"
#import "UIApplication+YYAddBmBm.h"
#import "WKWebView+_AFNetworkingBmBm.h"
#import "GPUImageClosingFilter+BmBm.h"
#import "GPUImage3x3TextureSamplingFilter+BmBm.h"
#import "RACChannelTerminal+BmBm.h"
#import "RACIndexSetSequence+BmBm.h"
#import "RACSignal+TestingBmBm.h"
#import "GPUImageHazeFilter+BmBm.h"
#import "RACImmediateScheduler+BmBm.h"
#import "NSArray+IQ_NSArray_SortBmBm.h"
#import "GPUImageErosionFilter+BmBm.h"
#import "DGActivityIndicatorDoubleBounceAnimation+BmBm.h"
#import "GPUImageTwoInputCrossTextureSamplingFilter+BmBm.h"
#import "GPUImageAddBlendFilter+BmBm.h"
#import "DGActivityIndicatorBallZigZagDeflectAnimation+BmBm.h"
#import "GPUImageCGAColorspaceFilter+BmBm.h"
#import "RACTupleNil+BmBm.h"
#import "MAS_VIEW+MASConstraintsBmBm.h"
#import "RACBehaviorSubject+BmBm.h"
#import "DGActivityIndicatorRotatingTrigonAnimation+BmBm.h"
#import "GPUImageStretchDistortionFilter+BmBm.h"
#import "GPUImageColorPackingFilter+BmBm.h"
#import "GPUImageSmoothToonFilter+BmBm.h"
#import "UIActionSheet+RACSignalSupportBmBm.h"
#import "DGActivityIndicatorBallScaleRippleAnimation+BmBm.h"
#import "GPUImageLinearBurnBlendFilter+BmBm.h"
#import "UIImagePickerController+RACSignalSupportBmBm.h"
#import "RACGroupedSignal+BmBm.h"
#import "GPUImageTextureInput+BmBm.h"
#import "GPUImageOverlayBlendFilter+BmBm.h"
#import "GPUImageGaussianSelectiveBlurFilter+BmBm.h"
#import "GPUImageParallelCoordinateLineTransformFilter+BmBm.h"
#import "RACTuple+RACDescriptionBmBm.h"
#import "RACThreeTuple+BmBm.h"
#import "GPUImageHighlightShadowFilter+BmBm.h"
#import "GPUImageExclusionBlendFilter+BmBm.h"
#import "GPUImageMosaicFilter+BmBm.h"
#import "UIControl+YYAddBmBm.h"
#import "GPUImageSketchFilter+BmBm.h"
#import "UIScrollView+AdditionsBmBm.h"
#import "AFImageDownloadReceipt+BmBm.h"
#import "GPUImageEmbossFilter+BmBm.h"
#import "TKImageView+Bm.h"
#import "UIImage+HandlerBm.h"
#import "SFHFKeychainUtils+Bm.h"
#import "VIMVideoPlayer+Bm.h"
#import "VIMVideoPlayerView+Bm.h"
#import "RTImagePickerPhoto+Bm.h"
#import "RTImagePickerPhotoBrowser+Bm.h"
#import "RTImagePickerTapDetectingImageView+Bm.h"
#import "UIImage+RTImagePickerPhotoBrowserBm.h"
#import "RTImagePickerTapDetectingView+Bm.h"
#import "RTImagePickerZoomingScrollView+Bm.h"
#import "LLSimpleCamera+Bm.h"
#import "UIImage+fixOrientationBm.h"
#import "RTImagePickerUtils+Bm.h"
#import "NSIndexSet+ConvenienceBm.h"
#import "UICollectionView+ConvenienceBm.h"
#import "RTCameraPreviewViewController+Bm.h"
#import "RTCameraViewController+Bm.h"
#import "RTAssetCollectionViewController+Bm.h"
#import "RTImagePickerViewController+Bm.h"
#import "RTShortVideoViewController+Bm.h"
#import "RTImagePickerNavigationController+Bm.h"
#import "RTVideoIndicatorView+Bm.h"
#import "RTImagePickerToolbarView+Bm.h"
#import "RTCheckMarkView+Bm.h"
#import "RTAssetCollectionViewCell+Bm.h"
#import "RTImagePickerTitleButton+Bm.h"
#import "RTAlbumTableViewCell+Bm.h"
#import "RTVideoIconView+Bm.h"
#import "RTImagePickerUnauthorizedView+Bm.h"
#import "CGAffineTransformFun+Bm.h"
#import "QMDBManager+Bm.h"
#import "QMBaseNavigationController+Bm.h"
#import "QMBaseImageView+Bm.h"
#import "UIImage+ClipBm.h"
#import "UIImage+ColorBm.h"
#import "UIImage+ImageEffectsBm.h"
#import "UIImage+RotateBm.h"
#import "UIImage+MosaicBm.h"
#import "UIImage+DrawImageBm.h"
#import "UIImage+RoundedCornerBm.h"
#import "UIImage+ResizeBm.h"
#import "UIImage+animatedGIFBm.h"
#import "UIImage+AlphaBm.h"
#import "UIImage+SubImageBm.h"
#import "UIImage+MaskingBm.h"
#import "UIImage+UIimageBm.h"
#import "UIImage+backgroundImageBm.h"
#import "UIImage+TextBm.h"
#import "UIImage+BoxBlurBm.h"
#import "UIImage+BlurBm.h"
#import "UIImage+watermarkBm.h"
#import "UIImage+MaskShapeBm.h"
#import "UIImage+ImageWithCornerBm.h"
#import "PHAsset+LatestBm.h"
#import "UIColor+AdditionsBm.h"
#import "UIView+SizeBm.h"
#import "UIView+ViewGeometryBm.h"
#import "UIImageView+GraudatedAnimationBm.h"
#import "QMCameraSettingViewController+Bm.h"
#import "QMSettingModel+Bm.h"
#import "QMSettingTableViewCell+Bm.h"
#import "QMPhotoClipViewController+Bm.h"
#import "QMPhotoEffectViewController+Bm.h"
#import "QMProgressHUD+Bm.h"
#import "QMCustomSlider+Bm.h"
#import "QMSuspensionView+Bm.h"
#import "QMSuspensionModel+Bm.h"
#import "CKStillCameraPreview+Bm.h"
#import "CKStillCamera+Bm.h"
#import "QMFilterModel+Bm.h"
#import "QMFrameModel+Bm.h"
#import "QMCropModel+Bm.h"
#import "QMFrameThemeView+Bm.h"
#import "QMFrameThemeViewCell+Bm.h"
#import "QMFilterThemeSilder+Bm.h"
#import "QMFilterThemeView+Bm.h"
#import "QMFilterThemeViewCell+Bm.h"
#import "QMBaseThemeView+Bm.h"
#import "QMDragView+Bm.h"
#import "QMCropThemeViewCell+Bm.h"
#import "QMCropThemeView+Bm.h"
#import "QMImageFilter+Bm.h"
#import "QMShakeButton+Bm.h"
#import "QMShareManager+Bm.h"
#import "QMCameraViewController+Bm.h"
#import "QMPhotoDisplayViewController+Bm.h"
#import "QMCameraFlashSuspensionView+Bm.h"
#import "QMCameraFocusView+Bm.h"
#import "QMCameraFilterView+Bm.h"
#import "QMCameraRatioSuspensionView+Bm.h"
#import "UIStepper+RACSignalSupportBmBm.h"
#import "RACKVOProxy+BmBm.h"
#import "RACDynamicSignal+BmBm.h"
#import "GPUImage3x3ConvolutionFilter+BmBm.h"
#import "DGActivityIndicatorThreeDotsAnimation+BmBm.h"
#import "NSNumber+YYAddBmBm.h"
#import "RACTuple+RACSequenceAdditionsBmBm.h"
#import "GPUImageHistogramFilter+BmBm.h"
#import "GPUImageAverageLuminanceThresholdFilter+BmBm.h"
#import "NSString+RACSequenceAdditionsBmBm.h"
#import "GPUImageLowPassFilter+BmBm.h"
#import "RACUnarySequence+BmBm.h"
#import "DGActivityIndicatorBallScaleAnimation+BmBm.h"
#import "CALayer+YYAddBmBm.h"
#import "UIViewController+AdditionsBmBm.h"
#import "GPUImageDivideBlendFilter+BmBm.h"
#import "MKAnnotationView+RACSignalSupportBmBm.h"
#import "UICollectionReusableView+RACSignalSupportBmBm.h"
#import "GPUImageRGBOpeningFilter+BmBm.h"
#import "GPUImageFilterPipeline+BmBm.h"
#import "NSArray+MASAdditionsBmBm.h"
#import "GLProgram+BmBm.h"
#import "GPUImageTransformFilter+BmBm.h"
#import "GPUImageBilateralFilter+BmBm.h"
#import "RACCommand+BmBm.h"
#import "NSKeyedUnarchiver+YYAddBmBm.h"
#import "GPUImageScreenBlendFilter+BmBm.h"
#import "MAS_VIEW+MASAdditionsBmBm.h"
#import "RACTuple+ObjectSubscriptingBmBm.h"
#import "GPUImageSubtractBlendFilter+BmBm.h"
#import "DGActivityIndicatorLineScalePulseOutAnimation+BmBm.h"
#import "GPUImageChromaKeyFilter+BmBm.h"
#import "NSTimer+YYAddBmBm.h"
#import "AFJSONResponseSerializer+BmBm.h"
#import "MASViewConstraint+BmBm.h"
#import "DGActivityIndicatorBallGridBeatAnimation+BmBm.h"
#import "GPUImagePinchDistortionFilter+BmBm.h"
#import "MASCompositeConstraint+BmBm.h"
#import "GPUImageBrightnessFilter+BmBm.h"
#import "UIBezierPath+YYAddBmBm.h"
#import "GPUImageLookupFilter+BmBm.h"
#import "GPUImageGaussianBlurFilter+BmBm.h"
#import "GPUImageAverageColor+BmBm.h"
#import "GPUImageHSBFilter+BmBm.h"
#import "RACTestScheduler+BmBm.h"
#import "UIRefreshControl+AFNetworkingBmBm.h"
#import "GPUImageFalseColorFilter+BmBm.h"
#import "RACMulticastConnection+BmBm.h"
#import "UIBarButtonItem+YYAddBmBm.h"
#import "GPUImageLaplacianFilter+BmBm.h"
#import "GPUImageToonFilter+BmBm.h"
#import "DGActivityIndicatorBallGridPulseAnimation+BmBm.h"
#import "IQTextView+BmBm.h"
#import "UIAlertView+RACSignalSupportBmBm.h"
#import "GPUImageHistogramGenerator+BmBm.h"
#import "GPUImageRGBErosionFilter+BmBm.h"
#import "GPUImageMissEtikateFilter+BmBm.h"
#import "UIProgressView+AFNetworkingBmBm.h"
#import "UIImageView+_AFNetworkingBmBm.h"
#import "AFPropertyListRequestSerializer+BmBm.h"
#import "DGActivityIndicatorBallScaleMultipleAnimation+BmBm.h"
#import "GPUImageDirectionalSobelEdgeDetectionFilter+BmBm.h"
#import "RACArraySequence+BmBm.h"
#import "GPUImageTwoInputFilter+BmBm.h"
#import "DGActivityIndicatorLineScaleAnimation+BmBm.h"
#import "GPUImageAmatorkaFilter+BmBm.h"
#import "GPUImageDarkenBlendFilter+BmBm.h"
#import "NSDate+YYAddBmBm.h"
#import "GPUImageMultiplyBlendFilter+BmBm.h"
#import "UIImage+AFNetworkingSafeImageLoadingBmBm.h"
#import "GPUImageRGBDilationFilter+BmBm.h"
#import "GPUImageColorMatrixFilter+BmBm.h"
#import "TOCropViewController+BmBm.h"
#import "GPUImageContrastFilter+BmBm.h"
#import "GPUImageOpacityFilter+BmBm.h"
#import "NSArray+YYAddBmBm.h"
#import "DGActivityIndicatorLineScalePartyAnimation+BmBm.h"
#import "GPUImageLightenBlendFilter+BmBm.h"
#import "GPUImageRGBClosingFilter+BmBm.h"
#import "RACScheduler+BmBm.h"
#import "GPUImageChromaKeyBlendFilter+BmBm.h"
#import "GPUImageHighPassFilter+BmBm.h"
#import "GPUImageStillCamera+BmBm.h"
#import "GPUImageWhiteBalanceFilter+BmBm.h"
#import "RACDelegateProxy+BmBm.h"
#import "UITableView+YYAddBmBm.h"
#import "YYClassMethodInfo+BmBm.h"
#import "RACSequence+BmBm.h"
#import "GPUImagePixellatePositionFilter+BmBm.h"
#import "GPUImageContext+BmBm.h"
#import "DGActivityIndicatorBallClipRotateAnimation+BmBm.h"
#import "GPUImageAdaptiveThresholdFilter+BmBm.h"
#import "RACSubject+BmBm.h"
#import "UIImage+CropRotateBmBm.h"
#import "AFHTTPSessionManager+BmBm.h"
#import "CommonClass+Bm.h"
#import "MJPropertyKey+Bm.h"
#import "NSObject+MJClassBm.h"
#import "NSString+MJExtensionBm.h"
#import "NSString+MJExtensionDeprecated_v_2_5_16Bm.h"
#import "NSObject+PropertyBm.h"
#import "NSObject+MJPropertyDeprecated_v_2_5_16Bm.h"
#import "MJFoundation+Bm.h"
#import "MJPropertyType+Bm.h"
#import "MJProperty+Bm.h"
#import "NSObject+MJKeyValueBm.h"
#import "NSObject+MJKeyValueDeprecated_v_2_5_16Bm.h"
#import "NSObject+MJCodingBm.h"
#import "GSKeyChainDataManager+Bm.h"
#import "MIHttpEnclosureTool+Bm.h"
#import "GSKeyChain+Bm.h"
#import "MIHttpTool+Bm.h"
#import "YCPopoverAnimator+Bm.h"
#import "UIViewController+YCPopoverBm.h"
#import "YCPresentationController+Bm.h"
#import "UIScrollView+MJExtensionBm.h"
#import "NSBundle+MJRefreshBm.h"
#import "UIView+MJExtensionBm.h"
#import "NSObject+MJRefreshBm.h"
#import "UIScrollView+MJRefreshBm.h"
#import "UITableView+MJRefreshBm.h"
#import "UICollectionView+MJRefreshBm.h"
#import "MJRefreshBackGifFooter+Bm.h"
#import "MJRefreshBackStateFooter+Bm.h"
#import "MJRefreshBackNormalFooter+Bm.h"
#import "MJRefreshAutoStateFooter+Bm.h"
#import "MJRefreshAutoNormalFooter+Bm.h"
#import "MJRefreshAutoGifFooter+Bm.h"
#import "MJRefreshStateHeader+Bm.h"
#import "MJRefreshGifHeader+Bm.h"
#import "MJRefreshNormalHeader+Bm.h"
#import "MJRefreshComponent+Bm.h"
#import "UILabel+MJRefreshBm.h"
#import "MJRefreshAutoFooter+Bm.h"
#import "MJRefreshHeader+Bm.h"
#import "MJRefreshFooter+Bm.h"
#import "MJRefreshBackFooter+Bm.h"
#import "FSTextView+Bm.h"
#import "UIViewController+LGModelBm.h"
#import "MBProgressHUD+Bm.h"
#import "MBRoundProgressView+Bm.h"
#import "MBBarProgressView+Bm.h"
#import "SDCellAutoHeightManager+Bm.h"
#import "UITableView+SDAutoTableViewCellHeightBm.h"
#import "UITableViewController+SDTableViewControllerAutoCellHeightBm.h"
#import "NSObject+SDAnyObjectAutoCellHeightBm.h"
#import "SDAutoLayoutModel+Bm.h"
#import "SDAutoLayoutModelItem+Bm.h"
#import "UIView+SDAutoHeightWidthBm.h"
#import "UIView+SDLayoutExtentionBm.h"
#import "UIView+SDAutoFlowItemsBm.h"
#import "UIScrollView+SDAutoContentSizeBm.h"
#import "UILabel+SDLabelAutoResizeBm.h"
#import "UIButton+SDExtentionBm.h"
#import "UIView+SDAutoLayoutBm.h"
#import "UIButton+SDAutoLayoutButtonBm.h"
#import "UIView+SDChangeFrameBm.h"
#import "SDAnimatedImageRep+Bm.h"
#import "NSButton+WebCacheBm.h"
#import "NSImage+WebCacheBm.h"
#import "UIImageView+WebCacheBm.h"
#import "NSData+ImageContentTypeBm.h"
#import "SDWebImageTransition+Bm.h"
#import "SDWebImageTransition+ConveniencesBm.h"
#import "SDWebImageDownloaderOperation+Bm.h"
#import "SDImageCache+Bm.h"
#import "SDImageCacheConfig+Bm.h"
#import "SDWebImageGIFCoder+Bm.h"
#import "UIButton+WebCacheBm.h"
#import "SDWebImageImageIOCoder+Bm.h"
#import "UIView+WebCacheBm.h"
#import "UIView+WebCacheOperationBm.h"
#import "SDWebImageFrame+Bm.h"
#import "UIImageView+HighlightedWebCacheBm.h"
#import "SDWebImageManager+Bm.h"
#import "SDWebImageDownloadToken+Bm.h"
#import "SDWebImageDownloader+Bm.h"
#import "SDWebImageCodersManager+Bm.h"
#import "UIImage+ForceDecodeBm.h"
#import "SDWebImagePrefetcher+Bm.h"
#import "SDWebImageCoderHelper+Bm.h"
#import "UIImage+MultiFormatBm.h"
#import "UIImage+GIFBm.h"
#import "MBProgressHUD+JDragonBm.h"
#import "RACValueTransformer+BmBm.h"
#import "GPUImageCrosshairGenerator+BmBm.h"
#import "AFImageDownloader+BmBm.h"
#import "NSDictionary+YYModelBmBm.h"
#import "GPUImageKuwaharaFilter+BmBm.h"
#import "GPUImageKuwaharaRadius3Filter+BmBm.h"
#import "GPUImageHalftoneFilter+BmBm.h"
#import "DGActivityIndicatorBallRotateAnimation+BmBm.h"
#import "NSArray+RACSequenceAdditionsBmBm.h"
#import "GPUImageFramebufferCache+BmBm.h"
#import "RACKVOTrampoline+BmBm.h"
#import "AFURLSessionManager+BmBm.h"
#import "RACBlockTrampoline+BmBm.h"
#import "GPUImageRGBFilter+BmBm.h"
#import "NSObject+YYModelBmBm.h"
#import "NSValue+RACDescriptionBmBm.h"
#import "GPUImageSoftEleganceFilter+BmBm.h"
#import "GPUImageColorBlendFilter+BmBm.h"
#import "UIView+AdditionsBmBm.h"
#import "UIBarButtonItem+RACCommandSupportBmBm.h"
#import "RACDynamicSequence+BmBm.h"
#import "UIControl+RACSignalSupportPrivateBmBm.h"
#import "AFHTTPRequestSerializer+BmBm.h"
#import "UITextField+YYAddBmBm.h"
#import "NSOrderedSet+RACSequenceAdditionsBmBm.h"
#import "GPUImageDirectionalNonMaximumSuppressionFilter+BmBm.h"
#import "TOCropScrollView+BmBm.h"
#import "GPUImageHueFilter+BmBm.h"
#import "RACEvent+BmBm.h"
#import "GPUImageOpeningFilter+BmBm.h"
#import "DGActivityIndicatorTwoDotsAnimation+BmBm.h"
#import "NSInvocation+RACTypeParsingBmBm.h"
#import "GPUImageCropFilter+BmBm.h"
#import "MAS_VIEW_CONTROLLER+MASAdditionsBmBm.h"
#import "GPUImageSepiaFilter+BmBm.h"
#import "UISegmentedControl+RACSignalSupportBmBm.h"
#import "GPUImageSaturationBlendFilter+BmBm.h"
#import "IQToolbar+BmBm.h"
#import "AFXMLParserResponseSerializer+BmBm.h"
#import "DGActivityIndicatorTriplePulseAnimation+BmBm.h"
#import "GPUImageTiltShiftFilter+BmBm.h"

static inline NSInteger -deleteComments() {
NSInteger ret = 0;
ret += [GPUImageBuffer initBm:46] ? 1 : 0;
ret += [GPUImageBuffer deallocBm:8] ? 1 : 0;
ret += [GPUImageBuffer newFrameReadyAtTimeAtindexBm:74] ? 1 : 0;
ret += [GPUImageBuffer renderToTextureWithVerticesTexturecoordinatesBm:76] ? 1 : 0;
ret += [GPUImageBuffer setBufferSizeBm:91] ? 1 : 0;
ret += [GPUImageShiTomasiFeatureDetectionFilter initBm:32] ? 1 : 0;
ret += [GPUImageThreeInputFilter initWithFragmentShaderFromStringBm:80] ? 1 : 0;
ret += [GPUImageThreeInputFilter initWithVertexShaderFromStringFragmentshaderfromstringBm:90] ? 1 : 0;
ret += [GPUImageThreeInputFilter initializeAttributesBm:43] ? 1 : 0;
ret += [GPUImageThreeInputFilter disableThirdFrameCheckBm:59] ? 1 : 0;
ret += [GPUImageThreeInputFilter renderToTextureWithVerticesTexturecoordinatesBm:86] ? 1 : 0;
ret += [GPUImageThreeInputFilter nextAvailableTextureIndexBm:17] ? 1 : 0;
ret += [GPUImageThreeInputFilter setInputFramebufferAtindexBm:47] ? 1 : 0;
ret += [GPUImageThreeInputFilter setInputSizeAtindexBm:26] ? 1 : 0;
ret += [GPUImageThreeInputFilter setInputRotationAtindexBm:72] ? 1 : 0;
ret += [GPUImageThreeInputFilter rotatedSizeForindexBm:10] ? 1 : 0;
ret += [GPUImageThreeInputFilter newFrameReadyAtTimeAtindexBm:0] ? 1 : 0;
ret += [GPUImageSmoothToonFilter initBm:28] ? 1 : 0;
ret += [GPUImageSmoothToonFilter setBlurRadiusInPixelsBm:79] ? 1 : 0;
ret += [GPUImageSmoothToonFilter blurRadiusInPixelsBm:88] ? 1 : 0;
ret += [GPUImageSmoothToonFilter setTexelWidthBm:40] ? 1 : 0;
ret += [GPUImageSmoothToonFilter texelWidthBm:65] ? 1 : 0;
ret += [GPUImageSmoothToonFilter setTexelHeightBm:59] ? 1 : 0;
ret += [GPUImageSmoothToonFilter texelHeightBm:51] ? 1 : 0;
ret += [GPUImageSmoothToonFilter setThresholdBm:99] ? 1 : 0;
ret += [GPUImageSmoothToonFilter thresholdBm:14] ? 1 : 0;
ret += [GPUImageSmoothToonFilter setQuantizationLevelsBm:66] ? 1 : 0;
ret += [GPUImageSmoothToonFilter quantizationLevelsBm:57] ? 1 : 0;
ret += [GPUImageVoronoiConsumerFilter initBm:21] ? 1 : 0;
ret += [GPUImageVoronoiConsumerFilter setSizeInPixelsBm:14] ? 1 : 0;
ret += [GPUImageMovieComposition initWithCompositionAndvideocompositionAndaudiomixBm:62] ? 1 : 0;
ret += [GPUImageMovieComposition createAssetReaderBm:32] ? 1 : 0;
ret += [GPUImageRawDataOutput initWithImageSizeResultsinbgraformatBm:56] ? 1 : 0;
ret += [GPUImageRawDataOutput deallocBm:26] ? 1 : 0;
ret += [GPUImageRawDataOutput renderAtInternalSizeBm:6] ? 1 : 0;
ret += [GPUImageRawDataOutput colorAtLocationBm:39] ? 1 : 0;
ret += [GPUImageRawDataOutput newFrameReadyAtTimeAtindexBm:62] ? 1 : 0;
ret += [GPUImageRawDataOutput nextAvailableTextureIndexBm:76] ? 1 : 0;
ret += [GPUImageRawDataOutput setInputFramebufferAtindexBm:80] ? 1 : 0;
ret += [GPUImageRawDataOutput setInputRotationAtindexBm:22] ? 1 : 0;
ret += [GPUImageRawDataOutput setInputSizeAtindexBm:34] ? 1 : 0;
ret += [GPUImageRawDataOutput maximumOutputSizeBm:10] ? 1 : 0;
ret += [GPUImageRawDataOutput endProcessingBm:6] ? 1 : 0;
ret += [GPUImageRawDataOutput shouldIgnoreUpdatesToThisTargetBm:85] ? 1 : 0;
ret += [GPUImageRawDataOutput wantsMonochromeInputBm:91] ? 1 : 0;
ret += [GPUImageRawDataOutput setCurrentlyReceivingMonochromeInputBm:55] ? 1 : 0;
ret += [GPUImageRawDataOutput rawBytesForImageBm:86] ? 1 : 0;
ret += [GPUImageRawDataOutput bytesPerRowInOutputBm:55] ? 1 : 0;
ret += [GPUImageRawDataOutput setImageSizeBm:28] ? 1 : 0;
ret += [GPUImageRawDataOutput lockFramebufferForReadingBm:70] ? 1 : 0;
ret += [GPUImageRawDataOutput unlockFramebufferAfterReadingBm:16] ? 1 : 0;
ret += [GPUImageContrastFilter initBm:79] ? 1 : 0;
ret += [GPUImageContrastFilter setContrastBm:64] ? 1 : 0;
ret += [GPUImageHalftoneFilter initBm:12] ? 1 : 0;
ret += [GPUImageHazeFilter initBm:27] ? 1 : 0;
ret += [GPUImageHazeFilter setDistanceBm:40] ? 1 : 0;
ret += [GPUImageHazeFilter setSlopeBm:67] ? 1 : 0;
ret += [GPUImageRGBDilationFilter initWithRadiusBm:45] ? 1 : 0;
ret += [GPUImageRGBDilationFilter initBm:64] ? 1 : 0;
ret += [GPUImageCrosshairGenerator initBm:6] ? 1 : 0;
ret += [GPUImageCrosshairGenerator renderCrosshairsFromArrayCountFrametimeBm:36] ? 1 : 0;
ret += [GPUImageCrosshairGenerator renderToTextureWithVerticesTexturecoordinatesBm:1] ? 1 : 0;
ret += [GPUImageCrosshairGenerator setCrosshairWidthBm:21] ? 1 : 0;
ret += [GPUImageCrosshairGenerator setCrosshairColorRedGreenBlueBm:22] ? 1 : 0;
ret += [GPUImageAverageColor initBm:15] ? 1 : 0;
ret += [GPUImageAverageColor deallocBm:21] ? 1 : 0;
ret += [GPUImageAverageColor renderToTextureWithVerticesTexturecoordinatesBm:5] ? 1 : 0;
ret += [GPUImageAverageColor setInputRotationAtindexBm:68] ? 1 : 0;
ret += [GPUImageAverageColor extractAverageColorAtFrameTimeBm:44] ? 1 : 0;
ret += [GPUImageColorBlendFilter initBm:75] ? 1 : 0;
ret += [GPUImageSubtractBlendFilter initBm:59] ? 1 : 0;
ret += [GPUImageMaskFilter initBm:79] ? 1 : 0;
ret += [GPUImageMaskFilter renderToTextureWithVerticesTexturecoordinatesBm:98] ? 1 : 0;
ret += [GPUImageSwirlFilter initBm:74] ? 1 : 0;
ret += [GPUImageSwirlFilter setInputRotationAtindexBm:7] ? 1 : 0;
ret += [GPUImageSwirlFilter setRadiusBm:47] ? 1 : 0;
ret += [GPUImageSwirlFilter setAngleBm:11] ? 1 : 0;
ret += [GPUImageSwirlFilter setCenterBm:24] ? 1 : 0;
ret += [GPUImageSoftLightBlendFilter initBm:55] ? 1 : 0;
ret += [GPUImageLuminosity initBm:93] ? 1 : 0;
ret += [GPUImageLuminosity initializeSecondaryAttributesBm:81] ? 1 : 0;
ret += [GPUImageLuminosity extractLuminosityAtFrameTimeBm:91] ? 1 : 0;
ret += [GPUImageGaussianSelectiveBlurFilter initBm:35] ? 1 : 0;
ret += [GPUImageGaussianSelectiveBlurFilter setInputSizeAtindexBm:23] ? 1 : 0;
ret += [GPUImageGaussianSelectiveBlurFilter setBlurRadiusInPixelsBm:30] ? 1 : 0;
ret += [GPUImageGaussianSelectiveBlurFilter blurRadiusInPixelsBm:57] ? 1 : 0;
ret += [GPUImageGaussianSelectiveBlurFilter setExcludeCirclePointBm:44] ? 1 : 0;
ret += [GPUImageGaussianSelectiveBlurFilter setExcludeCircleRadiusBm:26] ? 1 : 0;
ret += [GPUImageGaussianSelectiveBlurFilter setExcludeBlurSizeBm:18] ? 1 : 0;
ret += [GPUImageGaussianSelectiveBlurFilter setAspectRatioBm:4] ? 1 : 0;
ret += [GPUImageSharpenFilter initBm:12] ? 1 : 0;
ret += [GPUImageSharpenFilter setupFilterForSizeBm:38] ? 1 : 0;
ret += [GPUImageSharpenFilter setSharpnessBm:22] ? 1 : 0;
ret += [GPUImagePoissonBlendFilter initBm:1] ? 1 : 0;
ret += [GPUImagePoissonBlendFilter setMixBm:58] ? 1 : 0;
ret += [GPUImagePoissonBlendFilter renderToTextureWithVerticesTexturecoordinatesBm:58] ? 1 : 0;
ret += [GPUImageMotionBlurFilter initBm:10] ? 1 : 0;
ret += [GPUImageMotionBlurFilter setInputSizeAtindexBm:86] ? 1 : 0;
ret += [GPUImageMotionBlurFilter recalculateTexelOffsetsBm:30] ? 1 : 0;
ret += [GPUImageMotionBlurFilter setInputRotationAtindexBm:2] ? 1 : 0;
ret += [GPUImageMotionBlurFilter setBlurAngleBm:32] ? 1 : 0;
ret += [GPUImageMotionBlurFilter setBlurSizeBm:74] ? 1 : 0;
ret += [GPUImageGlassSphereFilter initBm:65] ? 1 : 0;
ret += [GPUImageScreenBlendFilter initBm:92] ? 1 : 0;
ret += [GPUImageTwoInputCrossTextureSamplingFilter initWithFragmentShaderFromStringBm:19] ? 1 : 0;
ret += [GPUImageTwoInputCrossTextureSamplingFilter setupFilterForSizeBm:3] ? 1 : 0;
ret += [GPUImageTwoInputCrossTextureSamplingFilter setTexelWidthBm:66] ? 1 : 0;
ret += [GPUImageTwoInputCrossTextureSamplingFilter setTexelHeightBm:75] ? 1 : 0;
ret += [GPUImagePinchDistortionFilter initBm:13] ? 1 : 0;
ret += [GPUImagePinchDistortionFilter adjustAspectRatioBm:82] ? 1 : 0;
ret += [GPUImagePinchDistortionFilter forceProcessingAtSizeBm:30] ? 1 : 0;
ret += [GPUImagePinchDistortionFilter setInputSizeAtindexBm:82] ? 1 : 0;
ret += [GPUImagePinchDistortionFilter setInputRotationAtindexBm:39] ? 1 : 0;
ret += [GPUImagePinchDistortionFilter setAspectRatioBm:14] ? 1 : 0;
ret += [GPUImagePinchDistortionFilter setRadiusBm:13] ? 1 : 0;
ret += [GPUImagePinchDistortionFilter setScaleBm:19] ? 1 : 0;
ret += [GPUImagePinchDistortionFilter setCenterBm:48] ? 1 : 0;
ret += [GPUImageMedianFilter initBm:0] ? 1 : 0;
ret += [GPUImageLinearBurnBlendFilter initBm:38] ? 1 : 0;
ret += [GPUImageLocalBinaryPatternFilter initBm:29] ? 1 : 0;
ret += [GPUImageDirectionalNonMaximumSuppressionFilter initBm:56] ? 1 : 0;
ret += [GPUImageDirectionalNonMaximumSuppressionFilter setupFilterForSizeBm:17] ? 1 : 0;
ret += [GPUImageDirectionalNonMaximumSuppressionFilter setTexelWidthBm:51] ? 1 : 0;
ret += [GPUImageDirectionalNonMaximumSuppressionFilter setTexelHeightBm:61] ? 1 : 0;
ret += [GPUImageDirectionalNonMaximumSuppressionFilter setLowerThresholdBm:70] ? 1 : 0;
ret += [GPUImageDirectionalNonMaximumSuppressionFilter setUpperThresholdBm:45] ? 1 : 0;
ret += [GPUImageClosingFilter initBm:18] ? 1 : 0;
ret += [GPUImageClosingFilter initWithRadiusBm:4] ? 1 : 0;
ret += [GPUImageClosingFilter setVerticalTexelSpacingBm:24] ? 1 : 0;
ret += [GPUImageClosingFilter setHorizontalTexelSpacingBm:64] ? 1 : 0;
ret += [GPUImageMotionDetector initBm:91] ? 1 : 0;
ret += [GPUImageMotionDetector setLowPassFilterStrengthBm:34] ? 1 : 0;
ret += [GPUImageMotionDetector lowPassFilterStrengthBm:16] ? 1 : 0;
ret += [GPUImageHoughTransformLineDetector initBm:37] ? 1 : 0;
ret += [GPUImageHoughTransformLineDetector deallocBm:15] ? 1 : 0;
ret += [GPUImageHoughTransformLineDetector extractLineParametersFromImageAtFrameTimeBm:32] ? 1 : 0;
ret += [GPUImageHoughTransformLineDetector wantsMonochromeInputBm:26] ? 1 : 0;
ret += [GPUImageHoughTransformLineDetector setLineDetectionThresholdBm:65] ? 1 : 0;
ret += [GPUImageHoughTransformLineDetector lineDetectionThresholdBm:71] ? 1 : 0;
ret += [GPUImageHoughTransformLineDetector newFrameReadyAtTimeAtindexBm:89] ? 1 : 0;
ret += [GPUImageRGBErosionFilter initWithRadiusBm:82] ? 1 : 0;
ret += [GPUImageRGBErosionFilter initBm:11] ? 1 : 0;
ret += [GPUImageLowPassFilter initBm:10] ? 1 : 0;
ret += [GPUImageLowPassFilter setFilterStrengthBm:61] ? 1 : 0;
ret += [GPUImageLowPassFilter filterStrengthBm:39] ? 1 : 0;
ret += [GPUImageLowPassFilter addTargetAttexturelocationBm:70] ? 1 : 0;
ret += [GPUImageRGBOpeningFilter initBm:31] ? 1 : 0;
ret += [GPUImageRGBOpeningFilter initWithRadiusBm:7] ? 1 : 0;
ret += [GPUImageWhiteBalanceFilter initBm:41] ? 1 : 0;
ret += [GPUImageWhiteBalanceFilter setTemperatureBm:26] ? 1 : 0;
ret += [GPUImageWhiteBalanceFilter setTintBm:92] ? 1 : 0;
ret += [GPUImageRawDataInput initWithBytesSizeBm:83] ? 1 : 0;
ret += [GPUImageRawDataInput initWithBytesSizePixelformatBm:33] ? 1 : 0;
ret += [GPUImageRawDataInput initWithBytesSizePixelformatTypeBm:35] ? 1 : 0;
ret += [GPUImageRawDataInput deallocBm:74] ? 1 : 0;
ret += [GPUImageRawDataInput uploadBytesBm:10] ? 1 : 0;
ret += [GPUImageRawDataInput updateDataFromBytesSizeBm:57] ? 1 : 0;
ret += [GPUImageRawDataInput processDataBm:32] ? 1 : 0;
ret += [GPUImageRawDataInput processDataForTimestampBm:11] ? 1 : 0;
ret += [GPUImageRawDataInput outputImageSizeBm:69] ? 1 : 0;
ret += [GPUImageThresholdSketchFilter initBm:99] ? 1 : 0;
ret += [GPUImageMosaicFilter initBm:61] ? 1 : 0;
ret += [GPUImageMosaicFilter setColorOnBm:86] ? 1 : 0;
ret += [GPUImageMosaicFilter setNumTilesBm:63] ? 1 : 0;
ret += [GPUImageMosaicFilter setInputTileSizeBm:75] ? 1 : 0;
ret += [GPUImageMosaicFilter setDisplayTileSizeBm:55] ? 1 : 0;
ret += [GPUImageMosaicFilter setTileSetBm:56] ? 1 : 0;
ret += [GPUImageSingleComponentGaussianBlurFilter vertexShaderForOptimizedBlurOfRadiusSigmaBm:68] ? 1 : 0;
ret += [GPUImageSingleComponentGaussianBlurFilter fragmentShaderForOptimizedBlurOfRadiusSigmaBm:36] ? 1 : 0;
ret += [GPUImageKuwaharaFilter initBm:29] ? 1 : 0;
ret += [GPUImageKuwaharaFilter setRadiusBm:29] ? 1 : 0;
ret += [GPUImageCrosshatchFilter initBm:51] ? 1 : 0;
ret += [GPUImageCrosshatchFilter setCrossHatchSpacingBm:24] ? 1 : 0;
ret += [GPUImageCrosshatchFilter setLineWidthBm:41] ? 1 : 0;
ret += [GPUImageNobleCornerDetectionFilter initBm:37] ? 1 : 0;
ret += [GPUImageHighlightShadowFilter initBm:46] ? 1 : 0;
ret += [GPUImageHighlightShadowFilter setShadowsBm:77] ? 1 : 0;
ret += [GPUImageHighlightShadowFilter setHighlightsBm:81] ? 1 : 0;
ret += [GPUImage3x3ConvolutionFilter initBm:64] ? 1 : 0;
ret += [GPUImage3x3ConvolutionFilter initWithFragmentShaderFromStringBm:41] ? 1 : 0;
ret += [GPUImage3x3ConvolutionFilter setConvolutionKernelBm:28] ? 1 : 0;
ret += [GPUImageNormalBlendFilter initBm:83] ? 1 : 0;
ret += [GPUImageDilationFilter initWithRadiusBm:42] ? 1 : 0;
ret += [GPUImageDilationFilter initBm:99] ? 1 : 0;
ret += [GPUImageAddBlendFilter initBm:86] ? 1 : 0;
ret += [GPUImageHSBFilter initBm:48] ? 1 : 0;
ret += [GPUImageHSBFilter resetBm:60] ? 1 : 0;
ret += [GPUImageHSBFilter rotateHueBm:84] ? 1 : 0;
ret += [GPUImageHSBFilter adjustSaturationBm:77] ? 1 : 0;
ret += [GPUImageHSBFilter adjustBrightnessBm:53] ? 1 : 0;
ret += [GPUImageHSBFilter _updateColorMatrixBm:89] ? 1 : 0;
ret += [GPUImageHSBFilter for(x=0Bm:69] ? 1 : 0;
ret += [GPUImageHueBlendFilter initBm:9] ? 1 : 0;
ret += [GPUImagePerlinNoiseFilter initBm:78] ? 1 : 0;
ret += [GPUImagePerlinNoiseFilter setScaleBm:16] ? 1 : 0;
ret += [GPUImagePerlinNoiseFilter setColorStartBm:46] ? 1 : 0;
ret += [GPUImagePerlinNoiseFilter setColorFinishBm:55] ? 1 : 0;
ret += [GPUImageTextureOutput initBm:86] ? 1 : 0;
ret += [GPUImageTextureOutput doneWithTextureBm:31] ? 1 : 0;
ret += [GPUImageTextureOutput newFrameReadyAtTimeAtindexBm:91] ? 1 : 0;
ret += [GPUImageTextureOutput nextAvailableTextureIndexBm:83] ? 1 : 0;
ret += [GPUImageTextureOutput setInputFramebufferAtindexBm:34] ? 1 : 0;
ret += [GPUImageTextureOutput setInputRotationAtindexBm:35] ? 1 : 0;
ret += [GPUImageTextureOutput setInputSizeAtindexBm:6] ? 1 : 0;
ret += [GPUImageTextureOutput maximumOutputSizeBm:71] ? 1 : 0;
ret += [GPUImageTextureOutput endProcessingBm:45] ? 1 : 0;
ret += [GPUImageTextureOutput shouldIgnoreUpdatesToThisTargetBm:55] ? 1 : 0;
ret += [GPUImageTextureOutput wantsMonochromeInputBm:23] ? 1 : 0;
ret += [GPUImageTextureOutput setCurrentlyReceivingMonochromeInputBm:26] ? 1 : 0;
ret += [GPUImagePrewittEdgeDetectionFilter initBm:85] ? 1 : 0;
ret += [GPUImageVideoCamera initBm:58] ? 1 : 0;
ret += [GPUImageVideoCamera initWithSessionPresetCamerapositionBm:59] ? 1 : 0;
ret += [GPUImageVideoCamera framebufferForOutputBm:7] ? 1 : 0;
ret += [GPUImageVideoCamera deallocBm:53] ? 1 : 0;
ret += [GPUImageVideoCamera addAudioInputsAndOutputsBm:12] ? 1 : 0;
ret += [GPUImageVideoCamera removeAudioInputsAndOutputsBm:28] ? 1 : 0;
ret += [GPUImageVideoCamera removeInputsAndOutputsBm:59] ? 1 : 0;
ret += [GPUImageVideoCamera addTargetAttexturelocationBm:45] ? 1 : 0;
ret += [GPUImageVideoCamera startCameraCaptureBm:15] ? 1 : 0;
ret += [GPUImageVideoCamera stopCameraCaptureBm:83] ? 1 : 0;
ret += [GPUImageVideoCamera pauseCameraCaptureBm:79] ? 1 : 0;
ret += [GPUImageVideoCamera resumeCameraCaptureBm:58] ? 1 : 0;
ret += [GPUImageVideoCamera rotateCameraBm:92] ? 1 : 0;
ret += [GPUImageVideoCamera cameraPositionBm:30] ? 1 : 0;
ret += [GPUImageVideoCamera isBackFacingCameraPresentBm:55] ? 1 : 0;
ret += [GPUImageVideoCamera isBackFacingCameraPresentBm:83] ? 1 : 0;
ret += [GPUImageVideoCamera isFrontFacingCameraPresentBm:0] ? 1 : 0;
ret += [GPUImageVideoCamera isFrontFacingCameraPresentBm:54] ? 1 : 0;
ret += [GPUImageVideoCamera setCaptureSessionPresetBm:99] ? 1 : 0;
ret += [GPUImageVideoCamera setFrameRateBm:16] ? 1 : 0;
ret += [GPUImageVideoCamera frameRateBm:11] ? 1 : 0;
ret += [GPUImageVideoCamera videoCaptureConnectionBm:76] ? 1 : 0;
ret += [GPUImageVideoCamera updateTargetsForVideoCameraUsingCacheTextureAtWidthHeightTimeBm:67] ? 1 : 0;
ret += [GPUImageVideoCamera processVideoSampleBufferBm:39] ? 1 : 0;
ret += [GPUImageVideoCamera processAudioSampleBufferBm:38] ? 1 : 0;
ret += [GPUImageVideoCamera convertYUVToRGBOutputBm:34] ? 1 : 0;
ret += [GPUImageVideoCamera averageFrameDurationDuringCaptureBm:47] ? 1 : 0;
ret += [GPUImageVideoCamera resetBenchmarkAverageBm:50] ? 1 : 0;
ret += [GPUImageVideoCamera captureOutputDidoutputsamplebufferFromconnectionBm:86] ? 1 : 0;
ret += [GPUImageVideoCamera setAudioEncodingTargetBm:93] ? 1 : 0;
ret += [GPUImageVideoCamera updateOrientationSendToTargetsBm:14] ? 1 : 0;
ret += [GPUImageVideoCamera setOutputImageOrientationBm:0] ? 1 : 0;
ret += [GPUImageVideoCamera setHorizontallyMirrorFrontFacingCameraBm:56] ? 1 : 0;
ret += [GPUImageVideoCamera setHorizontallyMirrorRearFacingCameraBm:12] ? 1 : 0;
ret += [GPUImageDarkenBlendFilter initBm:75] ? 1 : 0;
ret += [GPUImageCGAColorspaceFilter initBm:0] ? 1 : 0;
ret += [GPUImageLightenBlendFilter initBm:70] ? 1 : 0;
ret += [GPUImageStillCamera initWithSessionPresetCamerapositionBm:97] ? 1 : 0;
ret += [GPUImageStillCamera initBm:96] ? 1 : 0;
ret += [GPUImageStillCamera removeInputsAndOutputsBm:99] ? 1 : 0;
ret += [GPUImageStillCamera capturePhotoAsSampleBufferWithCompletionHandlerBm:62] ? 1 : 0;
ret += [GPUImageStillCamera capturePhotoAsImageProcessedUpToFilterWithcompletionhandlerBm:93] ? 1 : 0;
ret += [GPUImageStillCamera capturePhotoAsImageProcessedUpToFilterWithorientationWithcompletionhandlerBm:18] ? 1 : 0;
ret += [GPUImageStillCamera capturePhotoAsJPEGProcessedUpToFilterWithcompletionhandlerBm:11] ? 1 : 0;
ret += [GPUImageStillCamera capturePhotoAsJPEGProcessedUpToFilterWithorientationWithcompletionhandlerBm:89] ? 1 : 0;
ret += [GPUImageStillCamera capturePhotoAsPNGProcessedUpToFilterWithcompletionhandlerBm:19] ? 1 : 0;
ret += [GPUImageStillCamera capturePhotoAsPNGProcessedUpToFilterWithorientationWithcompletionhandlerBm:77] ? 1 : 0;
ret += [GPUImageStillCamera capturePhotoProcessedUpToFilterWithimageongpuhandlerBm:83] ? 1 : 0;
ret += [GPUImageFilter initWithVertexShaderFromStringFragmentshaderfromstringBm:49] ? 1 : 0;
ret += [GPUImageFilter initWithFragmentShaderFromStringBm:22] ? 1 : 0;
ret += [GPUImageFilter initWithFragmentShaderFromFileBm:69] ? 1 : 0;
ret += [GPUImageFilter initBm:89] ? 1 : 0;
ret += [GPUImageFilter initializeAttributesBm:53] ? 1 : 0;
ret += [GPUImageFilter setupFilterForSizeBm:11] ? 1 : 0;
ret += [GPUImageFilter deallocBm:17] ? 1 : 0;
ret += [GPUImageFilter useNextFrameForImageCaptureBm:83] ? 1 : 0;
ret += [GPUImageFilter newCGImageFromCurrentlyProcessedOutputBm:68] ? 1 : 0;
ret += [GPUImageFilter sizeOfFBOBm:46] ? 1 : 0;
ret += [GPUImageFilter textureCoordinatesForRotationBm:42] ? 1 : 0;
ret += [GPUImageFilter renderToTextureWithVerticesTexturecoordinatesBm:2] ? 1 : 0;
ret += [GPUImageFilter informTargetsAboutNewFrameAtTimeBm:80] ? 1 : 0;
ret += [GPUImageFilter outputFrameSizeBm:90] ? 1 : 0;
ret += [GPUImageFilter setBackgroundColorRedGreenBlueAlphaBm:3] ? 1 : 0;
ret += [GPUImageFilter setIntegerForuniformnameBm:56] ? 1 : 0;
ret += [GPUImageFilter setFloatForuniformnameBm:90] ? 1 : 0;
ret += [GPUImageFilter setSizeForuniformnameBm:41] ? 1 : 0;
ret += [GPUImageFilter setPointForuniformnameBm:82] ? 1 : 0;
ret += [GPUImageFilter setFloatVec3ForuniformnameBm:93] ? 1 : 0;
ret += [GPUImageFilter setFloatVec4ForuniformBm:10] ? 1 : 0;
ret += [GPUImageFilter setFloatArrayLengthForuniformBm:58] ? 1 : 0;
ret += [GPUImageFilter setMatrix3fForuniformProgramBm:60] ? 1 : 0;
ret += [GPUImageFilter setMatrix4fForuniformProgramBm:74] ? 1 : 0;
ret += [GPUImageFilter setFloatForuniformProgramBm:77] ? 1 : 0;
ret += [GPUImageFilter setPointForuniformProgramBm:4] ? 1 : 0;
ret += [GPUImageFilter setSizeForuniformProgramBm:75] ? 1 : 0;
ret += [GPUImageFilter setVec3ForuniformProgramBm:64] ? 1 : 0;
ret += [GPUImageFilter setVec4ForuniformProgramBm:55] ? 1 : 0;
ret += [GPUImageFilter setFloatArrayLengthForuniformProgramBm:88] ? 1 : 0;
ret += [GPUImageFilter setIntegerForuniformProgramBm:31] ? 1 : 0;
ret += [GPUImageFilter setAndExecuteUniformStateCallbackAtIndexForprogramToblockBm:23] ? 1 : 0;
ret += [GPUImageFilter setUniformsForProgramAtIndexBm:58] ? 1 : 0;
ret += [GPUImageFilter newFrameReadyAtTimeAtindexBm:85] ? 1 : 0;
ret += [GPUImageFilter nextAvailableTextureIndexBm:50] ? 1 : 0;
ret += [GPUImageFilter setInputFramebufferAtindexBm:46] ? 1 : 0;
ret += [GPUImageFilter rotatedSizeForindexBm:48] ? 1 : 0;
ret += [GPUImageFilter rotatedPointForrotationBm:65] ? 1 : 0;
ret += [GPUImageFilter setInputSizeAtindexBm:7] ? 1 : 0;
ret += [GPUImageFilter setInputRotationAtindexBm:51] ? 1 : 0;
ret += [GPUImageFilter forceProcessingAtSizeBm:41] ? 1 : 0;
ret += [GPUImageFilter forceProcessingAtSizeRespectingAspectRatioBm:14] ? 1 : 0;
ret += [GPUImageFilter maximumOutputSizeBm:34] ? 1 : 0;
ret += [GPUImageFilter endProcessingBm:72] ? 1 : 0;
ret += [GPUImageFilter wantsMonochromeInputBm:53] ? 1 : 0;
ret += [GPUImageLookupFilter initBm:45] ? 1 : 0;
ret += [GPUImageLookupFilter setIntensityBm:39] ? 1 : 0;
ret += [GPUImageBulgeDistortionFilter initBm:75] ? 1 : 0;
ret += [GPUImageBulgeDistortionFilter adjustAspectRatioBm:17] ? 1 : 0;
ret += [GPUImageBulgeDistortionFilter forceProcessingAtSizeBm:91] ? 1 : 0;
ret += [GPUImageBulgeDistortionFilter setInputSizeAtindexBm:35] ? 1 : 0;
ret += [GPUImageBulgeDistortionFilter setAspectRatioBm:91] ? 1 : 0;
ret += [GPUImageBulgeDistortionFilter setInputRotationAtindexBm:61] ? 1 : 0;
ret += [GPUImageBulgeDistortionFilter setRadiusBm:57] ? 1 : 0;
ret += [GPUImageBulgeDistortionFilter setScaleBm:48] ? 1 : 0;
ret += [GPUImageBulgeDistortionFilter setCenterBm:52] ? 1 : 0;
ret += [GPUImageFalseColorFilter initBm:5] ? 1 : 0;
ret += [GPUImageFalseColorFilter setFirstColorBm:53] ? 1 : 0;
ret += [GPUImageFalseColorFilter setSecondColorBm:30] ? 1 : 0;
ret += [GPUImageFalseColorFilter setFirstColorRedGreenBlueBm:21] ? 1 : 0;
ret += [GPUImageFalseColorFilter setSecondColorRedGreenBlueBm:55] ? 1 : 0;
ret += [GPUImagePolkaDotFilter initBm:29] ? 1 : 0;
ret += [GPUImagePolkaDotFilter setDotScalingBm:52] ? 1 : 0;
ret += [GPUImageChromaKeyBlendFilter initBm:97] ? 1 : 0;
ret += [GPUImageChromaKeyBlendFilter setColorToReplaceRedGreenBlueBm:57] ? 1 : 0;
ret += [GPUImageChromaKeyBlendFilter setThresholdSensitivityBm:45] ? 1 : 0;
ret += [GPUImageChromaKeyBlendFilter setSmoothingBm:13] ? 1 : 0;
ret += [GPUImageLuminanceRangeFilter initBm:16] ? 1 : 0;
ret += [GPUImageLuminanceRangeFilter setRangeReductionFactorBm:92] ? 1 : 0;
ret += [GPUImageLuminosityBlendFilter initBm:75] ? 1 : 0;
ret += [GPUImageExposureFilter initBm:18] ? 1 : 0;
ret += [GPUImageExposureFilter setExposureBm:86] ? 1 : 0;
ret += [GPUImageView layerClassBm:80] ? 1 : 0;
ret += [GPUImageView initWithFrameBm:84] ? 1 : 0;
ret += [GPUImageView initWithCoderBm:47] ? 1 : 0;
ret += [GPUImageView commonInitBm:55] ? 1 : 0;
ret += [GPUImageView layoutSubviewsBm:5] ? 1 : 0;
ret += [GPUImageView deallocBm:19] ? 1 : 0;
ret += [GPUImageView createDisplayFramebufferBm:98] ? 1 : 0;
ret += [GPUImageView destroyDisplayFramebufferBm:21] ? 1 : 0;
ret += [GPUImageView setDisplayFramebufferBm:51] ? 1 : 0;
ret += [GPUImageView presentFramebufferBm:36] ? 1 : 0;
ret += [GPUImageView recalculateViewGeometryBm:40] ? 1 : 0;
ret += [GPUImageView setBackgroundColorRedGreenBlueAlphaBm:97] ? 1 : 0;
ret += [GPUImageView textureCoordinatesForRotationBm:20] ? 1 : 0;
ret += [GPUImageView newFrameReadyAtTimeAtindexBm:63] ? 1 : 0;
ret += [GPUImageView nextAvailableTextureIndexBm:28] ? 1 : 0;
ret += [GPUImageView setInputFramebufferAtindexBm:87] ? 1 : 0;
ret += [GPUImageView setInputRotationAtindexBm:45] ? 1 : 0;
ret += [GPUImageView setInputSizeAtindexBm:2] ? 1 : 0;
ret += [GPUImageView maximumOutputSizeBm:89] ? 1 : 0;
ret += [GPUImageView endProcessingBm:66] ? 1 : 0;
ret += [GPUImageView shouldIgnoreUpdatesToThisTargetBm:42] ? 1 : 0;
ret += [GPUImageView wantsMonochromeInputBm:12] ? 1 : 0;
ret += [GPUImageView setCurrentlyReceivingMonochromeInputBm:97] ? 1 : 0;
ret += [GPUImageView sizeInPixelsBm:96] ? 1 : 0;
ret += [GPUImageView setFillModeBm:66] ? 1 : 0;
ret += [GPUImageContext initBm:66] ? 1 : 0;
ret += [GPUImageContext contextKeyBm:70] ? 1 : 0;
ret += [GPUImageContext sharedImageProcessingContextBm:79] ? 1 : 0;
ret += [GPUImageContext sharedContextQueueBm:83] ? 1 : 0;
ret += [GPUImageContext sharedFramebufferCacheBm:65] ? 1 : 0;
ret += [GPUImageContext useImageProcessingContextBm:7] ? 1 : 0;
ret += [GPUImageContext useAsCurrentContextBm:93] ? 1 : 0;
ret += [GPUImageContext setActiveShaderProgramBm:85] ? 1 : 0;
ret += [GPUImageContext setContextShaderProgramBm:77] ? 1 : 0;
ret += [GPUImageContext maximumTextureSizeForThisDeviceBm:74] ? 1 : 0;
ret += [GPUImageContext maximumTextureUnitsForThisDeviceBm:98] ? 1 : 0;
ret += [GPUImageContext maximumVaryingVectorsForThisDeviceBm:80] ? 1 : 0;
ret += [GPUImageContext deviceSupportsOpenGLESExtensionBm:72] ? 1 : 0;
ret += [GPUImageContext deviceSupportsRedTexturesBm:26] ? 1 : 0;
ret += [GPUImageContext deviceSupportsFramebufferReadsBm:44] ? 1 : 0;
ret += [GPUImageContext sizeThatFitsWithinATextureForSizeBm:5] ? 1 : 0;
ret += [GPUImageContext presentBufferForDisplayBm:47] ? 1 : 0;
ret += [GPUImageContext programForVertexShaderStringFragmentshaderstringBm:65] ? 1 : 0;
ret += [GPUImageContext useSharegroupBm:16] ? 1 : 0;
ret += [GPUImageContext createContextBm:74] ? 1 : 0;
ret += [GPUImageContext supportsFastTextureUploadBm:81] ? 1 : 0;
ret += [GPUImageContext contextBm:76] ? 1 : 0;
ret += [GPUImageContext coreVideoTextureCacheBm:47] ? 1 : 0;
ret += [GPUImageContext framebufferCacheBm:83] ? 1 : 0;
ret += [GPUImageMovieWriter initWithMovieURLSizeBm:17] ? 1 : 0;
ret += [GPUImageMovieWriter initWithMovieURLSizeFiletypeOutputsettingsBm:58] ? 1 : 0;
ret += [GPUImageMovieWriter deallocBm:46] ? 1 : 0;
ret += [GPUImageMovieWriter initializeMovieWithOutputSettingsBm:56] ? 1 : 0;
ret += [GPUImageMovieWriter setEncodingLiveVideoBm:44] ? 1 : 0;
ret += [GPUImageMovieWriter startRecordingBm:84] ? 1 : 0;
ret += [GPUImageMovieWriter startRecordingInOrientationBm:78] ? 1 : 0;
ret += [GPUImageMovieWriter cancelRecordingBm:91] ? 1 : 0;
ret += [GPUImageMovieWriter finishRecordingBm:67] ? 1 : 0;
ret += [GPUImageMovieWriter finishRecordingWithCompletionHandlerBm:69] ? 1 : 0;
ret += [GPUImageMovieWriter processAudioBufferBm:21] ? 1 : 0;
ret += [GPUImageMovieWriter enableSynchronizationCallbacksBm:33] ? 1 : 0;
ret += [GPUImageMovieWriter createDataFBOBm:97] ? 1 : 0;
ret += [GPUImageMovieWriter destroyDataFBOBm:24] ? 1 : 0;
ret += [GPUImageMovieWriter setFilterFBOBm:33] ? 1 : 0;
ret += [GPUImageMovieWriter renderAtInternalSizeUsingFramebufferBm:59] ? 1 : 0;
ret += [GPUImageMovieWriter newFrameReadyAtTimeAtindexBm:66] ? 1 : 0;
ret += [GPUImageMovieWriter nextAvailableTextureIndexBm:32] ? 1 : 0;
ret += [GPUImageMovieWriter setInputFramebufferAtindexBm:67] ? 1 : 0;
ret += [GPUImageMovieWriter setInputRotationAtindexBm:67] ? 1 : 0;
ret += [GPUImageMovieWriter setInputSizeAtindexBm:33] ? 1 : 0;
ret += [GPUImageMovieWriter maximumOutputSizeBm:77] ? 1 : 0;
ret += [GPUImageMovieWriter endProcessingBm:78] ? 1 : 0;
ret += [GPUImageMovieWriter shouldIgnoreUpdatesToThisTargetBm:63] ? 1 : 0;
ret += [GPUImageMovieWriter wantsMonochromeInputBm:0] ? 1 : 0;
ret += [GPUImageMovieWriter setCurrentlyReceivingMonochromeInputBm:33] ? 1 : 0;
ret += [GPUImageMovieWriter setHasAudioTrackBm:25] ? 1 : 0;
ret += [GPUImageMovieWriter setHasAudioTrackAudiosettingsBm:8] ? 1 : 0;
ret += [GPUImageMovieWriter metaDataBm:91] ? 1 : 0;
ret += [GPUImageMovieWriter setMetaDataBm:16] ? 1 : 0;
ret += [GPUImageMovieWriter durationBm:99] ? 1 : 0;
ret += [GPUImageMovieWriter transformBm:42] ? 1 : 0;
ret += [GPUImageMovieWriter setTransformBm:83] ? 1 : 0;
ret += [GPUImageMovieWriter assetWriterBm:81] ? 1 : 0;
ret += [GPUImagePicture initWithURLBm:55] ? 1 : 0;
ret += [GPUImagePicture initWithDataBm:29] ? 1 : 0;
ret += [GPUImagePicture initWithImageBm:48] ? 1 : 0;
ret += [GPUImagePicture initWithCGImageBm:38] ? 1 : 0;
ret += [GPUImagePicture initWithImageSmoothlyscaleoutputBm:16] ? 1 : 0;
ret += [GPUImagePicture initWithCGImageSmoothlyscaleoutputBm:45] ? 1 : 0;
ret += [GPUImagePicture deallocBm:52] ? 1 : 0;
ret += [GPUImagePicture removeAllTargetsBm:71] ? 1 : 0;
ret += [GPUImagePicture processImageBm:22] ? 1 : 0;
ret += [GPUImagePicture processImageWithCompletionHandlerBm:53] ? 1 : 0;
ret += [GPUImagePicture processImageUpToFilterWithcompletionhandlerBm:43] ? 1 : 0;
ret += [GPUImagePicture outputImageSizeBm:69] ? 1 : 0;
ret += [GPUImagePicture addTargetAttexturelocationBm:41] ? 1 : 0;
ret += [GPUImagePicture replaceTextureWithSubimageBm:27] ? 1 : 0;
ret += [GPUImagePicture replaceTextureWithSubCGImageBm:93] ? 1 : 0;
ret += [GPUImagePicture replaceTextureWithSubimageInrectBm:87] ? 1 : 0;
ret += [GPUImagePicture replaceTextureWithSubCGImageInrectBm:23] ? 1 : 0;
ret += [GPUImageTwoInputFilter initWithFragmentShaderFromStringBm:74] ? 1 : 0;
ret += [GPUImageTwoInputFilter initWithVertexShaderFromStringFragmentshaderfromstringBm:86] ? 1 : 0;
ret += [GPUImageTwoInputFilter initializeAttributesBm:92] ? 1 : 0;
ret += [GPUImageTwoInputFilter disableFirstFrameCheckBm:56] ? 1 : 0;
ret += [GPUImageTwoInputFilter disableSecondFrameCheckBm:49] ? 1 : 0;
ret += [GPUImageTwoInputFilter renderToTextureWithVerticesTexturecoordinatesBm:97] ? 1 : 0;
ret += [GPUImageTwoInputFilter nextAvailableTextureIndexBm:55] ? 1 : 0;
ret += [GPUImageTwoInputFilter setInputFramebufferAtindexBm:62] ? 1 : 0;
ret += [GPUImageTwoInputFilter setInputSizeAtindexBm:63] ? 1 : 0;
ret += [GPUImageTwoInputFilter setInputRotationAtindexBm:63] ? 1 : 0;
ret += [GPUImageTwoInputFilter rotatedSizeForindexBm:7] ? 1 : 0;
ret += [GPUImageTwoInputFilter newFrameReadyAtTimeAtindexBm:33] ? 1 : 0;
ret += [GPUImageColorInvertFilter initBm:26] ? 1 : 0;
ret += [GPUImageEmbossFilter initBm:14] ? 1 : 0;
ret += [GPUImageEmbossFilter setIntensityBm:98] ? 1 : 0;
ret += [GPUImageGrayscaleFilter renderToTextureWithVerticesTexturecoordinatesBm:68] ? 1 : 0;
ret += [GPUImageGrayscaleFilter wantsMonochromeInputBm:94] ? 1 : 0;
ret += [GPUImageGrayscaleFilter providesMonochromeOutputBm:21] ? 1 : 0;
ret += [GPUImageGrayscaleFilter initBm:72] ? 1 : 0;
ret += [GPUImageNonMaximumSuppressionFilter initBm:85] ? 1 : 0;
ret += [GPUImageWeakPixelInclusionFilter initBm:13] ? 1 : 0;
ret += [GPUImageUIElement initWithViewBm:64] ? 1 : 0;
ret += [GPUImageUIElement initWithLayerBm:40] ? 1 : 0;
ret += [GPUImageUIElement layerSizeInPixelsBm:33] ? 1 : 0;
ret += [GPUImageUIElement updateBm:3] ? 1 : 0;
ret += [GPUImageUIElement updateUsingCurrentTimeBm:84] ? 1 : 0;
ret += [GPUImageUIElement updateWithTimestampBm:83] ? 1 : 0;
ret += [GPUImageColorPackingFilter initBm:2] ? 1 : 0;
ret += [GPUImageColorPackingFilter setupFilterForSizeBm:23] ? 1 : 0;
ret += [GPUImageColorPackingFilter sizeOfFBOBm:85] ? 1 : 0;
ret += [GPUImageColorPackingFilter outputFrameSizeBm:75] ? 1 : 0;
ret += [GPUImageGaussianBlurPositionFilter initWithFirstStageVertexShaderFromStringFirststagefragmentshaderfromstringSecondstagevertexshaderfromstringSecondstagefragmentshaderfromstringBm:26] ? 1 : 0;
ret += [GPUImageGaussianBlurPositionFilter initBm:44] ? 1 : 0;
ret += [GPUImageGaussianBlurPositionFilter adjustAspectRatioBm:69] ? 1 : 0;
ret += [GPUImageGaussianBlurPositionFilter forceProcessingAtSizeBm:19] ? 1 : 0;
ret += [GPUImageGaussianBlurPositionFilter setInputSizeAtindexBm:98] ? 1 : 0;
ret += [GPUImageGaussianBlurPositionFilter setInputRotationAtindexBm:57] ? 1 : 0;
ret += [GPUImageGaussianBlurPositionFilter setBlurSizeBm:27] ? 1 : 0;
ret += [GPUImageGaussianBlurPositionFilter setBlurCenterBm:51] ? 1 : 0;
ret += [GPUImageGaussianBlurPositionFilter setBlurRadiusBm:4] ? 1 : 0;
ret += [GPUImageGaussianBlurPositionFilter setAspectRatioBm:82] ? 1 : 0;
ret += [GPUImageSoftEleganceFilter initBm:13] ? 1 : 0;
ret += [GPUImageTwoPassFilter initWithFirstStageVertexShaderFromStringFirststagefragmentshaderfromstringSecondstagevertexshaderfromstringSecondstagefragmentshaderfromstringBm:82] ? 1 : 0;
ret += [GPUImageTwoPassFilter initWithFirstStageFragmentShaderFromStringSecondstagefragmentshaderfromstringBm:85] ? 1 : 0;
ret += [GPUImageTwoPassFilter initializeSecondaryAttributesBm:50] ? 1 : 0;
ret += [GPUImageTwoPassFilter framebufferForOutputBm:4] ? 1 : 0;
ret += [GPUImageTwoPassFilter removeOutputFramebufferBm:61] ? 1 : 0;
ret += [GPUImageTwoPassFilter renderToTextureWithVerticesTexturecoordinatesBm:68] ? 1 : 0;
ret += [GPUImageTwoPassFilter setAndExecuteUniformStateCallbackAtIndexForprogramToblockBm:66] ? 1 : 0;
ret += [GPUImageTwoPassFilter setUniformsForProgramAtIndexBm:22] ? 1 : 0;
ret += [GPUImageHighPassFilter initBm:74] ? 1 : 0;
ret += [GPUImageHighPassFilter setFilterStrengthBm:54] ? 1 : 0;
ret += [GPUImageHighPassFilter filterStrengthBm:50] ? 1 : 0;
ret += [GPUImageSobelEdgeDetectionFilter initBm:51] ? 1 : 0;
ret += [GPUImageSobelEdgeDetectionFilter initWithFragmentShaderFromStringBm:37] ? 1 : 0;
ret += [GPUImageSobelEdgeDetectionFilter setupFilterForSizeBm:22] ? 1 : 0;
ret += [GPUImageSobelEdgeDetectionFilter setUniformsForProgramAtIndexBm:37] ? 1 : 0;
ret += [GPUImageSobelEdgeDetectionFilter wantsMonochromeInputBm:10] ? 1 : 0;
ret += [GPUImageSobelEdgeDetectionFilter providesMonochromeOutputBm:97] ? 1 : 0;
ret += [GPUImageSobelEdgeDetectionFilter setTexelWidthBm:67] ? 1 : 0;
ret += [GPUImageSobelEdgeDetectionFilter setTexelHeightBm:0] ? 1 : 0;
ret += [GPUImageSobelEdgeDetectionFilter setEdgeStrengthBm:34] ? 1 : 0;
ret += [GPUImageFilterGroup initBm:68] ? 1 : 0;
ret += [GPUImageFilterGroup addFilterBm:0] ? 1 : 0;
ret += [GPUImageFilterGroup filterAtIndexBm:70] ? 1 : 0;
ret += [GPUImageFilterGroup filterCountBm:49] ? 1 : 0;
ret += [GPUImageFilterGroup useNextFrameForImageCaptureBm:75] ? 1 : 0;
ret += [GPUImageFilterGroup newCGImageFromCurrentlyProcessedOutputBm:82] ? 1 : 0;
ret += [GPUImageFilterGroup setTargetToIgnoreForUpdatesBm:63] ? 1 : 0;
ret += [GPUImageFilterGroup addTargetAttexturelocationBm:42] ? 1 : 0;
ret += [GPUImageFilterGroup removeTargetBm:7] ? 1 : 0;
ret += [GPUImageFilterGroup removeAllTargetsBm:13] ? 1 : 0;
ret += [GPUImageFilterGroup targetsBm:25] ? 1 : 0;
ret += [GPUImageFilterGroup setFrameProcessingCompletionBlockBm:91] ? 1 : 0;
ret += [GPUImageFilterGroup (GPUImageOutput *, CMTime))frameProcessingCompletionBlockBm:68] ? 1 : 0;
ret += [GPUImageFilterGroup newFrameReadyAtTimeAtindexBm:79] ? 1 : 0;
ret += [GPUImageFilterGroup setInputFramebufferAtindexBm:0] ? 1 : 0;
ret += [GPUImageFilterGroup nextAvailableTextureIndexBm:41] ? 1 : 0;
ret += [GPUImageFilterGroup setInputSizeAtindexBm:93] ? 1 : 0;
ret += [GPUImageFilterGroup setInputRotationAtindexBm:47] ? 1 : 0;
ret += [GPUImageFilterGroup forceProcessingAtSizeBm:15] ? 1 : 0;
ret += [GPUImageFilterGroup forceProcessingAtSizeRespectingAspectRatioBm:15] ? 1 : 0;
ret += [GPUImageFilterGroup maximumOutputSizeBm:32] ? 1 : 0;
ret += [GPUImageFilterGroup endProcessingBm:66] ? 1 : 0;
ret += [GPUImageFilterGroup wantsMonochromeInputBm:10] ? 1 : 0;
ret += [GPUImageFilterGroup setCurrentlyReceivingMonochromeInputBm:75] ? 1 : 0;
ret += [GPUImageParallelCoordinateLineTransformFilter initBm:2] ? 1 : 0;
ret += [GPUImageParallelCoordinateLineTransformFilter deallocBm:83] ? 1 : 0;
ret += [GPUImageParallelCoordinateLineTransformFilter initializeAttributesBm:27] ? 1 : 0;
ret += [GPUImageParallelCoordinateLineTransformFilter generateLineCoordinatesBm:88] ? 1 : 0;
ret += [GPUImageParallelCoordinateLineTransformFilter newFrameReadyAtTimeAtindexBm:4] ? 1 : 0;
ret += [GPUImageParallelCoordinateLineTransformFilter renderToTextureWithVerticesTexturecoordinatesBm:47] ? 1 : 0;
ret += [GPUImageLuminanceThresholdFilter initBm:20] ? 1 : 0;
ret += [GPUImageLuminanceThresholdFilter setThresholdBm:67] ? 1 : 0;
ret += [GPUImageChromaKeyFilter initBm:11] ? 1 : 0;
ret += [GPUImageChromaKeyFilter setColorToReplaceRedGreenBlueBm:98] ? 1 : 0;
ret += [GPUImageChromaKeyFilter setThresholdSensitivityBm:75] ? 1 : 0;
ret += [GPUImageChromaKeyFilter setSmoothingBm:32] ? 1 : 0;
ret += [GPUImageThresholdEdgeDetectionFilter initWithFragmentShaderFromStringBm:90] ? 1 : 0;
ret += [GPUImageThresholdEdgeDetectionFilter initBm:38] ? 1 : 0;
ret += [GPUImageThresholdEdgeDetectionFilter setThresholdBm:97] ? 1 : 0;
ret += [GPUImageColorBurnBlendFilter initBm:11] ? 1 : 0;
ret += [GPUImageTwoPassTextureSamplingFilter initWithFirstStageVertexShaderFromStringFirststagefragmentshaderfromstringSecondstagevertexshaderfromstringSecondstagefragmentshaderfromstringBm:67] ? 1 : 0;
ret += [GPUImageTwoPassTextureSamplingFilter setUniformsForProgramAtIndexBm:42] ? 1 : 0;
ret += [GPUImageTwoPassTextureSamplingFilter setupFilterForSizeBm:61] ? 1 : 0;
ret += [GPUImageTwoPassTextureSamplingFilter setVerticalTexelSpacingBm:57] ? 1 : 0;
ret += [GPUImageTwoPassTextureSamplingFilter setHorizontalTexelSpacingBm:80] ? 1 : 0;
ret += [GPUImageUnsharpMaskFilter initBm:52] ? 1 : 0;
ret += [GPUImageUnsharpMaskFilter setBlurRadiusInPixelsBm:98] ? 1 : 0;
ret += [GPUImageUnsharpMaskFilter blurRadiusInPixelsBm:72] ? 1 : 0;
ret += [GPUImageUnsharpMaskFilter setIntensityBm:64] ? 1 : 0;
ret += [GPUImageGammaFilter initBm:59] ? 1 : 0;
ret += [GPUImageGammaFilter setGammaBm:28] ? 1 : 0;
ret += [GPUImageAlphaBlendFilter initBm:55] ? 1 : 0;
ret += [GPUImageAlphaBlendFilter setMixBm:94] ? 1 : 0;
ret += [GPUImageHistogramGenerator initBm:79] ? 1 : 0;
ret += [GPUImageHistogramGenerator setBackgroundColorRedGreenBlueAlphaBm:70] ? 1 : 0;
ret += [GPUImageBilateralFilter initBm:95] ? 1 : 0;
ret += [GPUImageBilateralFilter setDistanceNormalizationFactorBm:30] ? 1 : 0;
ret += [GPUImageKuwaharaRadius3Filter initBm:91] ? 1 : 0;
ret += [GPUImageThresholdedNonMaximumSuppressionFilter initBm:37] ? 1 : 0;
ret += [GPUImageThresholdedNonMaximumSuppressionFilter initWithPackedColorspaceBm:10] ? 1 : 0;
ret += [GPUImageThresholdedNonMaximumSuppressionFilter setThresholdBm:9] ? 1 : 0;
ret += [GPUImageAmatorkaFilter initBm:34] ? 1 : 0;
ret += [GPUImageTransformFilter initBm:3] ? 1 : 0;
ret += [GPUImageTransformFilter loadOrthoMatrixLeftRightBottomTopNearFarBm:64] ? 1 : 0;
ret += [GPUImageTransformFilter convert3DTransformTomatrixBm:32] ? 1 : 0;
ret += [GPUImageTransformFilter newFrameReadyAtTimeAtindexBm:38] ? 1 : 0;
ret += [GPUImageTransformFilter Bm:51] ? 1 : 0;
ret += [GPUImageTransformFilter setupFilterForSizeBm:83] ? 1 : 0;
ret += [GPUImageTransformFilter setAffineTransformBm:99] ? 1 : 0;
ret += [GPUImageTransformFilter affineTransformBm:28] ? 1 : 0;
ret += [GPUImageTransformFilter setTransform3DBm:75] ? 1 : 0;
ret += [GPUImageTransformFilter setIgnoreAspectRatioBm:56] ? 1 : 0;
ret += [GPUImageTransformFilter setAnchorTopLeftBm:88] ? 1 : 0;
ret += [GPUImageHueFilter initBm:82] ? 1 : 0;
ret += [GPUImageHueFilter setHueBm:58] ? 1 : 0;
ret += [GPUImageJFAVoronoiFilter initBm:82] ? 1 : 0;
ret += [GPUImageJFAVoronoiFilter setSizeInPixelsBm:66] ? 1 : 0;
ret += [GPUImageJFAVoronoiFilter nextPowerOfTwoBm:44] ? 1 : 0;
ret += [GPUImageJFAVoronoiFilter renderToTextureWithVerticesTexturecoordinatesBm:2] ? 1 : 0;
ret += [GPUImageiOSBlurFilter initBm:95] ? 1 : 0;
ret += [GPUImageiOSBlurFilter setInputSizeAtindexBm:53] ? 1 : 0;
ret += [GPUImageiOSBlurFilter setBlurRadiusInPixelsBm:22] ? 1 : 0;
ret += [GPUImageiOSBlurFilter blurRadiusInPixelsBm:22] ? 1 : 0;
ret += [GPUImageiOSBlurFilter setSaturationBm:54] ? 1 : 0;
ret += [GPUImageiOSBlurFilter saturationBm:84] ? 1 : 0;
ret += [GPUImageiOSBlurFilter setDownsamplingBm:83] ? 1 : 0;
ret += [GPUImageiOSBlurFilter setRangeReductionFactorBm:87] ? 1 : 0;
ret += [GPUImageiOSBlurFilter rangeReductionFactorBm:85] ? 1 : 0;
ret += [GPUImageSketchFilter initBm:46] ? 1 : 0;
ret += [GPUImageVignetteFilter initBm:1] ? 1 : 0;
ret += [GPUImageVignetteFilter setVignetteCenterBm:30] ? 1 : 0;
ret += [GPUImageVignetteFilter setVignetteColorBm:8] ? 1 : 0;
ret += [GPUImageVignetteFilter setVignetteStartBm:50] ? 1 : 0;
ret += [GPUImageVignetteFilter setVignetteEndBm:45] ? 1 : 0;
ret += [GPUImageHistogramEqualizationFilter initBm:15] ? 1 : 0;
ret += [GPUImageHistogramEqualizationFilter initWithHistogramTypeBm:35] ? 1 : 0;
ret += [GPUImageHistogramEqualizationFilter setDownsamplingFactorBm:80] ? 1 : 0;
ret += [GPUImageMissEtikateFilter initBm:47] ? 1 : 0;
ret += [GPUImagePixellatePositionFilter initBm:92] ? 1 : 0;
ret += [GPUImagePixellatePositionFilter initWithFragmentShaderFromStringBm:27] ? 1 : 0;
ret += [GPUImagePixellatePositionFilter setInputSizeAtindexBm:52] ? 1 : 0;
ret += [GPUImagePixellatePositionFilter setInputRotationAtindexBm:83] ? 1 : 0;
ret += [GPUImagePixellatePositionFilter adjustAspectRatioBm:17] ? 1 : 0;
ret += [GPUImagePixellatePositionFilter forceProcessingAtSizeBm:59] ? 1 : 0;
ret += [GPUImagePixellatePositionFilter setFractionalWidthOfAPixelBm:77] ? 1 : 0;
ret += [GPUImagePixellatePositionFilter setAspectRatioBm:8] ? 1 : 0;
ret += [GPUImagePixellatePositionFilter setCenterBm:63] ? 1 : 0;
ret += [GPUImagePixellatePositionFilter setRadiusBm:60] ? 1 : 0;
ret += [GPUImageHistogramFilter initWithHistogramTypeBm:68] ? 1 : 0;
ret += [GPUImageHistogramFilter initBm:12] ? 1 : 0;
ret += [GPUImageHistogramFilter initializeSecondaryAttributesBm:14] ? 1 : 0;
ret += [GPUImageHistogramFilter deallocBm:42] ? 1 : 0;
ret += [GPUImageHistogramFilter sizeOfFBOBm:78] ? 1 : 0;
ret += [GPUImageHistogramFilter newFrameReadyAtTimeAtindexBm:71] ? 1 : 0;
ret += [GPUImageHistogramFilter outputFrameSizeBm:69] ? 1 : 0;
ret += [GPUImageHistogramFilter setInputSizeAtindexBm:47] ? 1 : 0;
ret += [GPUImageHistogramFilter setInputRotationAtindexBm:28] ? 1 : 0;
ret += [GPUImageHistogramFilter renderToTextureWithVerticesTexturecoordinatesBm:45] ? 1 : 0;
ret += [GPUImageFASTCornerDetectionFilter initBm:69] ? 1 : 0;
ret += [GPUImageFASTCornerDetectionFilter initWithFASTDetectorVariantBm:86] ? 1 : 0;
ret += [GPUImageLevelsFilter initBm:19] ? 1 : 0;
ret += [GPUImageLevelsFilter updateUniformsBm:52] ? 1 : 0;
ret += [GPUImageLevelsFilter setMinGammaMaxMinoutMaxoutBm:47] ? 1 : 0;
ret += [GPUImageLevelsFilter setMinGammaMaxBm:87] ? 1 : 0;
ret += [GPUImageLevelsFilter setRedMinGammaMaxMinoutMaxoutBm:82] ? 1 : 0;
ret += [GPUImageLevelsFilter setRedMinGammaMaxBm:85] ? 1 : 0;
ret += [GPUImageLevelsFilter setGreenMinGammaMaxMinoutMaxoutBm:67] ? 1 : 0;
ret += [GPUImageLevelsFilter setGreenMinGammaMaxBm:60] ? 1 : 0;
ret += [GPUImageLevelsFilter setBlueMinGammaMaxMinoutMaxoutBm:70] ? 1 : 0;
ret += [GPUImageLevelsFilter setBlueMinGammaMaxBm:56] ? 1 : 0;
ret += [GPUImageMovie initWithURLBm:4] ? 1 : 0;
ret += [GPUImageMovie initWithAssetBm:79] ? 1 : 0;
ret += [GPUImageMovie initWithPlayerItemBm:6] ? 1 : 0;
ret += [GPUImageMovie yuvConversionSetupBm:74] ? 1 : 0;
ret += [GPUImageMovie deallocBm:86] ? 1 : 0;
ret += [GPUImageMovie enableSynchronizedEncodingUsingMovieWriterBm:52] ? 1 : 0;
ret += [GPUImageMovie startProcessingBm:99] ? 1 : 0;
ret += [GPUImageMovie createAssetReaderBm:52] ? 1 : 0;
ret += [GPUImageMovie processAssetBm:19] ? 1 : 0;
ret += [GPUImageMovie processPlayerItemBm:23] ? 1 : 0;
ret += [GPUImageMovie outputMediaDataWillChangeBm:14] ? 1 : 0;
ret += [GPUImageMovie displayLinkCallbackBm:18] ? 1 : 0;
ret += [GPUImageMovie readNextVideoFrameFromOutputBm:31] ? 1 : 0;
ret += [GPUImageMovie readNextAudioSampleFromOutputBm:79] ? 1 : 0;
ret += [GPUImageMovie processMovieFrameBm:61] ? 1 : 0;
ret += [GPUImageMovie progressBm:51] ? 1 : 0;
ret += [GPUImageMovie processMovieFrameWithsampletimeBm:13] ? 1 : 0;
ret += [GPUImageMovie endProcessingBm:32] ? 1 : 0;
ret += [GPUImageMovie cancelProcessingBm:1] ? 1 : 0;
ret += [GPUImageMovie convertYUVToRGBOutputBm:16] ? 1 : 0;
ret += [GPUImageMovie assetReaderBm:19] ? 1 : 0;
ret += [GPUImageMovie audioEncodingIsFinishedBm:63] ? 1 : 0;
ret += [GPUImageMovie videoEncodingIsFinishedBm:2] ? 1 : 0;
ret += [GPUImageCannyEdgeDetectionFilter initBm:38] ? 1 : 0;
ret += [GPUImageCannyEdgeDetectionFilter setBlurRadiusInPixelsBm:80] ? 1 : 0;
ret += [GPUImageCannyEdgeDetectionFilter blurRadiusInPixelsBm:84] ? 1 : 0;
ret += [GPUImageCannyEdgeDetectionFilter setBlurTexelSpacingMultiplierBm:98] ? 1 : 0;
ret += [GPUImageCannyEdgeDetectionFilter blurTexelSpacingMultiplierBm:52] ? 1 : 0;
ret += [GPUImageCannyEdgeDetectionFilter setTexelWidthBm:29] ? 1 : 0;
ret += [GPUImageCannyEdgeDetectionFilter texelWidthBm:92] ? 1 : 0;
ret += [GPUImageCannyEdgeDetectionFilter setTexelHeightBm:13] ? 1 : 0;
ret += [GPUImageCannyEdgeDetectionFilter texelHeightBm:57] ? 1 : 0;
ret += [GPUImageCannyEdgeDetectionFilter setUpperThresholdBm:27] ? 1 : 0;
ret += [GPUImageCannyEdgeDetectionFilter upperThresholdBm:54] ? 1 : 0;
ret += [GPUImageCannyEdgeDetectionFilter setLowerThresholdBm:32] ? 1 : 0;
ret += [GPUImageCannyEdgeDetectionFilter lowerThresholdBm:61] ? 1 : 0;
ret += [GPUImageLineGenerator initBm:11] ? 1 : 0;
ret += [GPUImageLineGenerator deallocBm:83] ? 1 : 0;
ret += [GPUImageLineGenerator generateLineCoordinatesBm:8] ? 1 : 0;
ret += [GPUImageLineGenerator renderLinesFromArrayCountFrametimeBm:25] ? 1 : 0;
ret += [GPUImageLineGenerator renderToTextureWithVerticesTexturecoordinatesBm:23] ? 1 : 0;
ret += [GPUImageLineGenerator setLineWidthBm:13] ? 1 : 0;
ret += [GPUImageLineGenerator setLineColorRedGreenBlueBm:86] ? 1 : 0;
ret += [GPUImageSepiaFilter initBm:11] ? 1 : 0;
ret += [GPUImage3x3TextureSamplingFilter initWithVertexShaderFromStringFragmentshaderfromstringBm:63] ? 1 : 0;
ret += [GPUImage3x3TextureSamplingFilter initWithFragmentShaderFromStringBm:92] ? 1 : 0;
ret += [GPUImage3x3TextureSamplingFilter setupFilterForSizeBm:9] ? 1 : 0;
ret += [GPUImage3x3TextureSamplingFilter setTexelWidthBm:1] ? 1 : 0;
ret += [GPUImage3x3TextureSamplingFilter setTexelHeightBm:31] ? 1 : 0;
ret += [GPUImageSphereRefractionFilter initBm:51] ? 1 : 0;
ret += [GPUImageSphereRefractionFilter initWithFragmentShaderFromStringBm:14] ? 1 : 0;
ret += [GPUImageSphereRefractionFilter setInputSizeAtindexBm:8] ? 1 : 0;
ret += [GPUImageSphereRefractionFilter adjustAspectRatioBm:33] ? 1 : 0;
ret += [GPUImageSphereRefractionFilter setInputRotationAtindexBm:72] ? 1 : 0;
ret += [GPUImageSphereRefractionFilter forceProcessingAtSizeBm:98] ? 1 : 0;
ret += [GPUImageSphereRefractionFilter setRadiusBm:8] ? 1 : 0;
ret += [GPUImageSphereRefractionFilter setCenterBm:2] ? 1 : 0;
ret += [GPUImageSphereRefractionFilter setAspectRatioBm:28] ? 1 : 0;
ret += [GPUImageSphereRefractionFilter setRefractiveIndexBm:11] ? 1 : 0;
ret += [GPUImageRGBClosingFilter initBm:98] ? 1 : 0;
ret += [GPUImageRGBClosingFilter initWithRadiusBm:38] ? 1 : 0;
ret += [GPUImageTextureInput initWithTextureSizeBm:47] ? 1 : 0;
ret += [GPUImageTextureInput processTextureWithFrameTimeBm:9] ? 1 : 0;
ret += [GPUImageOpacityFilter initBm:37] ? 1 : 0;
ret += [GPUImageOpacityFilter setOpacityBm:19] ? 1 : 0;
ret += [GPUImagePixellateFilter initBm:46] ? 1 : 0;
ret += [GPUImagePixellateFilter initWithFragmentShaderFromStringBm:60] ? 1 : 0;
ret += [GPUImagePixellateFilter adjustAspectRatioBm:96] ? 1 : 0;
ret += [GPUImagePixellateFilter setInputRotationAtindexBm:98] ? 1 : 0;
ret += [GPUImagePixellateFilter forceProcessingAtSizeBm:90] ? 1 : 0;
ret += [GPUImagePixellateFilter setInputSizeAtindexBm:95] ? 1 : 0;
ret += [GPUImagePixellateFilter setFractionalWidthOfAPixelBm:49] ? 1 : 0;
ret += [GPUImagePixellateFilter setAspectRatioBm:57] ? 1 : 0;
ret += [GPUImageCropFilter initWithCropRegionBm:20] ? 1 : 0;
ret += [GPUImageCropFilter initBm:36] ? 1 : 0;
ret += [GPUImageCropFilter setInputSizeAtindexBm:15] ? 1 : 0;
ret += [GPUImageCropFilter calculateCropTextureCoordinatesBm:55] ? 1 : 0;
ret += [GPUImageCropFilter newFrameReadyAtTimeAtindexBm:24] ? 1 : 0;
ret += [GPUImageCropFilter setCropRegionBm:53] ? 1 : 0;
ret += [GPUImageCropFilter setInputRotationAtindexBm:61] ? 1 : 0;
ret += [GPUImageDissolveBlendFilter initBm:62] ? 1 : 0;
ret += [GPUImageDissolveBlendFilter setMixBm:18] ? 1 : 0;
ret += [GPUImageToonFilter initBm:95] ? 1 : 0;
ret += [GPUImageToonFilter setThresholdBm:86] ? 1 : 0;
ret += [GPUImageToonFilter setQuantizationLevelsBm:59] ? 1 : 0;
ret += [GPUImageErosionFilter initWithRadiusBm:2] ? 1 : 0;
ret += [GPUImageErosionFilter initBm:95] ? 1 : 0;
ret += [GPUImageSaturationFilter initBm:31] ? 1 : 0;
ret += [GPUImageSaturationFilter setSaturationBm:31] ? 1 : 0;
ret += [GPUImageOpeningFilter initBm:83] ? 1 : 0;
ret += [GPUImageOpeningFilter initWithRadiusBm:73] ? 1 : 0;
ret += [GPUImageOpeningFilter setVerticalTexelSpacingBm:31] ? 1 : 0;
ret += [GPUImageOpeningFilter setHorizontalTexelSpacingBm:3] ? 1 : 0;
ret += [GPUImagePolarPixellateFilter initBm:46] ? 1 : 0;
ret += [GPUImagePolarPixellateFilter setInputRotationAtindexBm:6] ? 1 : 0;
ret += [GPUImagePolarPixellateFilter setPixelSizeBm:27] ? 1 : 0;
ret += [GPUImagePolarPixellateFilter setCenterBm:71] ? 1 : 0;
ret += [GPUImageAdaptiveThresholdFilter initBm:69] ? 1 : 0;
ret += [GPUImageAdaptiveThresholdFilter setBlurRadiusInPixelsBm:12] ? 1 : 0;
ret += [GPUImageAdaptiveThresholdFilter blurRadiusInPixelsBm:87] ? 1 : 0;
ret += [GPUImageHardLightBlendFilter initBm:37] ? 1 : 0;
ret += [GPUImageZoomBlurFilter initBm:42] ? 1 : 0;
ret += [GPUImageZoomBlurFilter setInputRotationAtindexBm:22] ? 1 : 0;
ret += [GPUImageZoomBlurFilter setBlurSizeBm:96] ? 1 : 0;
ret += [GPUImageZoomBlurFilter setBlurCenterBm:38] ? 1 : 0;
ret += [GPUImageHarrisCornerDetectionFilter initBm:76] ? 1 : 0;
ret += [GPUImageHarrisCornerDetectionFilter initWithCornerDetectionFragmentShaderBm:91] ? 1 : 0;
ret += [GPUImageHarrisCornerDetectionFilter deallocBm:19] ? 1 : 0;
ret += [GPUImageHarrisCornerDetectionFilter extractCornerLocationsFromImageAtFrameTimeBm:91] ? 1 : 0;
ret += [GPUImageHarrisCornerDetectionFilter wantsMonochromeInputBm:82] ? 1 : 0;
ret += [GPUImageHarrisCornerDetectionFilter setBlurRadiusInPixelsBm:24] ? 1 : 0;
ret += [GPUImageHarrisCornerDetectionFilter blurRadiusInPixelsBm:41] ? 1 : 0;
ret += [GPUImageHarrisCornerDetectionFilter setSensitivityBm:87] ? 1 : 0;
ret += [GPUImageHarrisCornerDetectionFilter setThresholdBm:43] ? 1 : 0;
ret += [GPUImageHarrisCornerDetectionFilter thresholdBm:3] ? 1 : 0;
ret += [GPUImageMultiplyBlendFilter initBm:25] ? 1 : 0;
ret += [GPUImageOverlayBlendFilter initBm:10] ? 1 : 0;
ret += [GPUImageColorMatrixFilter initBm:31] ? 1 : 0;
ret += [GPUImageColorMatrixFilter setIntensityBm:78] ? 1 : 0;
ret += [GPUImageColorMatrixFilter setColorMatrixBm:76] ? 1 : 0;
ret += [GPUImageSolidColorGenerator initBm:96] ? 1 : 0;
ret += [GPUImageSolidColorGenerator renderToTextureWithVerticesTexturecoordinatesBm:57] ? 1 : 0;
ret += [GPUImageSolidColorGenerator forceProcessingAtSizeBm:85] ? 1 : 0;
ret += [GPUImageSolidColorGenerator addTargetAttexturelocationBm:79] ? 1 : 0;
ret += [GPUImageSolidColorGenerator setColorBm:49] ? 1 : 0;
ret += [GPUImageSolidColorGenerator setColorRedGreenBlueAlphaBm:87] ? 1 : 0;
ret += [GPUImageSolidColorGenerator setUseExistingAlphaBm:99] ? 1 : 0;
ret += [GPUImageExclusionBlendFilter initBm:99] ? 1 : 0;
ret += [GPUImageGaussianBlurFilter initWithFirstStageVertexShaderFromStringFirststagefragmentshaderfromstringSecondstagevertexshaderfromstringSecondstagefragmentshaderfromstringBm:71] ? 1 : 0;
ret += [GPUImageGaussianBlurFilter initBm:64] ? 1 : 0;
ret += [GPUImageGaussianBlurFilter vertexShaderForStandardBlurOfRadiusSigmaBm:21] ? 1 : 0;
ret += [GPUImageGaussianBlurFilter fragmentShaderForStandardBlurOfRadiusSigmaBm:23] ? 1 : 0;
ret += [GPUImageGaussianBlurFilter vertexShaderForOptimizedBlurOfRadiusSigmaBm:0] ? 1 : 0;
ret += [GPUImageGaussianBlurFilter fragmentShaderForOptimizedBlurOfRadiusSigmaBm:27] ? 1 : 0;
ret += [GPUImageGaussianBlurFilter setupFilterForSizeBm:95] ? 1 : 0;
ret += [GPUImageGaussianBlurFilter renderToTextureWithVerticesTexturecoordinatesBm:90] ? 1 : 0;
ret += [GPUImageGaussianBlurFilter switchToVertexShaderFragmentshaderBm:72] ? 1 : 0;
ret += [GPUImageGaussianBlurFilter setTexelSpacingMultiplierBm:27] ? 1 : 0;
ret += [GPUImageGaussianBlurFilter setBlurRadiusInPixelsBm:45] ? 1 : 0;
ret += [GPUImageGaussianBlurFilter setBlurRadiusAsFractionOfImageWidthBm:72] ? 1 : 0;
ret += [GPUImageGaussianBlurFilter setBlurRadiusAsFractionOfImageHeightBm:78] ? 1 : 0;
ret += [GPUImageFramebufferCache initBm:84] ? 1 : 0;
ret += [GPUImageFramebufferCache hashForSizeTextureoptionsOnlytextureBm:19] ? 1 : 0;
ret += [GPUImageFramebufferCache fetchFramebufferForSizeTextureoptionsOnlytextureBm:23] ? 1 : 0;
ret += [GPUImageFramebufferCache fetchFramebufferForSizeOnlytextureBm:5] ? 1 : 0;
ret += [GPUImageFramebufferCache returnFramebufferToCacheBm:93] ? 1 : 0;
ret += [GPUImageFramebufferCache purgeAllUnassignedFramebuffersBm:74] ? 1 : 0;
ret += [GPUImageFramebufferCache addFramebufferToActiveImageCaptureListBm:56] ? 1 : 0;
ret += [GPUImageFramebufferCache removeFramebufferFromActiveImageCaptureListBm:31] ? 1 : 0;
ret += [GPUImageTiltShiftFilter initBm:4] ? 1 : 0;
ret += [GPUImageTiltShiftFilter setBlurRadiusInPixelsBm:73] ? 1 : 0;
ret += [GPUImageTiltShiftFilter blurRadiusInPixelsBm:78] ? 1 : 0;
ret += [GPUImageTiltShiftFilter setTopFocusLevelBm:89] ? 1 : 0;
ret += [GPUImageTiltShiftFilter setBottomFocusLevelBm:58] ? 1 : 0;
ret += [GPUImageTiltShiftFilter setFocusFallOffRateBm:89] ? 1 : 0;
ret += [GPUImageSaturationBlendFilter initBm:44] ? 1 : 0;
ret += [GPUImageRGBFilter initBm:90] ? 1 : 0;
ret += [GPUImageRGBFilter setRedBm:82] ? 1 : 0;
ret += [GPUImageRGBFilter setGreenBm:30] ? 1 : 0;
ret += [GPUImageRGBFilter setBlueBm:43] ? 1 : 0;
ret += [GPUImageBoxBlurFilter vertexShaderForOptimizedBlurOfRadiusSigmaBm:61] ? 1 : 0;
ret += [GPUImageBoxBlurFilter fragmentShaderForOptimizedBlurOfRadiusSigmaBm:89] ? 1 : 0;
ret += [GPUImageBoxBlurFilter setupFilterForSizeBm:34] ? 1 : 0;
ret += [GPUImageBoxBlurFilter initBm:38] ? 1 : 0;
ret += [GPUImageBoxBlurFilter setBlurRadiusInPixelsBm:45] ? 1 : 0;
ret += [GPUImageSourceOverBlendFilter initBm:68] ? 1 : 0;
ret += [GPUImageFramebuffer initWithSizeTextureoptionsOnlytextureBm:76] ? 1 : 0;
ret += [GPUImageFramebuffer initWithSizeOverriddentextureBm:57] ? 1 : 0;
ret += [GPUImageFramebuffer initWithSizeBm:33] ? 1 : 0;
ret += [GPUImageFramebuffer deallocBm:71] ? 1 : 0;
ret += [GPUImageFramebuffer generateTextureBm:92] ? 1 : 0;
ret += [GPUImageFramebuffer generateFramebufferBm:29] ? 1 : 0;
ret += [GPUImageFramebuffer destroyFramebufferBm:80] ? 1 : 0;
ret += [GPUImageFramebuffer activateFramebufferBm:17] ? 1 : 0;
ret += [GPUImageFramebuffer lockBm:56] ? 1 : 0;
ret += [GPUImageFramebuffer unlockBm:79] ? 1 : 0;
ret += [GPUImageFramebuffer clearAllLocksBm:30] ? 1 : 0;
ret += [GPUImageFramebuffer disableReferenceCountingBm:39] ? 1 : 0;
ret += [GPUImageFramebuffer enableReferenceCountingBm:24] ? 1 : 0;
ret += [GPUImageFramebuffer newCGImageFromFramebufferContentsBm:45] ? 1 : 0;
ret += [GPUImageFramebuffer restoreRenderTargetBm:81] ? 1 : 0;
ret += [GPUImageFramebuffer lockForReadingBm:28] ? 1 : 0;
ret += [GPUImageFramebuffer unlockAfterReadingBm:10] ? 1 : 0;
ret += [GPUImageFramebuffer bytesPerRowBm:40] ? 1 : 0;
ret += [GPUImageFramebuffer byteBufferBm:1] ? 1 : 0;
ret += [GPUImageFramebuffer textureBm:12] ? 1 : 0;
ret += [GPUImageLaplacianFilter initBm:44] ? 1 : 0;
ret += [GPUImageLanczosResamplingFilter initBm:82] ? 1 : 0;
ret += [GPUImageLanczosResamplingFilter setInputSizeAtindexBm:45] ? 1 : 0;
ret += [GPUImageLanczosResamplingFilter setupFilterForSizeBm:64] ? 1 : 0;
ret += [GPUImageLanczosResamplingFilter renderToTextureWithVerticesTexturecoordinatesBm:40] ? 1 : 0;
ret += [GPUImageFilterPipeline initWithConfigurationInputOutputBm:93] ? 1 : 0;
ret += [GPUImageFilterPipeline initWithConfigurationFileInputOutputBm:52] ? 1 : 0;
ret += [GPUImageFilterPipeline _parseConfigurationBm:45] ? 1 : 0;
ret += [GPUImageFilterPipeline initWithOrderedFiltersInputOutputBm:50] ? 1 : 0;
ret += [GPUImageFilterPipeline addFilterAtindexBm:8] ? 1 : 0;
ret += [GPUImageFilterPipeline addFilterBm:75] ? 1 : 0;
ret += [GPUImageFilterPipeline replaceFilterAtIndexWithfilterBm:57] ? 1 : 0;
ret += [GPUImageFilterPipeline removeFilterBm:29] ? 1 : 0;
ret += [GPUImageFilterPipeline removeFilterAtIndexBm:22] ? 1 : 0;
ret += [GPUImageFilterPipeline removeAllFiltersBm:73] ? 1 : 0;
ret += [GPUImageFilterPipeline replaceAllFiltersBm:5] ? 1 : 0;
ret += [GPUImageFilterPipeline _refreshFiltersBm:20] ? 1 : 0;
ret += [GPUImageFilterPipeline currentFilteredFrameBm:71] ? 1 : 0;
ret += [GPUImageFilterPipeline currentFilteredFrameWithOrientationBm:27] ? 1 : 0;
ret += [GPUImageFilterPipeline newCGImageFromCurrentFilteredFrameBm:17] ? 1 : 0;
ret += [GPUImageXYDerivativeFilter initBm:25] ? 1 : 0;
ret += [GPUImageColorDodgeBlendFilter initBm:45] ? 1 : 0;
ret += [GPUImageAverageLuminanceThresholdFilter initBm:26] ? 1 : 0;
ret += [GPUImageOutput initBm:46] ? 1 : 0;
ret += [GPUImageOutput deallocBm:5] ? 1 : 0;
ret += [GPUImageOutput setInputFramebufferForTargetAtindexBm:32] ? 1 : 0;
ret += [GPUImageOutput framebufferForOutputBm:99] ? 1 : 0;
ret += [GPUImageOutput removeOutputFramebufferBm:7] ? 1 : 0;
ret += [GPUImageOutput notifyTargetsAboutNewOutputTextureBm:0] ? 1 : 0;
ret += [GPUImageOutput targetsBm:2] ? 1 : 0;
ret += [GPUImageOutput addTargetBm:64] ? 1 : 0;
ret += [GPUImageOutput addTargetAttexturelocationBm:94] ? 1 : 0;
ret += [GPUImageOutput removeTargetBm:89] ? 1 : 0;
ret += [GPUImageOutput removeAllTargetsBm:14] ? 1 : 0;
ret += [GPUImageOutput forceProcessingAtSizeBm:9] ? 1 : 0;
ret += [GPUImageOutput forceProcessingAtSizeRespectingAspectRatioBm:14] ? 1 : 0;
ret += [GPUImageOutput useNextFrameForImageCaptureBm:60] ? 1 : 0;
ret += [GPUImageOutput newCGImageFromCurrentlyProcessedOutputBm:37] ? 1 : 0;
ret += [GPUImageOutput newCGImageByFilteringCGImageBm:75] ? 1 : 0;
ret += [GPUImageOutput providesMonochromeOutputBm:45] ? 1 : 0;
ret += [GPUImageOutput imageFromCurrentFramebufferBm:84] ? 1 : 0;
ret += [GPUImageOutput imageFromCurrentFramebufferWithOrientationBm:21] ? 1 : 0;
ret += [GPUImageOutput imageByFilteringImageBm:6] ? 1 : 0;
ret += [GPUImageOutput newCGImageByFilteringImageBm:5] ? 1 : 0;
ret += [GPUImageOutput imageFromCurrentFramebufferBm:22] ? 1 : 0;
ret += [GPUImageOutput imageFromCurrentFramebufferWithOrientationBm:42] ? 1 : 0;
ret += [GPUImageOutput imageByFilteringImageBm:39] ? 1 : 0;
ret += [GPUImageOutput newCGImageByFilteringImageBm:30] ? 1 : 0;
ret += [GPUImageOutput setAudioEncodingTargetBm:4] ? 1 : 0;
ret += [GPUImageOutput setOutputTextureOptionsBm:66] ? 1 : 0;
ret += [GPUImagePosterizeFilter initBm:44] ? 1 : 0;
ret += [GPUImagePosterizeFilter setColorLevelsBm:21] ? 1 : 0;
ret += [GPUImageDirectionalSobelEdgeDetectionFilter initBm:82] ? 1 : 0;
ret += [GPUImageBrightnessFilter initBm:37] ? 1 : 0;
ret += [GPUImageBrightnessFilter setBrightnessBm:42] ? 1 : 0;
ret += [GPUImageDifferenceBlendFilter initBm:58] ? 1 : 0;
ret += [GPUImageDivideBlendFilter initBm:99] ? 1 : 0;
ret += [GPUImageStretchDistortionFilter initBm:72] ? 1 : 0;
ret += [GPUImageStretchDistortionFilter setInputRotationAtindexBm:71] ? 1 : 0;
ret += [GPUImageStretchDistortionFilter setCenterBm:13] ? 1 : 0;
ret += [GLProgram initWithVertexShaderStringFragmentshaderstringBm:23] ? 1 : 0;
ret += [GLProgram initWithVertexShaderStringFragmentshaderfilenameBm:47] ? 1 : 0;
ret += [GLProgram initWithVertexShaderFilenameFragmentshaderfilenameBm:5] ? 1 : 0;
ret += [GLProgram compileShaderTypeStringBm:87] ? 1 : 0;
ret += [GLProgram addAttributeBm:52] ? 1 : 0;
ret += [GLProgram attributeIndexBm:88] ? 1 : 0;
ret += [GLProgram uniformIndexBm:31] ? 1 : 0;
ret += [GLProgram linkBm:4] ? 1 : 0;
ret += [GLProgram useBm:80] ? 1 : 0;
ret += [GLProgram validateBm:94] ? 1 : 0;
ret += [GLProgram deallocBm:2] ? 1 : 0;
ret += [DGActivityIndicatorView initWithCoderBm:4] ? 1 : 0;
ret += [DGActivityIndicatorView initWithTypeBm:92] ? 1 : 0;
ret += [DGActivityIndicatorView initWithTypeTintcolorBm:80] ? 1 : 0;
ret += [DGActivityIndicatorView initWithTypeTintcolorSizeBm:46] ? 1 : 0;
ret += [DGActivityIndicatorView commonInitBm:64] ? 1 : 0;
ret += [DGActivityIndicatorView setupAnimationBm:89] ? 1 : 0;
ret += [DGActivityIndicatorView startAnimatingBm:28] ? 1 : 0;
ret += [DGActivityIndicatorView stopAnimatingBm:82] ? 1 : 0;
ret += [DGActivityIndicatorView setTypeBm:7] ? 1 : 0;
ret += [DGActivityIndicatorView setSizeBm:76] ? 1 : 0;
ret += [DGActivityIndicatorView setTintColorBm:77] ? 1 : 0;
ret += [DGActivityIndicatorView activityIndicatorAnimationForAnimationTypeBm:94] ? 1 : 0;
ret += [DGActivityIndicatorView layoutSubviewsBm:78] ? 1 : 0;
ret += [DGActivityIndicatorView intrinsicContentSizeBm:21] ? 1 : 0;
ret += [DGActivityIndicatorBallClipRotateMultipleAnimation setupAnimationInLayerWithsizeTintcolorBm:0] ? 1 : 0;
ret += [DGActivityIndicatorBallClipRotateMultipleAnimation createAnimationInDurationWithtimingfunctionReverseBm:0] ? 1 : 0;
ret += [DGActivityIndicatorBallGridBeatAnimation setupAnimationInLayerWithsizeTintcolorBm:45] ? 1 : 0;
ret += [DGActivityIndicatorBallGridBeatAnimation createCirleWithColorBm:41] ? 1 : 0;
ret += [DGActivityIndicatorLineScaleAnimation setupAnimationInLayerWithsizeTintcolorBm:58] ? 1 : 0;
ret += [DGActivityIndicatorTwoDotsAnimation setupAnimationInLayerWithsizeTintcolorBm:93] ? 1 : 0;
ret += [DGActivityIndicatorNineDotsAnimation setupAnimationInLayerWithsizeTintcolorBm:4] ? 1 : 0;
ret += [DGActivityIndicatorBallScaleRippleMultipleAnimation setupAnimationInLayerWithsizeTintcolorBm:45] ? 1 : 0;
ret += [DGActivityIndicatorFiveDotsAnimation setupAnimationInLayerWithsizeTintcolorBm:44] ? 1 : 0;
ret += [DGActivityIndicatorBallScaleAnimation setupAnimationInLayerWithsizeTintcolorBm:0] ? 1 : 0;
ret += [DGActivityIndicatorBallPulseSyncAnimation setupAnimationInLayerWithsizeTintcolorBm:22] ? 1 : 0;
ret += [DGActivityIndicatorBallPulseAnimation setupAnimationInLayerWithsizeTintcolorBm:19] ? 1 : 0;
ret += [DGActivityIndicatorRotatingSandglassAnimation setupAnimationInLayerWithsizeTintcolorBm:13] ? 1 : 0;
ret += [DGActivityIndicatorBallTrianglePathAnimation setupAnimationInLayerWithsizeTintcolorBm:14] ? 1 : 0;
ret += [DGActivityIndicatorBallTrianglePathAnimation createCircleWithSizeColorBm:88] ? 1 : 0;
ret += [DGActivityIndicatorBallTrianglePathAnimation changeAnimationValuesDeltaxDeltayBm:2] ? 1 : 0;
ret += [DGActivityIndicatorBallTrianglePathAnimation translateWithdeltaxDeltayBm:50] ? 1 : 0;
ret += [DGActivityIndicatorBallBeatAnimation setupAnimationInLayerWithsizeTintcolorBm:33] ? 1 : 0;
ret += [DGActivityIndicatorBallZigZagDeflectAnimation setupAnimationInLayerWithsizeTintcolorBm:65] ? 1 : 0;
ret += [DGActivityIndicatorBallSpinFadeLoader setupAnimationInLayerWithsizeTintcolorBm:91] ? 1 : 0;
ret += [DGActivityIndicatorBallSpinFadeLoader circleLayerSizeOriginContainersizeColorBm:73] ? 1 : 0;
ret += [DGActivityIndicatorBallSpinFadeLoader createLayerWithColorBm:27] ? 1 : 0;
ret += [DGActivityIndicatorLineScalePulseOutRapidAnimation setupAnimationInLayerWithsizeTintcolorBm:53] ? 1 : 0;
ret += [DGActivityIndicatorBallClipRotateAnimation setupAnimationInLayerWithsizeTintcolorBm:66] ? 1 : 0;
ret += [DGActivityIndicatorRotatingTrigonAnimation setupAnimationInLayerWithsizeTintcolorBm:43] ? 1 : 0;
ret += [DGActivityIndicatorTriangleSkewSpinAnimation setupAnimationInLayerWithsizeTintcolorBm:56] ? 1 : 0;
ret += [DGActivityIndicatorTripleRingsAnimation setupAnimationInLayerWithsizeTintcolorBm:21] ? 1 : 0;
ret += [DGActivityIndicatorAnimation createBasicAnimationWithKeyPathBm:68] ? 1 : 0;
ret += [DGActivityIndicatorAnimation createKeyframeAnimationWithKeyPathBm:78] ? 1 : 0;
ret += [DGActivityIndicatorAnimation createAnimationGroupBm:97] ? 1 : 0;
ret += [DGActivityIndicatorAnimation setupAnimationInLayerWithsizeTintcolorBm:98] ? 1 : 0;
ret += [DGActivityIndicatorTriplePulseAnimation setupAnimationInLayerWithsizeTintcolorBm:56] ? 1 : 0;
ret += [DGActivityIndicatorBallClipRotatePulseAnimation setupAnimationInLayerWithsizeTintcolorBm:33] ? 1 : 0;
ret += [DGActivityIndicatorBallGridPulseAnimation setupAnimationInLayerWithsizeTintcolorBm:60] ? 1 : 0;
ret += [DGActivityIndicatorBallGridPulseAnimation createCirleWithColorBm:95] ? 1 : 0;
ret += [DGActivityIndicatorBallRotateAnimation setupAnimationInLayerWithsizeTintcolorBm:27] ? 1 : 0;
ret += [DGActivityIndicatorBallScaleRippleAnimation setupAnimationInLayerWithsizeTintcolorBm:48] ? 1 : 0;
ret += [DGActivityIndicatorBallScaleMultipleAnimation setupAnimationInLayerWithsizeTintcolorBm:7] ? 1 : 0;
ret += [DGActivityIndicatorRotatingSquaresAnimation setupAnimationInLayerWithsizeTintcolorBm:15] ? 1 : 0;
ret += [DGActivityIndicatorLineScalePartyAnimation setupAnimationInLayerWithsizeTintcolorBm:49] ? 1 : 0;
ret += [DGActivityIndicatorCookieTerminatorAnimation setupAnimationInLayerWithsizeTintcolorBm:93] ? 1 : 0;
ret += [DGActivityIndicatorDoubleBounceAnimation setupAnimationInLayerWithsizeTintcolorBm:32] ? 1 : 0;
ret += [DGActivityIndicatorLineScalePulseOutAnimation setupAnimationInLayerWithsizeTintcolorBm:60] ? 1 : 0;
ret += [DGActivityIndicatorBallZigZagAnimation setupAnimationInLayerWithsizeTintcolorBm:27] ? 1 : 0;
ret += [DGActivityIndicatorThreeDotsAnimation setupAnimationInLayerWithsizeTintcolorBm:82] ? 1 : 0;
ret += [NSString rac_sequenceBm:26] ? 1 : 0;
ret += [NSDictionary rac_sequenceBm:77] ? 1 : 0;
ret += [NSDictionary rac_keySequenceBm:72] ? 1 : 0;
ret += [NSDictionary rac_valueSequenceBm:70] ? 1 : 0;
ret += [UITextField rac_textSignalBm:83] ? 1 : 0;
ret += [UITextField rac_newTextChannelBm:44] ? 1 : 0;
ret += [UISegmentedControl rac_newSelectedSegmentIndexChannelWithNilValueBm:99] ? 1 : 0;
ret += [RACKVOProxy sharedProxyBm:83] ? 1 : 0;
ret += [RACKVOProxy initBm:97] ? 1 : 0;
ret += [RACKVOProxy addObserverForcontextBm:74] ? 1 : 0;
ret += [RACKVOProxy removeObserverForcontextBm:24] ? 1 : 0;
ret += [RACKVOProxy observeValueForKeyPathOfobjectChangeContextBm:36] ? 1 : 0;
ret += [RACQueueScheduler initWithNameQueueBm:84] ? 1 : 0;
ret += [RACQueueScheduler deallocBm:29] ? 1 : 0;
ret += [RACQueueScheduler wallTimeWithDateBm:50] ? 1 : 0;
ret += [RACQueueScheduler scheduleBm:7] ? 1 : 0;
ret += [RACQueueScheduler afterScheduleBm:5] ? 1 : 0;
ret += [RACQueueScheduler afterRepeatingeveryWithleewayScheduleBm:42] ? 1 : 0;
ret += [NSArray rac_sequenceBm:52] ? 1 : 0;
ret += [RACPassthroughSubscriber initWithSubscriberSignalDisposableBm:82] ? 1 : 0;
ret += [RACPassthroughSubscriber sendNextBm:35] ? 1 : 0;
ret += [RACPassthroughSubscriber sendErrorBm:47] ? 1 : 0;
ret += [RACPassthroughSubscriber sendCompletedBm:72] ? 1 : 0;
ret += [RACPassthroughSubscriber didSubscribeWithDisposableBm:68] ? 1 : 0;
ret += [RACScopedDisposable scopedDisposableWithDisposableBm:85] ? 1 : 0;
ret += [RACScopedDisposable deallocBm:80] ? 1 : 0;
ret += [RACScopedDisposable asScopedDisposableBm:18] ? 1 : 0;
ret += [RACDynamicSignal createSignalBm:74] ? 1 : 0;
ret += [RACDynamicSignal subscribeBm:63] ? 1 : 0;
ret += [UISlider rac_newValueChannelWithNilValueBm:98] ? 1 : 0;
ret += [RACReturnSignal setNameBm:28] ? 1 : 0;
ret += [RACReturnSignal nameBm:44] ? 1 : 0;
ret += [RACReturnSignal returnBm:86] ? 1 : 0;
ret += [RACReturnSignal subscribeBm:67] ? 1 : 0;
ret += [UIRefreshControl rac_commandBm:65] ? 1 : 0;
ret += [UIRefreshControl setRac_commandBm:68] ? 1 : 0;
ret += [RACTestScheduler initBm:6] ? 1 : 0;
ret += [RACTestScheduler deallocBm:26] ? 1 : 0;
ret += [RACTestScheduler stepBm:74] ? 1 : 0;
ret += [RACTestScheduler stepBm:40] ? 1 : 0;
ret += [RACTestScheduler stepAllBm:34] ? 1 : 0;
ret += [RACTestScheduler scheduleBm:56] ? 1 : 0;
ret += [RACTestScheduler afterScheduleBm:76] ? 1 : 0;
ret += [RACTestScheduler afterRepeatingeveryWithleewayScheduleBm:90] ? 1 : 0;
ret += [NSSet rac_sequenceBm:60] ? 1 : 0;
ret += [NSInvocation rac_setArgumentAtindexBm:80] ? 1 : 0;
ret += [NSInvocation rac_argumentAtIndexBm:10] ? 1 : 0;
ret += [NSInvocation rac_argumentsTupleBm:71] ? 1 : 0;
ret += [NSInvocation setRac_argumentsTupleBm:93] ? 1 : 0;
ret += [NSInvocation rac_returnValueBm:30] ? 1 : 0;
ret += [UIGestureRecognizer rac_gestureSignalBm:99] ? 1 : 0;
ret += [UIAlertView rac_delegateProxyBm:63] ? 1 : 0;
ret += [UIAlertView rac_buttonClickedSignalBm:8] ? 1 : 0;
ret += [UIAlertView rac_willDismissSignalBm:2] ? 1 : 0;
ret += [RACValueTransformer allowsReverseTransformationBm:39] ? 1 : 0;
ret += [RACValueTransformer transformedValueBm:68] ? 1 : 0;
ret += [RACValueTransformer transformerWithBlockBm:97] ? 1 : 0;
ret += [RACUnit defaultUnitBm:84] ? 1 : 0;
ret += [RACCompoundDisposable isDisposedBm:27] ? 1 : 0;
ret += [RACCompoundDisposable compoundDisposableBm:25] ? 1 : 0;
ret += [RACCompoundDisposable compoundDisposableWithDisposablesBm:18] ? 1 : 0;
ret += [RACCompoundDisposable initBm:26] ? 1 : 0;
ret += [RACCompoundDisposable initWithDisposablesBm:41] ? 1 : 0;
ret += [RACCompoundDisposable initWithBlockBm:29] ? 1 : 0;
ret += [RACCompoundDisposable deallocBm:5] ? 1 : 0;
ret += [RACCompoundDisposable addDisposableBm:7] ? 1 : 0;
ret += [RACCompoundDisposable removeDisposableBm:64] ? 1 : 0;
ret += [RACCompoundDisposable disposeBm:82] ? 1 : 0;
ret += [RACEagerSequence returnBm:0] ? 1 : 0;
ret += [RACEagerSequence bindBm:40] ? 1 : 0;
ret += [RACEagerSequence concatBm:25] ? 1 : 0;
ret += [RACEagerSequence eagerSequenceBm:76] ? 1 : 0;
ret += [RACEagerSequence lazySequenceBm:64] ? 1 : 0;
ret += [RACEagerSequence foldRightWithStartReduceBm:48] ? 1 : 0;
ret += [RACDelegateProxy initWithProtocolBm:85] ? 1 : 0;
ret += [RACDelegateProxy signalForSelectorBm:64] ? 1 : 0;
ret += [RACDelegateProxy isProxyBm:48] ? 1 : 0;
ret += [RACDelegateProxy forwardInvocationBm:42] ? 1 : 0;
ret += [RACDelegateProxy methodSignatureForSelectorBm:36] ? 1 : 0;
ret += [RACDelegateProxy respondsToSelectorBm:71] ? 1 : 0;
ret += [RACSubscriber subscriberWithNextErrorCompletedBm:43] ? 1 : 0;
ret += [RACSubscriber initBm:38] ? 1 : 0;
ret += [RACSubscriber deallocBm:60] ? 1 : 0;
ret += [RACSubscriber sendNextBm:98] ? 1 : 0;
ret += [RACSubscriber sendErrorBm:55] ? 1 : 0;
ret += [RACSubscriber sendCompletedBm:9] ? 1 : 0;
ret += [RACSubscriber didSubscribeWithDisposableBm:87] ? 1 : 0;
ret += [NSObject rac_signalForSelectorBm:60] ? 1 : 0;
ret += [NSObject rac_signalForSelectorFromprotocolBm:72] ? 1 : 0;
ret += [NSObject rac_observeKeyPathOptionsObserverBlockBm:82] ? 1 : 0;
ret += [RACSubject subjectBm:18] ? 1 : 0;
ret += [RACSubject initBm:30] ? 1 : 0;
ret += [RACSubject deallocBm:69] ? 1 : 0;
ret += [RACSubject subscribeBm:15] ? 1 : 0;
ret += [RACSubject enumerateSubscribersUsingBlockBm:50] ? 1 : 0;
ret += [RACSubject sendNextBm:11] ? 1 : 0;
ret += [RACSubject sendErrorBm:61] ? 1 : 0;
ret += [RACSubject sendCompletedBm:72] ? 1 : 0;
ret += [RACSubject didSubscribeWithDisposableBm:87] ? 1 : 0;
ret += [NSObject rac_liftSelectorWithsignalofargumentsBm:6] ? 1 : 0;
ret += [NSObject rac_liftSelectorWithsignalsfromarrayBm:91] ? 1 : 0;
ret += [NSObject rac_liftSelectorWithsignalsBm:10] ? 1 : 0;
ret += [RACSerialDisposable isDisposedBm:72] ? 1 : 0;
ret += [RACSerialDisposable disposableBm:99] ? 1 : 0;
ret += [RACSerialDisposable setDisposableBm:85] ? 1 : 0;
ret += [RACSerialDisposable serialDisposableWithDisposableBm:3] ? 1 : 0;
ret += [RACSerialDisposable initBm:15] ? 1 : 0;
ret += [RACSerialDisposable initWithBlockBm:25] ? 1 : 0;
ret += [RACSerialDisposable deallocBm:77] ? 1 : 0;
ret += [RACSerialDisposable swapInDisposableBm:6] ? 1 : 0;
ret += [RACSerialDisposable disposeBm:54] ? 1 : 0;
ret += [UIActionSheet rac_delegateProxyBm:50] ? 1 : 0;
ret += [UIActionSheet rac_buttonClickedSignalBm:88] ? 1 : 0;
ret += [UIButton rac_commandBm:59] ? 1 : 0;
ret += [UIButton setRac_commandBm:91] ? 1 : 0;
ret += [UIButton rac_hijackActionAndTargetIfNeededBm:36] ? 1 : 0;
ret += [UIButton rac_commandPerformActionBm:14] ? 1 : 0;
ret += [RACDisposable isDisposedBm:49] ? 1 : 0;
ret += [RACDisposable initBm:44] ? 1 : 0;
ret += [RACDisposable initWithBlockBm:62] ? 1 : 0;
ret += [RACDisposable disposableWithBlockBm:39] ? 1 : 0;
ret += [RACDisposable deallocBm:66] ? 1 : 0;
ret += [RACDisposable disposeBm:16] ? 1 : 0;
ret += [RACDisposable asScopedDisposableBm:37] ? 1 : 0;
ret += [NSString rac_keyPathComponentsBm:74] ? 1 : 0;
ret += [NSString rac_keyPathByDeletingLastKeyPathComponentBm:52] ? 1 : 0;
ret += [NSString rac_keyPathByDeletingFirstKeyPathComponentBm:89] ? 1 : 0;
ret += [UIControl rac_signalForControlEventsBm:24] ? 1 : 0;
ret += [NSIndexSet rac_sequenceBm:75] ? 1 : 0;
ret += [RACTupleNil tupleNilBm:89] ? 1 : 0;
ret += [RACTupleNil copyWithZoneBm:40] ? 1 : 0;
ret += [RACTupleNil initWithCoderBm:58] ? 1 : 0;
ret += [RACTupleNil encodeWithCoderBm:91] ? 1 : 0;
ret += [RACTuple initBm:14] ? 1 : 0;
ret += [RACTuple initWithBackingArrayBm:60] ? 1 : 0;
ret += [RACTuple descriptionBm:71] ? 1 : 0;
ret += [RACTuple isEqualBm:61] ? 1 : 0;
ret += [RACTuple hashBm:96] ? 1 : 0;
ret += [RACTuple countByEnumeratingWithStateObjectsCountBm:78] ? 1 : 0;
ret += [RACTuple copyWithZoneBm:68] ? 1 : 0;
ret += [RACTuple initWithCoderBm:63] ? 1 : 0;
ret += [RACTuple encodeWithCoderBm:38] ? 1 : 0;
ret += [RACTuple tupleWithObjectsFromArrayBm:30] ? 1 : 0;
ret += [RACTuple tupleWithObjectsFromArrayConvertnullstonilsBm:47] ? 1 : 0;
ret += [RACTuple tupleWithObjectsBm:23] ? 1 : 0;
ret += [RACTuple objectAtIndexBm:21] ? 1 : 0;
ret += [RACTuple allObjectsBm:91] ? 1 : 0;
ret += [RACTuple tupleByAddingObjectBm:77] ? 1 : 0;
ret += [RACTuple countBm:46] ? 1 : 0;
ret += [RACTuple firstBm:70] ? 1 : 0;
ret += [RACTuple secondBm:25] ? 1 : 0;
ret += [RACTuple thirdBm:80] ? 1 : 0;
ret += [RACTuple fourthBm:37] ? 1 : 0;
ret += [RACTuple fifthBm:22] ? 1 : 0;
ret += [RACTuple lastBm:5] ? 1 : 0;
ret += [RACOneTuple initBm:52] ? 1 : 0;
ret += [RACOneTuple initWithBackingArrayBm:21] ? 1 : 0;
ret += [RACOneTuple tupleByAddingObjectBm:88] ? 1 : 0;
ret += [RACOneTuple packBm:54] ? 1 : 0;
ret += [RACOneTuple isEqualBm:13] ? 1 : 0;
ret += [RACTwoTuple initBm:65] ? 1 : 0;
ret += [RACTwoTuple initWithBackingArrayBm:59] ? 1 : 0;
ret += [RACTwoTuple tupleByAddingObjectBm:97] ? 1 : 0;
ret += [RACTwoTuple packFirstBm:68] ? 1 : 0;
ret += [RACTwoTuple isEqualBm:20] ? 1 : 0;
ret += [RACThreeTuple initBm:71] ? 1 : 0;
ret += [RACThreeTuple initWithBackingArrayBm:4] ? 1 : 0;
ret += [RACThreeTuple tupleByAddingObjectBm:92] ? 1 : 0;
ret += [RACThreeTuple packFirstSecondBm:68] ? 1 : 0;
ret += [RACThreeTuple isEqualBm:33] ? 1 : 0;
ret += [RACFourTuple initBm:73] ? 1 : 0;
ret += [RACFourTuple initWithBackingArrayBm:79] ? 1 : 0;
ret += [RACFourTuple tupleByAddingObjectBm:24] ? 1 : 0;
ret += [RACFourTuple packFirstSecondThirdBm:51] ? 1 : 0;
ret += [RACFourTuple isEqualBm:2] ? 1 : 0;
ret += [RACFiveTuple initBm:77] ? 1 : 0;
ret += [RACFiveTuple initWithBackingArrayBm:91] ? 1 : 0;
ret += [RACFiveTuple packFirstSecondThirdFourthBm:21] ? 1 : 0;
ret += [RACFiveTuple isEqualBm:40] ? 1 : 0;
ret += [RACTupleUnpackingTrampoline trampolineBm:50] ? 1 : 0;
ret += [RACTupleUnpackingTrampoline setObjectForkeyedsubscriptBm:6] ? 1 : 0;
ret += [RACTuple rac_sequenceBm:43] ? 1 : 0;
ret += [RACTuple objectAtIndexedSubscriptBm:58] ? 1 : 0;
ret += [RACImmediateScheduler initBm:74] ? 1 : 0;
ret += [RACImmediateScheduler scheduleBm:92] ? 1 : 0;
ret += [RACImmediateScheduler afterScheduleBm:61] ? 1 : 0;
ret += [RACImmediateScheduler afterRepeatingeveryWithleewayScheduleBm:45] ? 1 : 0;
ret += [RACImmediateScheduler scheduleRecursiveBlockBm:16] ? 1 : 0;
ret += [RACEmptySignal setNameBm:74] ? 1 : 0;
ret += [RACEmptySignal nameBm:46] ? 1 : 0;
ret += [RACEmptySignal emptyBm:88] ? 1 : 0;
ret += [RACEmptySignal subscribeBm:59] ? 1 : 0;
ret += [RACCommand allowsConcurrentExecutionBm:72] ? 1 : 0;
ret += [RACCommand setAllowsConcurrentExecutionBm:46] ? 1 : 0;
ret += [RACCommand initBm:4] ? 1 : 0;
ret += [RACCommand initWithSignalBlockBm:99] ? 1 : 0;
ret += [RACCommand deallocBm:82] ? 1 : 0;
ret += [RACCommand initWithEnabledSignalblockBm:65] ? 1 : 0;
ret += [RACCommand executeBm:51] ? 1 : 0;
ret += [NSEnumerator rac_sequenceBm:68] ? 1 : 0;
ret += [RACIndexSetSequence sequenceWithIndexSetBm:4] ? 1 : 0;
ret += [RACIndexSetSequence sequenceWithIndexSetSequenceOffsetBm:88] ? 1 : 0;
ret += [RACIndexSetSequence headBm:25] ? 1 : 0;
ret += [RACIndexSetSequence tailBm:31] ? 1 : 0;
ret += [RACIndexSetSequence countByEnumeratingWithStateObjectsCountBm:41] ? 1 : 0;
ret += [RACIndexSetSequence descriptionBm:70] ? 1 : 0;
ret += [NSUserDefaults rac_channelTerminalForKeyBm:82] ? 1 : 0;
ret += [UITableViewCell rac_prepareForReuseSignalBm:89] ? 1 : 0;
ret += [UISwitch rac_newOnChannelBm:69] ? 1 : 0;
ret += [RACTargetQueueScheduler initWithNameTargetqueueBm:29] ? 1 : 0;
ret += [RACSignal createSignalBm:41] ? 1 : 0;
ret += [RACSignal errorBm:66] ? 1 : 0;
ret += [RACSignal neverBm:76] ? 1 : 0;
ret += [RACSignal startEagerlyWithSchedulerBlockBm:81] ? 1 : 0;
ret += [RACSignal startLazilyWithSchedulerBlockBm:12] ? 1 : 0;
ret += [RACSignal descriptionBm:7] ? 1 : 0;
ret += [RACSignal emptyBm:58] ? 1 : 0;
ret += [RACSignal returnBm:52] ? 1 : 0;
ret += [RACSignal bindBm:75] ? 1 : 0;
ret += [RACSignal concatBm:8] ? 1 : 0;
ret += [RACSignal zipWithBm:96] ? 1 : 0;
ret += [RACSignal subscribeBm:6] ? 1 : 0;
ret += [RACSignal subscribeNextBm:88] ? 1 : 0;
ret += [RACSignal subscribeNextCompletedBm:73] ? 1 : 0;
ret += [RACSignal subscribeNextErrorCompletedBm:1] ? 1 : 0;
ret += [RACSignal subscribeErrorBm:93] ? 1 : 0;
ret += [RACSignal subscribeCompletedBm:98] ? 1 : 0;
ret += [RACSignal subscribeNextErrorBm:6] ? 1 : 0;
ret += [RACSignal subscribeErrorCompletedBm:29] ? 1 : 0;
ret += [RACSignal logAllBm:21] ? 1 : 0;
ret += [RACSignal logNextBm:86] ? 1 : 0;
ret += [RACSignal logErrorBm:54] ? 1 : 0;
ret += [RACSignal logCompletedBm:48] ? 1 : 0;
ret += [RACSignal asynchronousFirstOrDefaultSuccessErrorBm:26] ? 1 : 0;
ret += [RACSignal asynchronousFirstOrDefaultSuccessErrorTimeoutBm:0] ? 1 : 0;
ret += [RACSignal asynchronouslyWaitUntilCompletedTimeoutBm:91] ? 1 : 0;
ret += [RACSignal asynchronouslyWaitUntilCompletedBm:50] ? 1 : 0;
ret += [UITableViewHeaderFooterView rac_prepareForReuseSignalBm:86] ? 1 : 0;
ret += [RACScheduler descriptionBm:44] ? 1 : 0;
ret += [RACScheduler initWithNameBm:50] ? 1 : 0;
ret += [RACScheduler immediateSchedulerBm:21] ? 1 : 0;
ret += [RACScheduler mainThreadSchedulerBm:71] ? 1 : 0;
ret += [RACScheduler schedulerWithPriorityNameBm:79] ? 1 : 0;
ret += [RACScheduler schedulerWithPriorityBm:59] ? 1 : 0;
ret += [RACScheduler schedulerBm:30] ? 1 : 0;
ret += [RACScheduler subscriptionSchedulerBm:91] ? 1 : 0;
ret += [RACScheduler isOnMainThreadBm:84] ? 1 : 0;
ret += [RACScheduler currentSchedulerBm:74] ? 1 : 0;
ret += [RACScheduler scheduleBm:56] ? 1 : 0;
ret += [RACScheduler afterScheduleBm:92] ? 1 : 0;
ret += [RACScheduler afterDelayScheduleBm:29] ? 1 : 0;
ret += [RACScheduler afterRepeatingeveryWithleewayScheduleBm:20] ? 1 : 0;
ret += [RACScheduler scheduleRecursiveBlockBm:55] ? 1 : 0;
ret += [RACScheduler scheduleRecursiveBlockAddingtodisposableBm:8] ? 1 : 0;
ret += [RACScheduler performAsCurrentSchedulerBm:84] ? 1 : 0;
ret += [NSValue rac_descriptionBm:15] ? 1 : 0;
ret += [NSString rac_descriptionBm:95] ? 1 : 0;
ret += [RACTuple rac_descriptionBm:28] ? 1 : 0;
ret += [RACStringSequence sequenceWithStringOffsetBm:86] ? 1 : 0;
ret += [RACStringSequence headBm:69] ? 1 : 0;
ret += [RACStringSequence tailBm:78] ? 1 : 0;
ret += [RACStringSequence arrayBm:77] ? 1 : 0;
ret += [RACStringSequence descriptionBm:25] ? 1 : 0;
ret += [UIStepper rac_newValueChannelWithNilValueBm:85] ? 1 : 0;
ret += [RACSubscriptionScheduler initBm:85] ? 1 : 0;
ret += [RACSubscriptionScheduler scheduleBm:87] ? 1 : 0;
ret += [RACSubscriptionScheduler afterScheduleBm:88] ? 1 : 0;
ret += [RACSubscriptionScheduler afterRepeatingeveryWithleewayScheduleBm:7] ? 1 : 0;
ret += [NSNotificationCenter rac_addObserverForNameObjectBm:96] ? 1 : 0;
ret += [NSFileHandle rac_readInBackgroundBm:62] ? 1 : 0;
ret += [RACChannel initBm:18] ? 1 : 0;
ret += [RACChannelTerminal initWithValuesOtherterminalBm:90] ? 1 : 0;
ret += [RACChannelTerminal subscribeBm:50] ? 1 : 0;
ret += [RACChannelTerminal sendNextBm:66] ? 1 : 0;
ret += [RACChannelTerminal sendErrorBm:28] ? 1 : 0;
ret += [RACChannelTerminal sendCompletedBm:83] ? 1 : 0;
ret += [RACChannelTerminal didSubscribeWithDisposableBm:59] ? 1 : 0;
ret += [RACTupleSequence sequenceWithTupleBackingArrayOffsetBm:8] ? 1 : 0;
ret += [RACTupleSequence headBm:99] ? 1 : 0;
ret += [RACTupleSequence tailBm:69] ? 1 : 0;
ret += [RACTupleSequence arrayBm:69] ? 1 : 0;
ret += [RACTupleSequence descriptionBm:5] ? 1 : 0;
ret += [MKAnnotationView rac_prepareForReuseSignalBm:95] ? 1 : 0;
ret += [RACGroupedSignal signalWithKeyBm:62] ? 1 : 0;
ret += [RACStream initBm:1] ? 1 : 0;
ret += [RACStream emptyBm:23] ? 1 : 0;
ret += [RACStream bindBm:63] ? 1 : 0;
ret += [RACStream returnBm:73] ? 1 : 0;
ret += [RACStream concatBm:27] ? 1 : 0;
ret += [RACStream zipWithBm:93] ? 1 : 0;
ret += [RACStream setNameWithFormatBm:8] ? 1 : 0;
ret += [RACStream flattenMapBm:24] ? 1 : 0;
ret += [RACStream flattenBm:51] ? 1 : 0;
ret += [RACStream mapBm:55] ? 1 : 0;
ret += [RACStream mapReplaceBm:38] ? 1 : 0;
ret += [RACStream combinePreviousWithStartReduceBm:15] ? 1 : 0;
ret += [RACStream filterBm:86] ? 1 : 0;
ret += [RACStream ignoreBm:23] ? 1 : 0;
ret += [RACStream reduceEachBm:23] ? 1 : 0;
ret += [RACStream startWithBm:78] ? 1 : 0;
ret += [RACStream skipBm:61] ? 1 : 0;
ret += [RACStream takeBm:20] ? 1 : 0;
ret += [RACStream joinBlockBm:64] ? 1 : 0;
ret += [RACStream zipBm:94] ? 1 : 0;
ret += [RACStream zipReduceBm:42] ? 1 : 0;
ret += [RACStream concatBm:88] ? 1 : 0;
ret += [RACStream scanWithStartReduceBm:20] ? 1 : 0;
ret += [RACStream scanWithStartReducewithindexBm:40] ? 1 : 0;
ret += [RACStream takeUntilBlockBm:7] ? 1 : 0;
ret += [RACStream takeWhileBlockBm:74] ? 1 : 0;
ret += [RACStream skipUntilBlockBm:2] ? 1 : 0;
ret += [RACStream skipWhileBlockBm:66] ? 1 : 0;
ret += [RACStream distinctUntilChangedBm:6] ? 1 : 0;
ret += [UITextView rac_delegateProxyBm:26] ? 1 : 0;
ret += [UITextView rac_textSignalBm:90] ? 1 : 0;
ret += [RACSignal doNextBm:48] ? 1 : 0;
ret += [RACSignal doErrorBm:92] ? 1 : 0;
ret += [RACSignal doCompletedBm:37] ? 1 : 0;
ret += [RACSignal throttleBm:69] ? 1 : 0;
ret += [RACSignal throttleValuespassingtestBm:35] ? 1 : 0;
ret += [RACSignal delayBm:59] ? 1 : 0;
ret += [RACSignal repeatBm:48] ? 1 : 0;
ret += [RACSignal catchBm:94] ? 1 : 0;
ret += [RACSignal catchToBm:90] ? 1 : 0;
ret += [RACSignal tryBm:13] ? 1 : 0;
ret += [RACSignal tryBm:95] ? 1 : 0;
ret += [RACSignal tryMapBm:21] ? 1 : 0;
ret += [RACSignal initiallyBm:5] ? 1 : 0;
ret += [RACSignal finallyBm:69] ? 1 : 0;
ret += [RACSignal bufferWithTimeOnschedulerBm:96] ? 1 : 0;
ret += [RACSignal collectBm:1] ? 1 : 0;
ret += [RACSignal takeLastBm:8] ? 1 : 0;
ret += [RACSignal combineLatestWithBm:7] ? 1 : 0;
ret += [RACSignal combineLatestBm:73] ? 1 : 0;
ret += [RACSignal combineLatestReduceBm:89] ? 1 : 0;
ret += [RACSignal mergeBm:57] ? 1 : 0;
ret += [RACSignal mergeBm:82] ? 1 : 0;
ret += [RACSignal flattenBm:24] ? 1 : 0;
ret += [RACSignal thenBm:92] ? 1 : 0;
ret += [RACSignal concatBm:51] ? 1 : 0;
ret += [RACSignal aggregateWithStartFactoryReduceBm:39] ? 1 : 0;
ret += [RACSignal aggregateWithStartReduceBm:13] ? 1 : 0;
ret += [RACSignal aggregateWithStartReducewithindexBm:28] ? 1 : 0;
ret += [RACSignal setKeyPathOnobjectBm:80] ? 1 : 0;
ret += [RACSignal setKeyPathOnobjectNilvalueBm:96] ? 1 : 0;
ret += [RACSignal intervalOnschedulerBm:24] ? 1 : 0;
ret += [RACSignal intervalOnschedulerWithleewayBm:39] ? 1 : 0;
ret += [RACSignal takeUntilBm:23] ? 1 : 0;
ret += [RACSignal takeUntilReplacementBm:27] ? 1 : 0;
ret += [RACSignal switchToLatestBm:38] ? 1 : 0;
ret += [RACSignal switchCasesDefaultBm:43] ? 1 : 0;
ret += [RACSignal ifThenElseBm:92] ? 1 : 0;
ret += [RACSignal firstBm:32] ? 1 : 0;
ret += [RACSignal firstOrDefaultBm:19] ? 1 : 0;
ret += [RACSignal firstOrDefaultSuccessErrorBm:33] ? 1 : 0;
ret += [RACSignal waitUntilCompletedBm:20] ? 1 : 0;
ret += [RACSignal deferBm:88] ? 1 : 0;
ret += [RACSignal toArrayBm:75] ? 1 : 0;
ret += [RACSignal sequenceBm:31] ? 1 : 0;
ret += [RACSignal publishBm:15] ? 1 : 0;
ret += [RACSignal multicastBm:93] ? 1 : 0;
ret += [RACSignal replayBm:16] ? 1 : 0;
ret += [RACSignal replayLastBm:50] ? 1 : 0;
ret += [RACSignal replayLazilyBm:74] ? 1 : 0;
ret += [RACSignal timeoutOnschedulerBm:90] ? 1 : 0;
ret += [RACSignal deliverOnBm:94] ? 1 : 0;
ret += [RACSignal subscribeOnBm:0] ? 1 : 0;
ret += [RACSignal deliverOnMainThreadBm:35] ? 1 : 0;
ret += [RACSignal groupByTransformBm:68] ? 1 : 0;
ret += [RACSignal groupByBm:64] ? 1 : 0;
ret += [RACSignal anyBm:79] ? 1 : 0;
ret += [RACSignal anyBm:19] ? 1 : 0;
ret += [RACSignal allBm:70] ? 1 : 0;
ret += [RACSignal retryBm:79] ? 1 : 0;
ret += [RACSignal retryBm:56] ? 1 : 0;
ret += [RACSignal sampleBm:10] ? 1 : 0;
ret += [RACSignal ignoreValuesBm:9] ? 1 : 0;
ret += [RACSignal materializeBm:84] ? 1 : 0;
ret += [RACSignal dematerializeBm:57] ? 1 : 0;
ret += [RACSignal notBm:36] ? 1 : 0;
ret += [RACSignal andBm:59] ? 1 : 0;
ret += [RACSignal orBm:13] ? 1 : 0;
ret += [RACSignal reduceApplyBm:54] ? 1 : 0;
ret += [RACErrorSignal errorBm:99] ? 1 : 0;
ret += [RACErrorSignal subscribeBm:31] ? 1 : 0;
ret += [RACArraySequence sequenceWithArrayOffsetBm:91] ? 1 : 0;
ret += [RACArraySequence headBm:37] ? 1 : 0;
ret += [RACArraySequence tailBm:75] ? 1 : 0;
ret += [RACArraySequence countByEnumeratingWithStateObjectsCountBm:53] ? 1 : 0;
ret += [RACArraySequence arrayBm:70] ? 1 : 0;
ret += [RACArraySequence initWithCoderBm:99] ? 1 : 0;
ret += [RACArraySequence encodeWithCoderBm:91] ? 1 : 0;
ret += [RACArraySequence descriptionBm:36] ? 1 : 0;
ret += [RACBlockTrampoline initWithBlockBm:78] ? 1 : 0;
ret += [RACBlockTrampoline invokeBlockWithargumentsBm:74] ? 1 : 0;
ret += [RACBlockTrampoline invokeWithArgumentsBm:59] ? 1 : 0;
ret += [RACBlockTrampoline selectorForArgumentCountBm:31] ? 1 : 0;
ret += [RACBlockTrampoline performWithBm:0] ? 1 : 0;
ret += [RACBlockTrampoline performWithObj1Bm:95] ? 1 : 0;
ret += [RACBlockTrampoline performWithObj1Obj2Bm:40] ? 1 : 0;
ret += [RACBlockTrampoline performWithObj1Obj2Obj3Bm:28] ? 1 : 0;
ret += [RACBlockTrampoline performWithObj1Obj2Obj3Obj4Bm:96] ? 1 : 0;
ret += [RACBlockTrampoline performWithObj1Obj2Obj3Obj4Obj5Bm:2] ? 1 : 0;
ret += [RACBlockTrampoline performWithObj1Obj2Obj3Obj4Obj5Obj6Bm:1] ? 1 : 0;
ret += [RACBlockTrampoline performWithObj1Obj2Obj3Obj4Obj5Obj6Obj7Bm:47] ? 1 : 0;
ret += [RACBlockTrampoline performWithObj1Obj2Obj3Obj4Obj5Obj6Obj7Obj8Bm:46] ? 1 : 0;
ret += [RACBlockTrampoline performWithObj1Obj2Obj3Obj4Obj5Obj6Obj7Obj8Obj9Bm:40] ? 1 : 0;
ret += [RACBlockTrampoline performWithObj1Obj2Obj3Obj4Obj5Obj6Obj7Obj8Obj9Obj10Bm:80] ? 1 : 0;
ret += [RACBlockTrampoline performWithObj1Obj2Obj3Obj4Obj5Obj6Obj7Obj8Obj9Obj10Obj11Bm:84] ? 1 : 0;
ret += [RACBlockTrampoline performWithObj1Obj2Obj3Obj4Obj5Obj6Obj7Obj8Obj9Obj10Obj11Obj12Bm:2] ? 1 : 0;
ret += [RACBlockTrampoline performWithObj1Obj2Obj3Obj4Obj5Obj6Obj7Obj8Obj9Obj10Obj11Obj12Obj13Bm:67] ? 1 : 0;
ret += [RACBlockTrampoline performWithObj1Obj2Obj3Obj4Obj5Obj6Obj7Obj8Obj9Obj10Obj11Obj12Obj13Obj14Bm:71] ? 1 : 0;
ret += [NSObject rac_willDeallocSignalBm:73] ? 1 : 0;
ret += [NSObject rac_deallocDisposableBm:19] ? 1 : 0;
ret += [UIControl rac_channelForControlEventsKeyNilvalueBm:9] ? 1 : 0;
ret += [RACReplaySubject replaySubjectWithCapacityBm:51] ? 1 : 0;
ret += [RACReplaySubject initBm:81] ? 1 : 0;
ret += [RACReplaySubject initWithCapacityBm:69] ? 1 : 0;
ret += [RACReplaySubject subscribeBm:28] ? 1 : 0;
ret += [RACReplaySubject sendNextBm:68] ? 1 : 0;
ret += [RACReplaySubject sendCompletedBm:62] ? 1 : 0;
ret += [RACReplaySubject sendErrorBm:51] ? 1 : 0;
ret += [UIImagePickerController rac_delegateProxyBm:10] ? 1 : 0;
ret += [UIImagePickerController rac_imageSelectedSignalBm:38] ? 1 : 0;
ret += [NSOrderedSet rac_sequenceBm:95] ? 1 : 0;
ret += [NSURLConnection rac_sendAsynchronousRequestBm:76] ? 1 : 0;
ret += [RACKVOTrampoline initWithTargetObserverKeypathOptionsBlockBm:88] ? 1 : 0;
ret += [RACKVOTrampoline deallocBm:58] ? 1 : 0;
ret += [RACKVOTrampoline disposeBm:18] ? 1 : 0;
ret += [RACKVOTrampoline observeValueForKeyPathOfobjectChangeContextBm:93] ? 1 : 0;
ret += [RACSubscriptingAssignmentTrampoline initWithTargetNilvalueBm:31] ? 1 : 0;
ret += [RACSubscriptingAssignmentTrampoline setObjectForkeyedsubscriptBm:33] ? 1 : 0;
ret += [NSString rac_readContentsOfURLUsedencodingSchedulerBm:5] ? 1 : 0;
ret += [RACSequence sequenceWithHeadBlockTailblockBm:72] ? 1 : 0;
ret += [RACSequence headBm:40] ? 1 : 0;
ret += [RACSequence tailBm:37] ? 1 : 0;
ret += [RACSequence emptyBm:52] ? 1 : 0;
ret += [RACSequence returnBm:35] ? 1 : 0;
ret += [RACSequence bindBm:19] ? 1 : 0;
ret += [RACSequence bindPassingthroughvaluesfromsequenceBm:44] ? 1 : 0;
ret += [RACSequence concatBm:23] ? 1 : 0;
ret += [RACSequence zipWithBm:74] ? 1 : 0;
ret += [RACSequence arrayBm:77] ? 1 : 0;
ret += [RACSequence objectEnumeratorBm:17] ? 1 : 0;
ret += [RACSequence signalBm:31] ? 1 : 0;
ret += [RACSequence signalWithSchedulerBm:75] ? 1 : 0;
ret += [RACSequence foldLeftWithStartReduceBm:36] ? 1 : 0;
ret += [RACSequence foldRightWithStartReduceBm:72] ? 1 : 0;
ret += [RACSequence anyBm:87] ? 1 : 0;
ret += [RACSequence allBm:44] ? 1 : 0;
ret += [RACSequence objectPassingTestBm:78] ? 1 : 0;
ret += [RACSequence eagerSequenceBm:54] ? 1 : 0;
ret += [RACSequence lazySequenceBm:13] ? 1 : 0;
ret += [RACSequence copyWithZoneBm:51] ? 1 : 0;
ret += [RACSequence classForCoderBm:98] ? 1 : 0;
ret += [RACSequence initWithCoderBm:79] ? 1 : 0;
ret += [RACSequence encodeWithCoderBm:37] ? 1 : 0;
ret += [RACSequence countByEnumeratingWithStateObjectsCountBm:41] ? 1 : 0;
ret += [RACSequence hashBm:2] ? 1 : 0;
ret += [RACSequence isEqualBm:55] ? 1 : 0;
ret += [RACDynamicSequence sequenceWithHeadBlockTailblockBm:28] ? 1 : 0;
ret += [RACDynamicSequence sequenceWithLazyDependencyHeadblockTailblockBm:4] ? 1 : 0;
ret += [RACDynamicSequence deallocBm:17] ? 1 : 0;
ret += [RACDynamicSequence headBm:63] ? 1 : 0;
ret += [RACDynamicSequence tailBm:68] ? 1 : 0;
ret += [RACDynamicSequence descriptionBm:1] ? 1 : 0;
ret += [RACEmptySequence emptyBm:38] ? 1 : 0;
ret += [RACEmptySequence headBm:30] ? 1 : 0;
ret += [RACEmptySequence tailBm:73] ? 1 : 0;
ret += [RACEmptySequence bindPassingthroughvaluesfromsequenceBm:93] ? 1 : 0;
ret += [RACEmptySequence classForCoderBm:54] ? 1 : 0;
ret += [RACEmptySequence initWithCoderBm:29] ? 1 : 0;
ret += [RACEmptySequence encodeWithCoderBm:39] ? 1 : 0;
ret += [RACEmptySequence descriptionBm:81] ? 1 : 0;
ret += [RACEmptySequence hashBm:36] ? 1 : 0;
ret += [RACEmptySequence isEqualBm:55] ? 1 : 0;
ret += [RACUnarySequence returnBm:77] ? 1 : 0;
ret += [RACUnarySequence tailBm:97] ? 1 : 0;
ret += [RACUnarySequence bindBm:24] ? 1 : 0;
ret += [RACUnarySequence classForCoderBm:97] ? 1 : 0;
ret += [RACUnarySequence initWithCoderBm:24] ? 1 : 0;
ret += [RACUnarySequence encodeWithCoderBm:17] ? 1 : 0;
ret += [RACUnarySequence descriptionBm:45] ? 1 : 0;
ret += [RACUnarySequence hashBm:19] ? 1 : 0;
ret += [RACUnarySequence isEqualBm:4] ? 1 : 0;
ret += [RACSignalSequence sequenceWithSignalBm:78] ? 1 : 0;
ret += [RACSignalSequence headBm:0] ? 1 : 0;
ret += [RACSignalSequence tailBm:96] ? 1 : 0;
ret += [RACSignalSequence arrayBm:33] ? 1 : 0;
ret += [RACSignalSequence descriptionBm:58] ? 1 : 0;
ret += [UIDatePicker rac_newDateChannelWithNilValueBm:93] ? 1 : 0;
ret += [RACEvent isFinishedBm:88] ? 1 : 0;
ret += [RACEvent errorBm:51] ? 1 : 0;
ret += [RACEvent valueBm:9] ? 1 : 0;
ret += [RACEvent completedEventBm:21] ? 1 : 0;
ret += [RACEvent eventWithErrorBm:8] ? 1 : 0;
ret += [RACEvent eventWithValueBm:7] ? 1 : 0;
ret += [RACEvent initWithEventTypeObjectBm:61] ? 1 : 0;
ret += [RACEvent copyWithZoneBm:56] ? 1 : 0;
ret += [RACEvent descriptionBm:32] ? 1 : 0;
ret += [RACEvent hashBm:94] ? 1 : 0;
ret += [RACEvent isEqualBm:64] ? 1 : 0;
ret += [UICollectionReusableView rac_prepareForReuseSignalBm:64] ? 1 : 0;
ret += [UIBarButtonItem rac_commandBm:51] ? 1 : 0;
ret += [UIBarButtonItem setRac_commandBm:32] ? 1 : 0;
ret += [UIBarButtonItem rac_hijackActionAndTargetIfNeededBm:12] ? 1 : 0;
ret += [UIBarButtonItem rac_commandPerformActionBm:96] ? 1 : 0;
ret += [NSData rac_readContentsOfURLOptionsSchedulerBm:36] ? 1 : 0;
ret += [RACMulticastConnection initWithSourceSignalSubjectBm:33] ? 1 : 0;
ret += [RACMulticastConnection connectBm:19] ? 1 : 0;
ret += [RACMulticastConnection autoconnectBm:0] ? 1 : 0;
ret += [RACBehaviorSubject behaviorSubjectWithDefaultValueBm:33] ? 1 : 0;
ret += [RACBehaviorSubject subscribeBm:4] ? 1 : 0;
ret += [RACBehaviorSubject sendNextBm:58] ? 1 : 0;
ret += [NSObject rac_valuesForKeyPathObserverBm:25] ? 1 : 0;
ret += [NSObject rac_valuesAndChangesForKeyPathOptionsObserverBm:98] ? 1 : 0;
ret += [RACKVOChannel currentThreadDataBm:83] ? 1 : 0;
ret += [RACKVOChannel initWithTargetKeypathNilvalueBm:70] ? 1 : 0;
ret += [RACKVOChannel createCurrentThreadDataBm:19] ? 1 : 0;
ret += [RACKVOChannel destroyCurrentThreadDataBm:12] ? 1 : 0;
ret += [RACKVOChannel objectForKeyedSubscriptBm:82] ? 1 : 0;
ret += [RACKVOChannel setObjectForkeyedsubscriptBm:73] ? 1 : 0;
ret += [MASCompositeConstraint initWithChildrenBm:85] ? 1 : 0;
ret += [MASCompositeConstraint constraintShouldbereplacedwithconstraintBm:83] ? 1 : 0;
ret += [MASCompositeConstraint constraintAddconstraintwithlayoutattributeBm:64] ? 1 : 0;
ret += [MASCompositeConstraint (CGFloat))multipliedByBm:13] ? 1 : 0;
ret += [MASCompositeConstraint (CGFloat))dividedByBm:65] ? 1 : 0;
ret += [MASCompositeConstraint (MASLayoutPriority))priorityBm:59] ? 1 : 0;
ret += [MASCompositeConstraint (id, NSLayoutRelation))equalToWithRelationBm:7] ? 1 : 0;
ret += [MASCompositeConstraint addConstraintWithLayoutAttributeBm:82] ? 1 : 0;
ret += [MASCompositeConstraint animatorBm:54] ? 1 : 0;
ret += [MASCompositeConstraint (id))keyBm:23] ? 1 : 0;
ret += [MASCompositeConstraint setInsetsBm:38] ? 1 : 0;
ret += [MASCompositeConstraint setInsetBm:30] ? 1 : 0;
ret += [MASCompositeConstraint setOffsetBm:98] ? 1 : 0;
ret += [MASCompositeConstraint setSizeOffsetBm:73] ? 1 : 0;
ret += [MASCompositeConstraint setCenterOffsetBm:80] ? 1 : 0;
ret += [MASCompositeConstraint activateBm:49] ? 1 : 0;
ret += [MASCompositeConstraint deactivateBm:62] ? 1 : 0;
ret += [MASCompositeConstraint installBm:78] ? 1 : 0;
ret += [MASCompositeConstraint uninstallBm:63] ? 1 : 0;
ret += [MASConstraintMaker initWithViewBm:17] ? 1 : 0;
ret += [MASConstraintMaker installBm:83] ? 1 : 0;
ret += [MASConstraintMaker constraintShouldbereplacedwithconstraintBm:78] ? 1 : 0;
ret += [MASConstraintMaker constraintAddconstraintwithlayoutattributeBm:45] ? 1 : 0;
ret += [MASConstraintMaker addConstraintWithAttributesBm:6] ? 1 : 0;
ret += [MASConstraintMaker addConstraintWithLayoutAttributeBm:51] ? 1 : 0;
ret += [MASConstraintMaker leftBm:12] ? 1 : 0;
ret += [MASConstraintMaker topBm:92] ? 1 : 0;
ret += [MASConstraintMaker rightBm:30] ? 1 : 0;
ret += [MASConstraintMaker bottomBm:44] ? 1 : 0;
ret += [MASConstraintMaker leadingBm:98] ? 1 : 0;
ret += [MASConstraintMaker trailingBm:58] ? 1 : 0;
ret += [MASConstraintMaker widthBm:33] ? 1 : 0;
ret += [MASConstraintMaker heightBm:88] ? 1 : 0;
ret += [MASConstraintMaker centerXBm:95] ? 1 : 0;
ret += [MASConstraintMaker centerYBm:11] ? 1 : 0;
ret += [MASConstraintMaker baselineBm:17] ? 1 : 0;
ret += [MASConstraintMaker (MASAttribute))attributesBm:3] ? 1 : 0;
ret += [MASConstraintMaker firstBaselineBm:41] ? 1 : 0;
ret += [MASConstraintMaker lastBaselineBm:27] ? 1 : 0;
ret += [MASConstraintMaker leftMarginBm:68] ? 1 : 0;
ret += [MASConstraintMaker rightMarginBm:55] ? 1 : 0;
ret += [MASConstraintMaker topMarginBm:0] ? 1 : 0;
ret += [MASConstraintMaker bottomMarginBm:90] ? 1 : 0;
ret += [MASConstraintMaker leadingMarginBm:63] ? 1 : 0;
ret += [MASConstraintMaker trailingMarginBm:47] ? 1 : 0;
ret += [MASConstraintMaker centerXWithinMarginsBm:25] ? 1 : 0;
ret += [MASConstraintMaker centerYWithinMarginsBm:55] ? 1 : 0;
ret += [MASConstraintMaker edgesBm:92] ? 1 : 0;
ret += [MASConstraintMaker sizeBm:12] ? 1 : 0;
ret += [MASConstraintMaker centerBm:46] ? 1 : 0;
ret += [MASConstraintMaker (dispatch_block_t group))groupBm:3] ? 1 : 0;
ret += [MAS_VIEW mas_makeConstraintsBm:34] ? 1 : 0;
ret += [MAS_VIEW mas_updateConstraintsBm:95] ? 1 : 0;
ret += [MAS_VIEW mas_remakeConstraintsBm:14] ? 1 : 0;
ret += [MAS_VIEW mas_leftBm:62] ? 1 : 0;
ret += [MAS_VIEW mas_topBm:27] ? 1 : 0;
ret += [MAS_VIEW mas_rightBm:89] ? 1 : 0;
ret += [MAS_VIEW mas_bottomBm:41] ? 1 : 0;
ret += [MAS_VIEW mas_leadingBm:55] ? 1 : 0;
ret += [MAS_VIEW mas_trailingBm:80] ? 1 : 0;
ret += [MAS_VIEW mas_widthBm:91] ? 1 : 0;
ret += [MAS_VIEW mas_heightBm:75] ? 1 : 0;
ret += [MAS_VIEW mas_centerXBm:14] ? 1 : 0;
ret += [MAS_VIEW mas_centerYBm:59] ? 1 : 0;
ret += [MAS_VIEW mas_baselineBm:99] ? 1 : 0;
ret += [MAS_VIEW (NSLayoutAttribute))mas_attributeBm:87] ? 1 : 0;
ret += [MAS_VIEW mas_firstBaselineBm:52] ? 1 : 0;
ret += [MAS_VIEW mas_lastBaselineBm:45] ? 1 : 0;
ret += [MAS_VIEW mas_leftMarginBm:90] ? 1 : 0;
ret += [MAS_VIEW mas_rightMarginBm:96] ? 1 : 0;
ret += [MAS_VIEW mas_topMarginBm:7] ? 1 : 0;
ret += [MAS_VIEW mas_bottomMarginBm:84] ? 1 : 0;
ret += [MAS_VIEW mas_leadingMarginBm:53] ? 1 : 0;
ret += [MAS_VIEW mas_trailingMarginBm:31] ? 1 : 0;
ret += [MAS_VIEW mas_centerXWithinMarginsBm:21] ? 1 : 0;
ret += [MAS_VIEW mas_centerYWithinMarginsBm:45] ? 1 : 0;
ret += [MAS_VIEW mas_safeAreaLayoutGuideBm:23] ? 1 : 0;
ret += [MAS_VIEW mas_safeAreaLayoutGuideTopBm:46] ? 1 : 0;
ret += [MAS_VIEW mas_safeAreaLayoutGuideBottomBm:7] ? 1 : 0;
ret += [MAS_VIEW mas_safeAreaLayoutGuideLeftBm:76] ? 1 : 0;
ret += [MAS_VIEW mas_safeAreaLayoutGuideRightBm:26] ? 1 : 0;
ret += [MAS_VIEW mas_keyBm:97] ? 1 : 0;
ret += [MAS_VIEW setMas_keyBm:20] ? 1 : 0;
ret += [MAS_VIEW mas_closestCommonSuperviewBm:99] ? 1 : 0;
ret += [NSArray mas_makeConstraintsBm:96] ? 1 : 0;
ret += [NSArray mas_updateConstraintsBm:56] ? 1 : 0;
ret += [NSArray mas_remakeConstraintsBm:56] ? 1 : 0;
ret += [NSArray mas_distributeViewsAlongAxisWithfixedspacingLeadspacingTailspacingBm:24] ? 1 : 0;
ret += [NSArray mas_distributeViewsAlongAxisWithfixeditemlengthLeadspacingTailspacingBm:51] ? 1 : 0;
ret += [NSArray mas_commonSuperviewOfViewsBm:20] ? 1 : 0;
ret += [MASViewAttribute initWithViewLayoutattributeBm:98] ? 1 : 0;
ret += [MASViewAttribute initWithViewItemLayoutattributeBm:39] ? 1 : 0;
ret += [MASViewAttribute isSizeAttributeBm:19] ? 1 : 0;
ret += [MASViewAttribute isEqualBm:69] ? 1 : 0;
ret += [MASViewAttribute hashBm:28] ? 1 : 0;
ret += [MASViewConstraint initWithFirstViewAttributeBm:32] ? 1 : 0;
ret += [MASViewConstraint copyWithZoneBm:56] ? 1 : 0;
ret += [MASViewConstraint installedConstraintsForViewBm:99] ? 1 : 0;
ret += [MASViewConstraint setLayoutConstantBm:29] ? 1 : 0;
ret += [MASViewConstraint setLayoutRelationBm:9] ? 1 : 0;
ret += [MASViewConstraint supportsActivePropertyBm:87] ? 1 : 0;
ret += [MASViewConstraint isActiveBm:11] ? 1 : 0;
ret += [MASViewConstraint hasBeenInstalledBm:45] ? 1 : 0;
ret += [MASViewConstraint setSecondViewAttributeBm:21] ? 1 : 0;
ret += [MASViewConstraint (CGFloat))multipliedByBm:43] ? 1 : 0;
ret += [MASViewConstraint (CGFloat))dividedByBm:52] ? 1 : 0;
ret += [MASViewConstraint (MASLayoutPriority))priorityBm:74] ? 1 : 0;
ret += [MASViewConstraint (id, NSLayoutRelation))equalToWithRelationBm:50] ? 1 : 0;
ret += [MASViewConstraint withBm:39] ? 1 : 0;
ret += [MASViewConstraint andBm:67] ? 1 : 0;
ret += [MASViewConstraint addConstraintWithLayoutAttributeBm:47] ? 1 : 0;
ret += [MASViewConstraint animatorBm:42] ? 1 : 0;
ret += [MASViewConstraint (id))keyBm:75] ? 1 : 0;
ret += [MASViewConstraint setInsetsBm:33] ? 1 : 0;
ret += [MASViewConstraint setInsetBm:24] ? 1 : 0;
ret += [MASViewConstraint setOffsetBm:80] ? 1 : 0;
ret += [MASViewConstraint setSizeOffsetBm:6] ? 1 : 0;
ret += [MASViewConstraint setCenterOffsetBm:13] ? 1 : 0;
ret += [MASViewConstraint activateBm:80] ? 1 : 0;
ret += [MASViewConstraint deactivateBm:79] ? 1 : 0;
ret += [MASViewConstraint installBm:58] ? 1 : 0;
ret += [MASViewConstraint layoutConstraintSimilarToBm:67] ? 1 : 0;
ret += [MASViewConstraint uninstallBm:75] ? 1 : 0;
ret += [MAS_VIEW mas_installedConstraintsBm:95] ? 1 : 0;
ret += [MASConstraint initBm:55] ? 1 : 0;
ret += [MASConstraint (id))equalToBm:54] ? 1 : 0;
ret += [MASConstraint (id))mas_equalToBm:19] ? 1 : 0;
ret += [MASConstraint (id))greaterThanOrEqualToBm:39] ? 1 : 0;
ret += [MASConstraint (id))mas_greaterThanOrEqualToBm:55] ? 1 : 0;
ret += [MASConstraint (id))lessThanOrEqualToBm:55] ? 1 : 0;
ret += [MASConstraint (id))mas_lessThanOrEqualToBm:59] ? 1 : 0;
ret += [MASConstraint (void))priorityLowBm:21] ? 1 : 0;
ret += [MASConstraint (void))priorityMediumBm:46] ? 1 : 0;
ret += [MASConstraint (void))priorityHighBm:1] ? 1 : 0;
ret += [MASConstraint (MASEdgeInsets))insetsBm:13] ? 1 : 0;
ret += [MASConstraint (CGFloat))insetBm:35] ? 1 : 0;
ret += [MASConstraint (CGSize))sizeOffsetBm:54] ? 1 : 0;
ret += [MASConstraint (CGPoint))centerOffsetBm:63] ? 1 : 0;
ret += [MASConstraint (CGFloat))offsetBm:36] ? 1 : 0;
ret += [MASConstraint (NSValue *value))valueOffsetBm:7] ? 1 : 0;
ret += [MASConstraint (id offset))mas_offsetBm:36] ? 1 : 0;
ret += [MASConstraint setLayoutConstantWithValueBm:69] ? 1 : 0;
ret += [MASConstraint withBm:37] ? 1 : 0;
ret += [MASConstraint andBm:97] ? 1 : 0;
ret += [MASConstraint addConstraintWithLayoutAttributeBm:64] ? 1 : 0;
ret += [MASConstraint leftBm:74] ? 1 : 0;
ret += [MASConstraint topBm:46] ? 1 : 0;
ret += [MASConstraint rightBm:93] ? 1 : 0;
ret += [MASConstraint bottomBm:13] ? 1 : 0;
ret += [MASConstraint leadingBm:29] ? 1 : 0;
ret += [MASConstraint trailingBm:44] ? 1 : 0;
ret += [MASConstraint widthBm:5] ? 1 : 0;
ret += [MASConstraint heightBm:27] ? 1 : 0;
ret += [MASConstraint centerXBm:52] ? 1 : 0;
ret += [MASConstraint centerYBm:99] ? 1 : 0;
ret += [MASConstraint baselineBm:92] ? 1 : 0;
ret += [MASConstraint firstBaselineBm:79] ? 1 : 0;
ret += [MASConstraint lastBaselineBm:10] ? 1 : 0;
ret += [MASConstraint leftMarginBm:56] ? 1 : 0;
ret += [MASConstraint rightMarginBm:35] ? 1 : 0;
ret += [MASConstraint topMarginBm:79] ? 1 : 0;
ret += [MASConstraint bottomMarginBm:82] ? 1 : 0;
ret += [MASConstraint leadingMarginBm:20] ? 1 : 0;
ret += [MASConstraint trailingMarginBm:32] ? 1 : 0;
ret += [MASConstraint centerXWithinMarginsBm:83] ? 1 : 0;
ret += [MASConstraint centerYWithinMarginsBm:80] ? 1 : 0;
ret += [MASConstraint (CGFloat multiplier))multipliedByBm:68] ? 1 : 0;
ret += [MASConstraint (CGFloat divider))dividedByBm:68] ? 1 : 0;
ret += [MASConstraint (MASLayoutPriority priority))priorityBm:64] ? 1 : 0;
ret += [MASConstraint (id, NSLayoutRelation))equalToWithRelationBm:28] ? 1 : 0;
ret += [MASConstraint (id key))keyBm:23] ? 1 : 0;
ret += [MASConstraint setInsetsBm:76] ? 1 : 0;
ret += [MASConstraint setInsetBm:57] ? 1 : 0;
ret += [MASConstraint setSizeOffsetBm:26] ? 1 : 0;
ret += [MASConstraint setCenterOffsetBm:91] ? 1 : 0;
ret += [MASConstraint setOffsetBm:17] ? 1 : 0;
ret += [MASConstraint animatorBm:15] ? 1 : 0;
ret += [MASConstraint activateBm:29] ? 1 : 0;
ret += [MASConstraint deactivateBm:79] ? 1 : 0;
ret += [MASConstraint installBm:61] ? 1 : 0;
ret += [MASConstraint uninstallBm:13] ? 1 : 0;
ret += [NSLayoutConstraint layoutRelationDescriptionsByValueBm:55] ? 1 : 0;
ret += [NSLayoutConstraint layoutAttributeDescriptionsByValueBm:4] ? 1 : 0;
ret += [NSLayoutConstraint layoutPriorityDescriptionsByValueBm:94] ? 1 : 0;
ret += [NSLayoutConstraint descriptionForObjectBm:15] ? 1 : 0;
ret += [NSLayoutConstraint descriptionBm:9] ? 1 : 0;
ret += [MAS_VIEW_CONTROLLER mas_topLayoutGuideBm:19] ? 1 : 0;
ret += [MAS_VIEW_CONTROLLER mas_topLayoutGuideTopBm:5] ? 1 : 0;
ret += [MAS_VIEW_CONTROLLER mas_topLayoutGuideBottomBm:65] ? 1 : 0;
ret += [MAS_VIEW_CONTROLLER mas_bottomLayoutGuideBm:67] ? 1 : 0;
ret += [MAS_VIEW_CONTROLLER mas_bottomLayoutGuideTopBm:25] ? 1 : 0;
ret += [MAS_VIEW_CONTROLLER mas_bottomLayoutGuideBottomBm:56] ? 1 : 0;
ret += [TOActivityCroppedImageProvider initWithImageCropframeAngleCircularBm:18] ? 1 : 0;
ret += [TOActivityCroppedImageProvider activityViewControllerPlaceholderItemBm:23] ? 1 : 0;
ret += [TOActivityCroppedImageProvider activityViewControllerItemforactivitytypeBm:79] ? 1 : 0;
ret += [TOActivityCroppedImageProvider itemBm:28] ? 1 : 0;
ret += [TOCropViewControllerTransitioning transitionDurationBm:73] ? 1 : 0;
ret += [TOCropViewControllerTransitioning animateTransitionBm:95] ? 1 : 0;
ret += [TOCropViewControllerTransitioning resetBm:30] ? 1 : 0;
ret += [TOCroppedImageAttributes initWithCroppedFrameAngleOriginalimagesizeBm:95] ? 1 : 0;
ret += [TOCropView initWithImageBm:92] ? 1 : 0;
ret += [TOCropView initWithCroppingStyleImageBm:10] ? 1 : 0;
ret += [TOCropView setupBm:8] ? 1 : 0;
ret += [TOCropView performInitialSetupBm:95] ? 1 : 0;
ret += [TOCropView layoutInitialImageBm:9] ? 1 : 0;
ret += [TOCropView prepareforRotationBm:21] ? 1 : 0;
ret += [TOCropView performRelayoutForRotationBm:42] ? 1 : 0;
ret += [TOCropView matchForegroundToBackgroundBm:20] ? 1 : 0;
ret += [TOCropView updateCropBoxFrameWithGesturePointBm:20] ? 1 : 0;
ret += [TOCropView resetLayoutToDefaultAnimatedBm:18] ? 1 : 0;
ret += [TOCropView toggleTranslucencyViewVisibleBm:90] ? 1 : 0;
ret += [TOCropView updateToImageCropFrameBm:39] ? 1 : 0;
ret += [TOCropView gridPanGestureRecognizedBm:90] ? 1 : 0;
ret += [TOCropView longPressGestureRecognizedBm:26] ? 1 : 0;
ret += [TOCropView gestureRecognizerShouldBeginBm:78] ? 1 : 0;
ret += [TOCropView gestureRecognizerShouldreceivetouchBm:82] ? 1 : 0;
ret += [TOCropView startResetTimerBm:68] ? 1 : 0;
ret += [TOCropView timerTriggeredBm:8] ? 1 : 0;
ret += [TOCropView cancelResetTimerBm:46] ? 1 : 0;
ret += [TOCropView cropEdgeForPointBm:51] ? 1 : 0;
ret += [TOCropView viewForZoomingInScrollViewBm:73] ? 1 : 0;
ret += [TOCropView scrollViewDidScrollBm:8] ? 1 : 0;
ret += [TOCropView scrollViewWillBeginDraggingBm:98] ? 1 : 0;
ret += [TOCropView scrollViewWillBeginZoomingWithviewBm:15] ? 1 : 0;
ret += [TOCropView scrollViewDidEndDeceleratingBm:8] ? 1 : 0;
ret += [TOCropView scrollViewDidEndZoomingWithviewAtscaleBm:79] ? 1 : 0;
ret += [TOCropView scrollViewDidZoomBm:57] ? 1 : 0;
ret += [TOCropView scrollViewDidEndDraggingWilldecelerateBm:39] ? 1 : 0;
ret += [TOCropView setCropBoxResizeEnabledBm:97] ? 1 : 0;
ret += [TOCropView setCropBoxFrameBm:78] ? 1 : 0;
ret += [TOCropView setEditingBm:68] ? 1 : 0;
ret += [TOCropView setSimpleRenderModeBm:75] ? 1 : 0;
ret += [TOCropView cropBoxAspectRatioIsPortraitBm:95] ? 1 : 0;
ret += [TOCropView imageCropFrameBm:53] ? 1 : 0;
ret += [TOCropView setImageCropFrameBm:80] ? 1 : 0;
ret += [TOCropView setCroppingViewsHiddenBm:8] ? 1 : 0;
ret += [TOCropView setCroppingViewsHiddenAnimatedBm:88] ? 1 : 0;
ret += [TOCropView setBackgroundImageViewHiddenAnimatedBm:2] ? 1 : 0;
ret += [TOCropView setGridOverlayHiddenBm:84] ? 1 : 0;
ret += [TOCropView setGridOverlayHiddenAnimatedBm:31] ? 1 : 0;
ret += [TOCropView imageViewFrameBm:47] ? 1 : 0;
ret += [TOCropView setCanBeResetBm:31] ? 1 : 0;
ret += [TOCropView setAngleBm:45] ? 1 : 0;
ret += [TOCropView startEditingBm:8] ? 1 : 0;
ret += [TOCropView setEditingResetcropboxAnimatedBm:20] ? 1 : 0;
ret += [TOCropView moveCroppedContentToCenterAnimatedBm:19] ? 1 : 0;
ret += [TOCropView setSimpleRenderModeAnimatedBm:86] ? 1 : 0;
ret += [TOCropView setAspectRatioBm:85] ? 1 : 0;
ret += [TOCropView setAspectRatioAnimatedBm:69] ? 1 : 0;
ret += [TOCropView rotateImageNinetyDegreesAnimatedBm:94] ? 1 : 0;
ret += [TOCropView rotateImageNinetyDegreesAnimatedClockwiseBm:92] ? 1 : 0;
ret += [TOCropView captureStateForImageRotationBm:56] ? 1 : 0;
ret += [TOCropView checkForCanResetBm:42] ? 1 : 0;
ret += [TOCropView contentBoundsBm:63] ? 1 : 0;
ret += [TOCropView imageSizeBm:2] ? 1 : 0;
ret += [TOCropView hasAspectRatioBm:6] ? 1 : 0;
ret += [TOCropOverlayView initWithFrameBm:75] ? 1 : 0;
ret += [TOCropOverlayView setupBm:47] ? 1 : 0;
ret += [TOCropOverlayView setFrameBm:15] ? 1 : 0;
ret += [TOCropOverlayView didMoveToSuperviewBm:9] ? 1 : 0;
ret += [TOCropOverlayView layoutLinesBm:30] ? 1 : 0;
ret += [TOCropOverlayView setGridHiddenAnimatedBm:56] ? 1 : 0;
ret += [TOCropOverlayView setDisplayHorizontalGridLinesBm:13] ? 1 : 0;
ret += [TOCropOverlayView setDisplayVerticalGridLinesBm:42] ? 1 : 0;
ret += [TOCropOverlayView setGridHiddenBm:62] ? 1 : 0;
ret += [TOCropOverlayView createNewLineViewBm:81] ? 1 : 0;
ret += [TOCropToolbar initWithFrameBm:27] ? 1 : 0;
ret += [TOCropToolbar setupBm:49] ? 1 : 0;
ret += [TOCropToolbar layoutSubviewsBm:10] ? 1 : 0;
ret += [TOCropToolbar layoutToolbarButtonsWithsamebuttonsizeIncontainerrectHorizontallyBm:43] ? 1 : 0;
ret += [TOCropToolbar buttonTappedBm:57] ? 1 : 0;
ret += [TOCropToolbar clampButtonFrameBm:90] ? 1 : 0;
ret += [TOCropToolbar setClampButtonHiddenBm:43] ? 1 : 0;
ret += [TOCropToolbar setClampButtonGlowingBm:86] ? 1 : 0;
ret += [TOCropToolbar setRotateCounterClockwiseButtonHiddenBm:95] ? 1 : 0;
ret += [TOCropToolbar resetButtonEnabledBm:23] ? 1 : 0;
ret += [TOCropToolbar setResetButtonEnabledBm:84] ? 1 : 0;
ret += [TOCropToolbar doneButtonFrameBm:36] ? 1 : 0;
ret += [TOCropToolbar setCancelTextButtonTitleBm:34] ? 1 : 0;
ret += [TOCropToolbar setDoneTextButtonTitleBm:67] ? 1 : 0;
ret += [TOCropToolbar doneImageBm:44] ? 1 : 0;
ret += [TOCropToolbar cancelImageBm:93] ? 1 : 0;
ret += [TOCropToolbar rotateCCWImageBm:96] ? 1 : 0;
ret += [TOCropToolbar rotateCWImageBm:92] ? 1 : 0;
ret += [TOCropToolbar resetImageBm:36] ? 1 : 0;
ret += [TOCropToolbar clampImageBm:9] ? 1 : 0;
ret += [TOCropToolbar setRotateClockwiseButtonHiddenBm:32] ? 1 : 0;
ret += [TOCropToolbar rotateButtonBm:1] ? 1 : 0;
ret += [TOCropToolbar setStatusBarHeightInsetBm:97] ? 1 : 0;
ret += [TOCropScrollView touchesBeganWitheventBm:55] ? 1 : 0;
ret += [TOCropScrollView touchesEndedWitheventBm:54] ? 1 : 0;
ret += [TOCropScrollView touchesCancelledWitheventBm:16] ? 1 : 0;
ret += [UIImage hasAlphaBm:59] ? 1 : 0;
ret += [UIImage croppedImageWithFrameAngleCircularclipBm:62] ? 1 : 0;
ret += [TOCropViewController initWithCroppingStyleImageBm:95] ? 1 : 0;
ret += [TOCropViewController initWithImageBm:9] ? 1 : 0;
ret += [TOCropViewController viewDidLoadBm:92] ? 1 : 0;
ret += [TOCropViewController viewWillAppearBm:53] ? 1 : 0;
ret += [TOCropViewController viewDidAppearBm:16] ? 1 : 0;
ret += [TOCropViewController viewWillDisappearBm:41] ? 1 : 0;
ret += [TOCropViewController viewDidDisappearBm:80] ? 1 : 0;
ret += [TOCropViewController preferredStatusBarStyleBm:0] ? 1 : 0;
ret += [TOCropViewController prefersStatusBarHiddenBm:34] ? 1 : 0;
ret += [TOCropViewController preferredScreenEdgesDeferringSystemGesturesBm:93] ? 1 : 0;
ret += [TOCropViewController frameForToolbarWithVerticalLayoutBm:2] ? 1 : 0;
ret += [TOCropViewController frameForCropViewWithVerticalLayoutBm:0] ? 1 : 0;
ret += [TOCropViewController frameForTitleLabelWithSizeVerticallayoutBm:58] ? 1 : 0;
ret += [TOCropViewController adjustCropViewInsetsBm:17] ? 1 : 0;
ret += [TOCropViewController adjustToolbarInsetsBm:32] ? 1 : 0;
ret += [TOCropViewController viewSafeAreaInsetsDidChangeBm:40] ? 1 : 0;
ret += [TOCropViewController viewDidLayoutSubviewsBm:40] ? 1 : 0;
ret += [TOCropViewController willRotateToInterfaceOrientationDurationBm:19] ? 1 : 0;
ret += [TOCropViewController willAnimateRotationToInterfaceOrientationDurationBm:94] ? 1 : 0;
ret += [TOCropViewController didRotateFromInterfaceOrientationBm:48] ? 1 : 0;
ret += [TOCropViewController viewWillTransitionToSizeWithtransitioncoordinatorBm:0] ? 1 : 0;
ret += [TOCropViewController resetCropViewLayoutBm:79] ? 1 : 0;
ret += [TOCropViewController showAspectRatioDialogBm:40] ? 1 : 0;
ret += [TOCropViewController actionSheetDiddismisswithbuttonindexBm:47] ? 1 : 0;
ret += [TOCropViewController setAspectRatioPresetAnimatedBm:91] ? 1 : 0;
ret += [TOCropViewController rotateCropViewClockwiseBm:28] ? 1 : 0;
ret += [TOCropViewController rotateCropViewCounterclockwiseBm:61] ? 1 : 0;
ret += [TOCropViewController cropViewDidBecomeResettableBm:76] ? 1 : 0;
ret += [TOCropViewController cropViewDidBecomeNonResettableBm:10] ? 1 : 0;
ret += [TOCropViewController presentAnimatedFromParentViewControllerFromviewFromframeSetupCompletionBm:23] ? 1 : 0;
ret += [TOCropViewController presentAnimatedFromParentViewControllerFromimageFromviewFromframeAngleToimageframeSetupCompletionBm:14] ? 1 : 0;
ret += [TOCropViewController dismissAnimatedFromParentViewControllerToviewToframeSetupCompletionBm:87] ? 1 : 0;
ret += [TOCropViewController dismissAnimatedFromParentViewControllerWithcroppedimageToviewToframeSetupCompletionBm:22] ? 1 : 0;
ret += [TOCropViewController animationControllerForPresentedControllerPresentingcontrollerSourcecontrollerBm:16] ? 1 : 0;
ret += [TOCropViewController animationControllerForDismissedControllerBm:97] ? 1 : 0;
ret += [TOCropViewController cancelButtonTappedBm:22] ? 1 : 0;
ret += [TOCropViewController doneButtonTappedBm:78] ? 1 : 0;
ret += [TOCropViewController setTitleBm:66] ? 1 : 0;
ret += [TOCropViewController setDoneButtonTitleBm:37] ? 1 : 0;
ret += [TOCropViewController setCancelButtonTitleBm:57] ? 1 : 0;
ret += [TOCropViewController cropViewBm:43] ? 1 : 0;
ret += [TOCropViewController toolbarBm:81] ? 1 : 0;
ret += [TOCropViewController titleLabelBm:28] ? 1 : 0;
ret += [TOCropViewController setAspectRatioLockEnabledBm:57] ? 1 : 0;
ret += [TOCropViewController setAspectRatioLockDimensionSwapEnabledBm:94] ? 1 : 0;
ret += [TOCropViewController aspectRatioLockEnabledBm:76] ? 1 : 0;
ret += [TOCropViewController setRotateButtonsHiddenBm:51] ? 1 : 0;
ret += [TOCropViewController rotateButtonsHiddenBm:82] ? 1 : 0;
ret += [TOCropViewController setRotateClockwiseButtonHiddenBm:19] ? 1 : 0;
ret += [TOCropViewController rotateClockwiseButtonHiddenBm:7] ? 1 : 0;
ret += [TOCropViewController setAspectRatioPickerButtonHiddenBm:58] ? 1 : 0;
ret += [TOCropViewController aspectRatioPickerButtonHiddenBm:42] ? 1 : 0;
ret += [TOCropViewController setResetAspectRatioEnabledBm:19] ? 1 : 0;
ret += [TOCropViewController setCustomAspectRatioBm:71] ? 1 : 0;
ret += [TOCropViewController resetAspectRatioEnabledBm:32] ? 1 : 0;
ret += [TOCropViewController setAngleBm:29] ? 1 : 0;
ret += [TOCropViewController angleBm:52] ? 1 : 0;
ret += [TOCropViewController setImageCropFrameBm:86] ? 1 : 0;
ret += [TOCropViewController imageCropFrameBm:30] ? 1 : 0;
ret += [TOCropViewController verticalLayoutBm:33] ? 1 : 0;
ret += [TOCropViewController overrideStatusBarBm:49] ? 1 : 0;
ret += [TOCropViewController statusBarHiddenBm:44] ? 1 : 0;
ret += [TOCropViewController statusBarHeightBm:16] ? 1 : 0;
ret += [TOCropViewController statusBarSafeInsetsBm:54] ? 1 : 0;
ret += [TOCropViewController setMinimumAspectRatioBm:27] ? 1 : 0;
ret += [TOCropViewController minimumAspectRatioBm:35] ? 1 : 0;
ret += [YYClassIvarInfo initWithIvarBm:9] ? 1 : 0;
ret += [YYClassMethodInfo initWithMethodBm:85] ? 1 : 0;
ret += [YYClassPropertyInfo initWithPropertyBm:19] ? 1 : 0;
ret += [YYClassInfo initWithClassBm:22] ? 1 : 0;
ret += [YYClassInfo _updateBm:27] ? 1 : 0;
ret += [YYClassInfo setNeedUpdateBm:3] ? 1 : 0;
ret += [YYClassInfo needUpdateBm:70] ? 1 : 0;
ret += [YYClassInfo classInfoWithClassBm:48] ? 1 : 0;
ret += [YYClassInfo classInfoWithClassNameBm:59] ? 1 : 0;
ret += [NSObject _yy_dictionaryWithJSONBm:59] ? 1 : 0;
ret += [NSObject yy_modelWithJSONBm:84] ? 1 : 0;
ret += [NSObject yy_modelWithDictionaryBm:42] ? 1 : 0;
ret += [NSObject yy_modelSetWithJSONBm:60] ? 1 : 0;
ret += [NSObject yy_modelSetWithDictionaryBm:21] ? 1 : 0;
ret += [NSObject yy_modelToJSONObjectBm:91] ? 1 : 0;
ret += [NSObject yy_modelToJSONDataBm:60] ? 1 : 0;
ret += [NSObject yy_modelToJSONStringBm:90] ? 1 : 0;
ret += [NSObject yy_modelCopyBm:49] ? 1 : 0;
ret += [NSObject yy_modelEncodeWithCoderBm:47] ? 1 : 0;
ret += [NSObject yy_modelInitWithCoderBm:8] ? 1 : 0;
ret += [NSObject yy_modelHashBm:22] ? 1 : 0;
ret += [NSObject yy_modelIsEqualBm:7] ? 1 : 0;
ret += [NSObject yy_modelDescriptionBm:95] ? 1 : 0;
ret += [NSArray yy_modelArrayWithClassJsonBm:40] ? 1 : 0;
ret += [NSArray yy_modelArrayWithClassArrayBm:18] ? 1 : 0;
ret += [NSDictionary yy_modelDictionaryWithClassJsonBm:63] ? 1 : 0;
ret += [NSDictionary yy_modelDictionaryWithClassDictionaryBm:29] ? 1 : 0;
ret += [IQTextView initializeBm:24] ? 1 : 0;
ret += [IQTextView deallocBm:89] ? 1 : 0;
ret += [IQTextView initBm:79] ? 1 : 0;
ret += [IQTextView awakeFromNibBm:64] ? 1 : 0;
ret += [IQTextView refreshPlaceholderBm:6] ? 1 : 0;
ret += [IQTextView setTextBm:50] ? 1 : 0;
ret += [IQTextView setAttributedTextBm:48] ? 1 : 0;
ret += [IQTextView setFontBm:27] ? 1 : 0;
ret += [IQTextView setTextAlignmentBm:18] ? 1 : 0;
ret += [IQTextView layoutSubviewsBm:13] ? 1 : 0;
ret += [IQTextView setPlaceholderBm:5] ? 1 : 0;
ret += [IQTextView setAttributedPlaceholderBm:52] ? 1 : 0;
ret += [IQTextView setPlaceholderTextColorBm:48] ? 1 : 0;
ret += [IQTextView placeholderInsetsBm:79] ? 1 : 0;
ret += [IQTextView placeholderExpectedFrameBm:68] ? 1 : 0;
ret += [IQTextView IQ_PlaceholderLabelBm:65] ? 1 : 0;
ret += [IQTextView delegateBm:57] ? 1 : 0;
ret += [IQTextView intrinsicContentSizeBm:25] ? 1 : 0;
ret += [IQBarButtonItemConfiguration initWithBarButtonSystemItemActionBm:51] ? 1 : 0;
ret += [IQBarButtonItemConfiguration initWithImageActionBm:38] ? 1 : 0;
ret += [IQBarButtonItemConfiguration initWithTitleActionBm:63] ? 1 : 0;
ret += [UIImage keyboardLeftImageBm:6] ? 1 : 0;
ret += [UIImage keyboardRightImageBm:68] ? 1 : 0;
ret += [UIImage keyboardUpImageBm:77] ? 1 : 0;
ret += [UIImage keyboardDownImageBm:54] ? 1 : 0;
ret += [UIImage keyboardPreviousImageBm:21] ? 1 : 0;
ret += [UIImage keyboardNextImageBm:26] ? 1 : 0;
ret += [UIView keyboardToolbarBm:37] ? 1 : 0;
ret += [UIView setShouldHideToolbarPlaceholderBm:7] ? 1 : 0;
ret += [UIView shouldHideToolbarPlaceholderBm:4] ? 1 : 0;
ret += [UIView setToolbarPlaceholderBm:65] ? 1 : 0;
ret += [UIView toolbarPlaceholderBm:82] ? 1 : 0;
ret += [UIView drawingToolbarPlaceholderBm:16] ? 1 : 0;
ret += [UIView flexibleBarButtonItemBm:29] ? 1 : 0;
ret += [UIView addKeyboardToolbarWithTargetTitletextRightbarbuttonconfigurationPreviousbarbuttonconfigurationNextbarbuttonconfigurationBm:1] ? 1 : 0;
ret += [UIView addRightButtonOnKeyboardWithTextTargetActionBm:91] ? 1 : 0;
ret += [UIView addRightButtonOnKeyboardWithTextTargetActionShouldshowplaceholderBm:11] ? 1 : 0;
ret += [UIView addRightButtonOnKeyboardWithTextTargetActionTitletextBm:58] ? 1 : 0;
ret += [UIView addRightButtonOnKeyboardWithImageTargetActionBm:67] ? 1 : 0;
ret += [UIView addRightButtonOnKeyboardWithImageTargetActionShouldshowplaceholderBm:26] ? 1 : 0;
ret += [UIView addRightButtonOnKeyboardWithImageTargetActionTitletextBm:78] ? 1 : 0;
ret += [UIView addDoneOnKeyboardWithTargetActionBm:5] ? 1 : 0;
ret += [UIView addDoneOnKeyboardWithTargetActionShouldshowplaceholderBm:69] ? 1 : 0;
ret += [UIView addDoneOnKeyboardWithTargetActionTitletextBm:44] ? 1 : 0;
ret += [UIView addLeftRightOnKeyboardWithTargetLeftbuttontitleRightbuttontitleLeftbuttonactionRightbuttonactionBm:5] ? 1 : 0;
ret += [UIView addLeftRightOnKeyboardWithTargetLeftbuttontitleRightbuttontitleLeftbuttonactionRightbuttonactionShouldshowplaceholderBm:42] ? 1 : 0;
ret += [UIView addLeftRightOnKeyboardWithTargetLeftbuttontitleRightbuttontitleLeftbuttonactionRightbuttonactionTitletextBm:70] ? 1 : 0;
ret += [UIView addCancelDoneOnKeyboardWithTargetCancelactionDoneactionBm:62] ? 1 : 0;
ret += [UIView addCancelDoneOnKeyboardWithTargetCancelactionDoneactionShouldshowplaceholderBm:26] ? 1 : 0;
ret += [UIView addCancelDoneOnKeyboardWithTargetCancelactionDoneactionTitletextBm:44] ? 1 : 0;
ret += [UIView addPreviousNextDoneOnKeyboardWithTargetPreviousactionNextactionDoneactionBm:96] ? 1 : 0;
ret += [UIView addPreviousNextDoneOnKeyboardWithTargetPreviousactionNextactionDoneactionShouldshowplaceholderBm:60] ? 1 : 0;
ret += [UIView addPreviousNextDoneOnKeyboardWithTargetPreviousactionNextactionDoneactionTitletextBm:94] ? 1 : 0;
ret += [UIView addPreviousNextRightOnKeyboardWithTargetRightbuttonimagePreviousactionNextactionRightbuttonactionBm:55] ? 1 : 0;
ret += [UIView addPreviousNextRightOnKeyboardWithTargetRightbuttonimagePreviousactionNextactionRightbuttonactionShouldshowplaceholderBm:88] ? 1 : 0;
ret += [UIView addPreviousNextRightOnKeyboardWithTargetRightbuttonimagePreviousactionNextactionRightbuttonactionTitletextBm:96] ? 1 : 0;
ret += [UIView addPreviousNextRightOnKeyboardWithTargetRightbuttontitlePreviousactionNextactionRightbuttonactionBm:92] ? 1 : 0;
ret += [UIView addPreviousNextRightOnKeyboardWithTargetRightbuttontitlePreviousactionNextactionRightbuttonactionShouldshowplaceholderBm:17] ? 1 : 0;
ret += [UIView addPreviousNextRightOnKeyboardWithTargetRightbuttontitlePreviousactionNextactionRightbuttonactionTitletextBm:45] ? 1 : 0;
ret += [IQToolbar initializeBm:3] ? 1 : 0;
ret += [IQToolbar initializeBm:83] ? 1 : 0;
ret += [IQToolbar initWithFrameBm:46] ? 1 : 0;
ret += [IQToolbar initWithCoderBm:40] ? 1 : 0;
ret += [IQToolbar deallocBm:18] ? 1 : 0;
ret += [IQToolbar previousBarButtonBm:27] ? 1 : 0;
ret += [IQToolbar nextBarButtonBm:70] ? 1 : 0;
ret += [IQToolbar titleBarButtonBm:35] ? 1 : 0;
ret += [IQToolbar doneBarButtonBm:21] ? 1 : 0;
ret += [IQToolbar fixedSpaceBarButtonBm:28] ? 1 : 0;
ret += [IQToolbar sizeThatFitsBm:66] ? 1 : 0;
ret += [IQToolbar setTintColorBm:38] ? 1 : 0;
ret += [IQToolbar layoutSubviewsBm:30] ? 1 : 0;
ret += [IQToolbar enableInputClicksWhenVisibleBm:50] ? 1 : 0;
ret += [IQBarButtonItem initializeBm:84] ? 1 : 0;
ret += [IQBarButtonItem setTintColorBm:64] ? 1 : 0;
ret += [IQBarButtonItem initWithBarButtonSystemItemTargetActionBm:88] ? 1 : 0;
ret += [IQBarButtonItem setTargetActionBm:87] ? 1 : 0;
ret += [IQBarButtonItem deallocBm:38] ? 1 : 0;
ret += [IQTitleBarButtonItem initWithTitleBm:51] ? 1 : 0;
ret += [IQTitleBarButtonItem setTitleFontBm:72] ? 1 : 0;
ret += [IQTitleBarButtonItem setTitleBm:37] ? 1 : 0;
ret += [IQTitleBarButtonItem setTitleColorBm:28] ? 1 : 0;
ret += [IQTitleBarButtonItem setSelectableTitleColorBm:96] ? 1 : 0;
ret += [IQTitleBarButtonItem setInvocationBm:53] ? 1 : 0;
ret += [IQTitleBarButtonItem deallocBm:59] ? 1 : 0;
ret += [IQKeyboardReturnKeyHandler initBm:20] ? 1 : 0;
ret += [IQKeyboardReturnKeyHandler initWithViewControllerBm:86] ? 1 : 0;
ret += [IQKeyboardReturnKeyHandler textFieldViewCachedInfoBm:96] ? 1 : 0;
ret += [IQKeyboardReturnKeyHandler addResponderFromViewBm:34] ? 1 : 0;
ret += [IQKeyboardReturnKeyHandler removeResponderFromViewBm:90] ? 1 : 0;
ret += [IQKeyboardReturnKeyHandler removeTextFieldViewBm:7] ? 1 : 0;
ret += [IQKeyboardReturnKeyHandler addTextFieldViewBm:77] ? 1 : 0;
ret += [IQKeyboardReturnKeyHandler updateReturnKeyTypeOnTextFieldBm:51] ? 1 : 0;
ret += [IQKeyboardReturnKeyHandler goToNextResponderOrResignBm:10] ? 1 : 0;
ret += [IQKeyboardReturnKeyHandler textFieldShouldBeginEditingBm:91] ? 1 : 0;
ret += [IQKeyboardReturnKeyHandler textFieldDidBeginEditingBm:33] ? 1 : 0;
ret += [IQKeyboardReturnKeyHandler textFieldShouldEndEditingBm:48] ? 1 : 0;
ret += [IQKeyboardReturnKeyHandler textFieldDidEndEditingBm:47] ? 1 : 0;
ret += [IQKeyboardReturnKeyHandler textFieldDidEndEditingReasonBm:37] ? 1 : 0;
ret += [IQKeyboardReturnKeyHandler textFieldShouldchangecharactersinrangeReplacementstringBm:47] ? 1 : 0;
ret += [IQKeyboardReturnKeyHandler textFieldShouldClearBm:80] ? 1 : 0;
ret += [IQKeyboardReturnKeyHandler textFieldShouldReturnBm:31] ? 1 : 0;
ret += [IQKeyboardReturnKeyHandler textViewShouldBeginEditingBm:77] ? 1 : 0;
ret += [IQKeyboardReturnKeyHandler textViewShouldEndEditingBm:49] ? 1 : 0;
ret += [IQKeyboardReturnKeyHandler textViewDidBeginEditingBm:38] ? 1 : 0;
ret += [IQKeyboardReturnKeyHandler textViewDidEndEditingBm:39] ? 1 : 0;
ret += [IQKeyboardReturnKeyHandler textViewShouldchangetextinrangeReplacementtextBm:48] ? 1 : 0;
ret += [IQKeyboardReturnKeyHandler textViewDidChangeBm:81] ? 1 : 0;
ret += [IQKeyboardReturnKeyHandler textViewDidChangeSelectionBm:63] ? 1 : 0;
ret += [IQKeyboardReturnKeyHandler textViewShouldinteractwithurlInrangeInteractionBm:49] ? 1 : 0;
ret += [IQKeyboardReturnKeyHandler textViewShouldinteractwithtextattachmentInrangeInteractionBm:33] ? 1 : 0;
ret += [IQKeyboardReturnKeyHandler textViewShouldinteractwithurlInrangeBm:0] ? 1 : 0;
ret += [IQKeyboardReturnKeyHandler textViewShouldinteractwithtextattachmentInrangeBm:25] ? 1 : 0;
ret += [IQKeyboardReturnKeyHandler deallocBm:4] ? 1 : 0;
ret += [IQKeyboardManager loadBm:30] ? 1 : 0;
ret += [IQKeyboardManager initBm:67] ? 1 : 0;
ret += [IQKeyboardManager sharedManagerBm:43] ? 1 : 0;
ret += [IQKeyboardManager deallocBm:75] ? 1 : 0;
ret += [IQKeyboardManager setEnableBm:24] ? 1 : 0;
ret += [IQKeyboardManager privateIsEnabledBm:95] ? 1 : 0;
ret += [IQKeyboardManager setKeyboardDistanceFromTextFieldBm:77] ? 1 : 0;
ret += [IQKeyboardManager setShouldResignOnTouchOutsideBm:15] ? 1 : 0;
ret += [IQKeyboardManager privateShouldResignOnTouchOutsideBm:39] ? 1 : 0;
ret += [IQKeyboardManager setMovedDistanceBm:42] ? 1 : 0;
ret += [IQKeyboardManager setEnableAutoToolbarBm:65] ? 1 : 0;
ret += [IQKeyboardManager privateIsEnableAutoToolbarBm:27] ? 1 : 0;
ret += [IQKeyboardManager keyWindowBm:94] ? 1 : 0;
ret += [IQKeyboardManager optimizedAdjustPositionBm:80] ? 1 : 0;
ret += [IQKeyboardManager adjustPositionBm:14] ? 1 : 0;
ret += [IQKeyboardManager restorePositionBm:8] ? 1 : 0;
ret += [IQKeyboardManager reloadLayoutIfNeededBm:21] ? 1 : 0;
ret += [IQKeyboardManager keyboardWillShowBm:92] ? 1 : 0;
ret += [IQKeyboardManager keyboardDidShowBm:60] ? 1 : 0;
ret += [IQKeyboardManager keyboardWillHideBm:57] ? 1 : 0;
ret += [IQKeyboardManager keyboardDidHideBm:76] ? 1 : 0;
ret += [IQKeyboardManager textFieldViewDidBeginEditingBm:12] ? 1 : 0;
ret += [IQKeyboardManager textFieldViewDidEndEditingBm:20] ? 1 : 0;
ret += [IQKeyboardManager willChangeStatusBarOrientationBm:22] ? 1 : 0;
ret += [IQKeyboardManager tapRecognizedBm:58] ? 1 : 0;
ret += [IQKeyboardManager gestureRecognizerShouldrecognizesimultaneouslywithgesturerecognizerBm:14] ? 1 : 0;
ret += [IQKeyboardManager gestureRecognizerShouldreceivetouchBm:38] ? 1 : 0;
ret += [IQKeyboardManager resignFirstResponderBm:74] ? 1 : 0;
ret += [IQKeyboardManager canGoPreviousBm:78] ? 1 : 0;
ret += [IQKeyboardManager canGoNextBm:46] ? 1 : 0;
ret += [IQKeyboardManager goPreviousBm:40] ? 1 : 0;
ret += [IQKeyboardManager goNextBm:45] ? 1 : 0;
ret += [IQKeyboardManager responderViewsBm:93] ? 1 : 0;
ret += [IQKeyboardManager addToolbarIfRequiredBm:13] ? 1 : 0;
ret += [IQKeyboardManager removeToolbarIfRequiredBm:17] ? 1 : 0;
ret += [IQKeyboardManager reloadInputViewsBm:69] ? 1 : 0;
ret += [IQKeyboardManager previousActionBm:38] ? 1 : 0;
ret += [IQKeyboardManager nextActionBm:92] ? 1 : 0;
ret += [IQKeyboardManager doneActionBm:80] ? 1 : 0;
ret += [IQKeyboardManager registerTextFieldViewClassDidbegineditingnotificationnameDidendeditingnotificationnameBm:24] ? 1 : 0;
ret += [IQKeyboardManager unregisterTextFieldViewClassDidbegineditingnotificationnameDidendeditingnotificationnameBm:52] ? 1 : 0;
ret += [IQKeyboardManager registerAllNotificationsBm:29] ? 1 : 0;
ret += [IQKeyboardManager unregisterAllNotificationsBm:27] ? 1 : 0;
ret += [IQKeyboardManager showLogBm:16] ? 1 : 0;
ret += [IQKeyboardManager showLogIndentationBm:99] ? 1 : 0;
ret += [UIViewController parentIQContainerViewControllerBm:19] ? 1 : 0;
ret += [UIViewController setIQLayoutGuideConstraintBm:20] ? 1 : 0;
ret += [UIViewController IQLayoutGuideConstraintBm:3] ? 1 : 0;
ret += [NSArray sortedArrayByTagBm:21] ? 1 : 0;
ret += [NSArray sortedArrayByPositionBm:25] ? 1 : 0;
ret += [UIScrollView setShouldIgnoreScrollingAdjustmentBm:41] ? 1 : 0;
ret += [UIScrollView shouldIgnoreScrollingAdjustmentBm:9] ? 1 : 0;
ret += [UIScrollView setShouldIgnoreContentInsetAdjustmentBm:11] ? 1 : 0;
ret += [UIScrollView shouldIgnoreContentInsetAdjustmentBm:0] ? 1 : 0;
ret += [UIScrollView setShouldRestoreScrollViewContentOffsetBm:8] ? 1 : 0;
ret += [UIScrollView shouldRestoreScrollViewContentOffsetBm:91] ? 1 : 0;
ret += [UITableView previousIndexPathOfIndexPathBm:30] ? 1 : 0;
ret += [UICollectionView previousIndexPathOfIndexPathBm:23] ? 1 : 0;
ret += [UIView setKeyboardDistanceFromTextFieldBm:8] ? 1 : 0;
ret += [UIView keyboardDistanceFromTextFieldBm:47] ? 1 : 0;
ret += [UIView setIgnoreSwitchingByNextPreviousBm:11] ? 1 : 0;
ret += [UIView ignoreSwitchingByNextPreviousBm:85] ? 1 : 0;
ret += [UIView setEnableModeBm:33] ? 1 : 0;
ret += [UIView enableModeBm:91] ? 1 : 0;
ret += [UIView setShouldResignOnTouchOutsideModeBm:57] ? 1 : 0;
ret += [UIView shouldResignOnTouchOutsideModeBm:39] ? 1 : 0;
ret += [UIView viewContainingControllerBm:87] ? 1 : 0;
ret += [UIView topMostControllerBm:17] ? 1 : 0;
ret += [UIView parentContainerViewControllerBm:67] ? 1 : 0;
ret += [UIView superviewOfClassTypeBm:35] ? 1 : 0;
ret += [UIView superviewOfClassTypeBelowviewBm:25] ? 1 : 0;
ret += [UIView _IQcanBecomeFirstResponderBm:81] ? 1 : 0;
ret += [UIView responderSiblingsBm:44] ? 1 : 0;
ret += [UIView deepResponderViewsBm:67] ? 1 : 0;
ret += [UIView convertTransformToViewBm:34] ? 1 : 0;
ret += [UIView depthBm:39] ? 1 : 0;
ret += [UIView subHierarchyBm:20] ? 1 : 0;
ret += [UIView superHierarchyBm:87] ? 1 : 0;
ret += [UIView debugHierarchyBm:16] ? 1 : 0;
ret += [UIView textFieldSearchBarBm:2] ? 1 : 0;
ret += [UIView isAlertViewTextFieldBm:50] ? 1 : 0;
ret += [NSObject _IQDescriptionBm:73] ? 1 : 0;
ret += [WKWebView af_URLSessionTaskBm:36] ? 1 : 0;
ret += [WKWebView af_setURLSessionTaskBm:1] ? 1 : 0;
ret += [WKWebView sessionManagerBm:90] ? 1 : 0;
ret += [WKWebView setSessionManagerBm:40] ? 1 : 0;
ret += [WKWebView responseSerializerBm:30] ? 1 : 0;
ret += [WKWebView setResponseSerializerBm:62] ? 1 : 0;
ret += [WKWebView loadRequestNavigationProgressSuccessFailureBm:1] ? 1 : 0;
ret += [WKWebView loadRequestNavigationMimetypeTextencodingnameProgressSuccessFailureBm:15] ? 1 : 0;
ret += [UIButton af_imageDownloadReceiptForStateBm:48] ? 1 : 0;
ret += [UIButton af_setImageDownloadReceiptForstateBm:33] ? 1 : 0;
ret += [UIButton af_backgroundImageDownloadReceiptForStateBm:54] ? 1 : 0;
ret += [UIButton af_setBackgroundImageDownloadReceiptForstateBm:50] ? 1 : 0;
ret += [UIButton sharedImageDownloaderBm:10] ? 1 : 0;
ret += [UIButton setSharedImageDownloaderBm:76] ? 1 : 0;
ret += [UIButton setImageForStateWithurlBm:30] ? 1 : 0;
ret += [UIButton setImageForStateWithurlPlaceholderimageBm:18] ? 1 : 0;
ret += [UIButton setImageForStateWithurlrequestPlaceholderimageSuccessFailureBm:26] ? 1 : 0;
ret += [UIButton setBackgroundImageForStateWithurlBm:5] ? 1 : 0;
ret += [UIButton setBackgroundImageForStateWithurlPlaceholderimageBm:20] ? 1 : 0;
ret += [UIButton setBackgroundImageForStateWithurlrequestPlaceholderimageSuccessFailureBm:42] ? 1 : 0;
ret += [UIButton cancelImageDownloadTaskForStateBm:50] ? 1 : 0;
ret += [UIButton cancelBackgroundImageDownloadTaskForStateBm:43] ? 1 : 0;
ret += [UIButton isActiveTaskURLEqualToURLRequestForstateBm:80] ? 1 : 0;
ret += [UIButton isActiveBackgroundTaskURLEqualToURLRequestForstateBm:22] ? 1 : 0;
ret += [UIImageView af_activeImageDownloadReceiptBm:25] ? 1 : 0;
ret += [UIImageView af_setActiveImageDownloadReceiptBm:60] ? 1 : 0;
ret += [UIImageView sharedImageDownloaderBm:62] ? 1 : 0;
ret += [UIImageView setSharedImageDownloaderBm:27] ? 1 : 0;
ret += [UIImageView setImageWithURLBm:84] ? 1 : 0;
ret += [UIImageView setImageWithURLPlaceholderimageBm:12] ? 1 : 0;
ret += [UIImageView setImageWithURLRequestPlaceholderimageSuccessFailureBm:77] ? 1 : 0;
ret += [UIImageView cancelImageDownloadTaskBm:54] ? 1 : 0;
ret += [UIImageView clearActiveDownloadInformationBm:27] ? 1 : 0;
ret += [UIImageView isActiveTaskURLEqualToURLRequestBm:70] ? 1 : 0;
ret += [AFImageDownloadReceipt initWithReceiptIDTaskBm:73] ? 1 : 0;
ret += [AFImageDownloader defaultURLCacheBm:40] ? 1 : 0;
ret += [AFImageDownloader defaultURLSessionConfigurationBm:93] ? 1 : 0;
ret += [AFImageDownloader initBm:92] ? 1 : 0;
ret += [AFImageDownloader initWithSessionConfigurationBm:4] ? 1 : 0;
ret += [AFImageDownloader initWithSessionManagerDownloadprioritizationMaximumactivedownloadsImagecacheBm:0] ? 1 : 0;
ret += [AFImageDownloader defaultInstanceBm:62] ? 1 : 0;
ret += [AFImageDownloader downloadImageForURLRequestSuccessFailureBm:84] ? 1 : 0;
ret += [AFImageDownloader downloadImageForURLRequestWithreceiptidSuccessFailureBm:55] ? 1 : 0;
ret += [AFImageDownloader cancelTaskForImageDownloadReceiptBm:56] ? 1 : 0;
ret += [AFImageDownloader safelyRemoveMergedTaskWithURLIdentifierBm:45] ? 1 : 0;
ret += [AFImageDownloader removeMergedTaskWithURLIdentifierBm:62] ? 1 : 0;
ret += [AFImageDownloader safelyDecrementActiveTaskCountBm:13] ? 1 : 0;
ret += [AFImageDownloader safelyStartNextTaskIfNecessaryBm:96] ? 1 : 0;
ret += [AFImageDownloader startMergedTaskBm:15] ? 1 : 0;
ret += [AFImageDownloader enqueueMergedTaskBm:55] ? 1 : 0;
ret += [AFImageDownloader dequeueMergedTaskBm:72] ? 1 : 0;
ret += [AFImageDownloader isActiveRequestCountBelowMaximumLimitBm:71] ? 1 : 0;
ret += [AFImageDownloader safelyGetMergedTaskBm:66] ? 1 : 0;
ret += [AFAutoPurgingImageCache initBm:20] ? 1 : 0;
ret += [AFAutoPurgingImageCache initWithMemoryCapacityPreferredmemorycapacityBm:5] ? 1 : 0;
ret += [AFAutoPurgingImageCache deallocBm:19] ? 1 : 0;
ret += [AFAutoPurgingImageCache memoryUsageBm:96] ? 1 : 0;
ret += [AFAutoPurgingImageCache addImageWithidentifierBm:87] ? 1 : 0;
ret += [AFAutoPurgingImageCache removeImageWithIdentifierBm:88] ? 1 : 0;
ret += [AFAutoPurgingImageCache removeAllImagesBm:7] ? 1 : 0;
ret += [AFAutoPurgingImageCache imageWithIdentifierBm:17] ? 1 : 0;
ret += [AFAutoPurgingImageCache addImageForrequestWithadditionalidentifierBm:16] ? 1 : 0;
ret += [AFAutoPurgingImageCache removeImageforRequestWithadditionalidentifierBm:77] ? 1 : 0;
ret += [AFAutoPurgingImageCache imageforRequestWithadditionalidentifierBm:14] ? 1 : 0;
ret += [AFAutoPurgingImageCache imageCacheKeyFromURLRequestWithadditionalidentifierBm:13] ? 1 : 0;
ret += [AFAutoPurgingImageCache shouldCacheImageForrequestWithadditionalidentifierBm:52] ? 1 : 0;
ret += [UIActivityIndicatorView af_notificationObserverBm:1] ? 1 : 0;
ret += [UIActivityIndicatorView setAnimatingWithStateOfTaskBm:32] ? 1 : 0;
ret += [UIProgressView af_uploadProgressAnimatedBm:54] ? 1 : 0;
ret += [UIProgressView af_setUploadProgressAnimatedBm:21] ? 1 : 0;
ret += [UIProgressView af_downloadProgressAnimatedBm:8] ? 1 : 0;
ret += [UIProgressView af_setDownloadProgressAnimatedBm:47] ? 1 : 0;
ret += [UIProgressView setProgressWithUploadProgressOfTaskAnimatedBm:5] ? 1 : 0;
ret += [UIProgressView setProgressWithDownloadProgressOfTaskAnimatedBm:12] ? 1 : 0;
ret += [UIProgressView observeValueForKeyPathOfobjectChangeContextBm:62] ? 1 : 0;
ret += [UIRefreshControl af_notificationObserverBm:80] ? 1 : 0;
ret += [UIRefreshControl setRefreshingWithStateOfTaskBm:52] ? 1 : 0;
ret += [AFNetworkActivityIndicatorManager sharedManagerBm:39] ? 1 : 0;
ret += [AFNetworkActivityIndicatorManager initBm:38] ? 1 : 0;
ret += [AFNetworkActivityIndicatorManager deallocBm:85] ? 1 : 0;
ret += [AFNetworkActivityIndicatorManager setEnabledBm:74] ? 1 : 0;
ret += [AFNetworkActivityIndicatorManager setNetworkingActivityActionWithBlockBm:42] ? 1 : 0;
ret += [AFNetworkActivityIndicatorManager isNetworkActivityOccurringBm:65] ? 1 : 0;
ret += [AFNetworkActivityIndicatorManager setNetworkActivityIndicatorVisibleBm:15] ? 1 : 0;
ret += [AFNetworkActivityIndicatorManager incrementActivityCountBm:61] ? 1 : 0;
ret += [AFNetworkActivityIndicatorManager decrementActivityCountBm:30] ? 1 : 0;
ret += [AFNetworkActivityIndicatorManager networkRequestDidStartBm:87] ? 1 : 0;
ret += [AFNetworkActivityIndicatorManager networkRequestDidFinishBm:96] ? 1 : 0;
ret += [AFNetworkActivityIndicatorManager setCurrentStateBm:9] ? 1 : 0;
ret += [AFNetworkActivityIndicatorManager updateCurrentStateForNetworkActivityChangeBm:86] ? 1 : 0;
ret += [AFNetworkActivityIndicatorManager startActivationDelayTimerBm:49] ? 1 : 0;
ret += [AFNetworkActivityIndicatorManager activationDelayTimerFiredBm:68] ? 1 : 0;
ret += [AFNetworkActivityIndicatorManager startCompletionDelayTimerBm:53] ? 1 : 0;
ret += [AFNetworkActivityIndicatorManager completionDelayTimerFiredBm:63] ? 1 : 0;
ret += [AFNetworkActivityIndicatorManager cancelActivationDelayTimerBm:19] ? 1 : 0;
ret += [AFNetworkActivityIndicatorManager cancelCompletionDelayTimerBm:33] ? 1 : 0;
ret += [AFSecurityPolicy certificatesInBundleBm:60] ? 1 : 0;
ret += [AFSecurityPolicy defaultPolicyBm:85] ? 1 : 0;
ret += [AFSecurityPolicy policyWithPinningModeBm:12] ? 1 : 0;
ret += [AFSecurityPolicy policyWithPinningModeWithpinnedcertificatesBm:74] ? 1 : 0;
ret += [AFSecurityPolicy initBm:37] ? 1 : 0;
ret += [AFSecurityPolicy setPinnedCertificatesBm:0] ? 1 : 0;
ret += [AFSecurityPolicy evaluateServerTrustFordomainBm:78] ? 1 : 0;
ret += [AFSecurityPolicy keyPathsForValuesAffectingPinnedPublicKeysBm:82] ? 1 : 0;
ret += [AFSecurityPolicy supportsSecureCodingBm:91] ? 1 : 0;
ret += [AFSecurityPolicy initWithCoderBm:90] ? 1 : 0;
ret += [AFSecurityPolicy encodeWithCoderBm:54] ? 1 : 0;
ret += [AFSecurityPolicy copyWithZoneBm:70] ? 1 : 0;
ret += [AFNetworkReachabilityManager sharedManagerBm:39] ? 1 : 0;
ret += [AFNetworkReachabilityManager managerForDomainBm:64] ? 1 : 0;
ret += [AFNetworkReachabilityManager managerForAddressBm:90] ? 1 : 0;
ret += [AFNetworkReachabilityManager managerBm:5] ? 1 : 0;
ret += [AFNetworkReachabilityManager initWithReachabilityBm:47] ? 1 : 0;
ret += [AFNetworkReachabilityManager initBm:80] ? 1 : 0;
ret += [AFNetworkReachabilityManager deallocBm:18] ? 1 : 0;
ret += [AFNetworkReachabilityManager isReachableBm:88] ? 1 : 0;
ret += [AFNetworkReachabilityManager isReachableViaWWANBm:23] ? 1 : 0;
ret += [AFNetworkReachabilityManager isReachableViaWiFiBm:53] ? 1 : 0;
ret += [AFNetworkReachabilityManager startMonitoringBm:10] ? 1 : 0;
ret += [AFNetworkReachabilityManager stopMonitoringBm:57] ? 1 : 0;
ret += [AFNetworkReachabilityManager localizedNetworkReachabilityStatusStringBm:88] ? 1 : 0;
ret += [AFNetworkReachabilityManager setReachabilityStatusChangeBlockBm:80] ? 1 : 0;
ret += [AFNetworkReachabilityManager keyPathsForValuesAffectingValueForKeyBm:23] ? 1 : 0;
ret += [AFURLSessionManager initBm:92] ? 1 : 0;
ret += [AFURLSessionManager initWithSessionConfigurationBm:8] ? 1 : 0;
ret += [AFURLSessionManager deallocBm:85] ? 1 : 0;
ret += [AFURLSessionManager sessionBm:86] ? 1 : 0;
ret += [AFURLSessionManager taskDescriptionForSessionTasksBm:80] ? 1 : 0;
ret += [AFURLSessionManager taskDidResumeBm:83] ? 1 : 0;
ret += [AFURLSessionManager taskDidSuspendBm:73] ? 1 : 0;
ret += [AFURLSessionManager delegateForTaskBm:23] ? 1 : 0;
ret += [AFURLSessionManager setDelegateFortaskBm:89] ? 1 : 0;
ret += [AFURLSessionManager addDelegateForDataTaskUploadprogressDownloadprogressCompletionhandlerBm:94] ? 1 : 0;
ret += [AFURLSessionManager addDelegateForUploadTaskProgressCompletionhandlerBm:91] ? 1 : 0;
ret += [AFURLSessionManager addDelegateForDownloadTaskProgressDestinationCompletionhandlerBm:46] ? 1 : 0;
ret += [AFURLSessionManager removeDelegateForTaskBm:41] ? 1 : 0;
ret += [AFURLSessionManager tasksForKeyPathBm:74] ? 1 : 0;
ret += [AFURLSessionManager tasksBm:29] ? 1 : 0;
ret += [AFURLSessionManager dataTasksBm:8] ? 1 : 0;
ret += [AFURLSessionManager uploadTasksBm:50] ? 1 : 0;
ret += [AFURLSessionManager downloadTasksBm:67] ? 1 : 0;
ret += [AFURLSessionManager invalidateSessionCancelingTasksResetsessionBm:55] ? 1 : 0;
ret += [AFURLSessionManager setResponseSerializerBm:31] ? 1 : 0;
ret += [AFURLSessionManager addNotificationObserverForTaskBm:45] ? 1 : 0;
ret += [AFURLSessionManager removeNotificationObserverForTaskBm:44] ? 1 : 0;
ret += [AFURLSessionManager dataTaskWithRequestUploadprogressDownloadprogressCompletionhandlerBm:7] ? 1 : 0;
ret += [AFURLSessionManager uploadTaskWithRequestFromfileProgressCompletionhandlerBm:51] ? 1 : 0;
ret += [AFURLSessionManager uploadTaskWithRequestFromdataProgressCompletionhandlerBm:39] ? 1 : 0;
ret += [AFURLSessionManager uploadTaskWithStreamedRequestProgressCompletionhandlerBm:15] ? 1 : 0;
ret += [AFURLSessionManager downloadTaskWithRequestProgressDestinationCompletionhandlerBm:95] ? 1 : 0;
ret += [AFURLSessionManager downloadTaskWithResumeDataProgressDestinationCompletionhandlerBm:79] ? 1 : 0;
ret += [AFURLSessionManager uploadProgressForTaskBm:34] ? 1 : 0;
ret += [AFURLSessionManager downloadProgressForTaskBm:86] ? 1 : 0;
ret += [AFURLSessionManager setSessionDidBecomeInvalidBlockBm:54] ? 1 : 0;
ret += [AFURLSessionManager setSessionDidReceiveAuthenticationChallengeBlockBm:1] ? 1 : 0;
ret += [AFURLSessionManager setDidFinishEventsForBackgroundURLSessionBlockBm:8] ? 1 : 0;
ret += [AFURLSessionManager setTaskNeedNewBodyStreamBlockBm:32] ? 1 : 0;
ret += [AFURLSessionManager setTaskWillPerformHTTPRedirectionBlockBm:55] ? 1 : 0;
ret += [AFURLSessionManager setTaskDidSendBodyDataBlockBm:21] ? 1 : 0;
ret += [AFURLSessionManager setTaskDidCompleteBlockBm:59] ? 1 : 0;
ret += [AFURLSessionManager setTaskDidFinishCollectingMetricsBlockBm:91] ? 1 : 0;
ret += [AFURLSessionManager setDataTaskDidReceiveResponseBlockBm:5] ? 1 : 0;
ret += [AFURLSessionManager setDataTaskDidBecomeDownloadTaskBlockBm:22] ? 1 : 0;
ret += [AFURLSessionManager setDataTaskDidReceiveDataBlockBm:81] ? 1 : 0;
ret += [AFURLSessionManager setDataTaskWillCacheResponseBlockBm:8] ? 1 : 0;
ret += [AFURLSessionManager setDownloadTaskDidFinishDownloadingBlockBm:32] ? 1 : 0;
ret += [AFURLSessionManager setDownloadTaskDidWriteDataBlockBm:52] ? 1 : 0;
ret += [AFURLSessionManager setDownloadTaskDidResumeBlockBm:32] ? 1 : 0;
ret += [AFURLSessionManager descriptionBm:56] ? 1 : 0;
ret += [AFURLSessionManager respondsToSelectorBm:20] ? 1 : 0;
ret += [AFURLSessionManager URLSessionDidbecomeinvalidwitherrorBm:54] ? 1 : 0;
ret += [AFURLSessionManager URLSessionDidreceivechallengeCompletionhandlerBm:14] ? 1 : 0;
ret += [AFURLSessionManager URLSessionTaskWillperformhttpredirectionNewrequestCompletionhandlerBm:24] ? 1 : 0;
ret += [AFURLSessionManager URLSessionTaskDidreceivechallengeCompletionhandlerBm:32] ? 1 : 0;
ret += [AFURLSessionManager serverTrustErrorForServerTrustUrlBm:20] ? 1 : 0;
ret += [AFURLSessionManager URLSessionTaskNeednewbodystreamBm:36] ? 1 : 0;
ret += [AFURLSessionManager URLSessionTaskDidsendbodydataTotalbytessentTotalbytesexpectedtosendBm:38] ? 1 : 0;
ret += [AFURLSessionManager URLSessionTaskDidcompletewitherrorBm:3] ? 1 : 0;
ret += [AFURLSessionManager URLSessionTaskDidfinishcollectingmetricsBm:63] ? 1 : 0;
ret += [AFURLSessionManager URLSessionDatataskDidreceiveresponseCompletionhandlerBm:89] ? 1 : 0;
ret += [AFURLSessionManager URLSessionDatataskDidbecomedownloadtaskBm:2] ? 1 : 0;
ret += [AFURLSessionManager URLSessionDatataskDidreceivedataBm:8] ? 1 : 0;
ret += [AFURLSessionManager URLSessionDatataskWillcacheresponseCompletionhandlerBm:28] ? 1 : 0;
ret += [AFURLSessionManager URLSessionDidFinishEventsForBackgroundURLSessionBm:56] ? 1 : 0;
ret += [AFURLSessionManager URLSessionDownloadtaskDidfinishdownloadingtourlBm:10] ? 1 : 0;
ret += [AFURLSessionManager URLSessionDownloadtaskDidwritedataTotalbyteswrittenTotalbytesexpectedtowriteBm:99] ? 1 : 0;
ret += [AFURLSessionManager URLSessionDownloadtaskDidresumeatoffsetExpectedtotalbytesBm:83] ? 1 : 0;
ret += [AFURLSessionManager supportsSecureCodingBm:10] ? 1 : 0;
ret += [AFURLSessionManager initWithCoderBm:23] ? 1 : 0;
ret += [AFURLSessionManager encodeWithCoderBm:57] ? 1 : 0;
ret += [AFURLSessionManager copyWithZoneBm:88] ? 1 : 0;
ret += [AFHTTPRequestSerializer serializerBm:5] ? 1 : 0;
ret += [AFHTTPRequestSerializer initBm:36] ? 1 : 0;
ret += [AFHTTPRequestSerializer deallocBm:82] ? 1 : 0;
ret += [AFHTTPRequestSerializer setAllowsCellularAccessBm:15] ? 1 : 0;
ret += [AFHTTPRequestSerializer setCachePolicyBm:97] ? 1 : 0;
ret += [AFHTTPRequestSerializer setHTTPShouldHandleCookiesBm:21] ? 1 : 0;
ret += [AFHTTPRequestSerializer setHTTPShouldUsePipeliningBm:56] ? 1 : 0;
ret += [AFHTTPRequestSerializer setNetworkServiceTypeBm:46] ? 1 : 0;
ret += [AFHTTPRequestSerializer setTimeoutIntervalBm:68] ? 1 : 0;
ret += [AFHTTPRequestSerializer HTTPRequestHeadersBm:8] ? 1 : 0;
ret += [AFHTTPRequestSerializer setValueForhttpheaderfieldBm:45] ? 1 : 0;
ret += [AFHTTPRequestSerializer valueForHTTPHeaderFieldBm:35] ? 1 : 0;
ret += [AFHTTPRequestSerializer setAuthorizationHeaderFieldWithUsernamePasswordBm:54] ? 1 : 0;
ret += [AFHTTPRequestSerializer clearAuthorizationHeaderBm:30] ? 1 : 0;
ret += [AFHTTPRequestSerializer setQueryStringSerializationWithStyleBm:29] ? 1 : 0;
ret += [AFHTTPRequestSerializer setQueryStringSerializationWithBlockBm:39] ? 1 : 0;
ret += [AFHTTPRequestSerializer requestWithMethodUrlstringParametersErrorBm:42] ? 1 : 0;
ret += [AFHTTPRequestSerializer multipartFormRequestWithMethodUrlstringParametersConstructingbodywithblockErrorBm:63] ? 1 : 0;
ret += [AFHTTPRequestSerializer requestWithMultipartFormRequestWritingstreamcontentstofileCompletionhandlerBm:76] ? 1 : 0;
ret += [AFHTTPRequestSerializer requestBySerializingRequestWithparametersErrorBm:27] ? 1 : 0;
ret += [AFHTTPRequestSerializer automaticallyNotifiesObserversForKeyBm:74] ? 1 : 0;
ret += [AFHTTPRequestSerializer observeValueForKeyPathOfobjectChangeContextBm:9] ? 1 : 0;
ret += [AFHTTPRequestSerializer supportsSecureCodingBm:35] ? 1 : 0;
ret += [AFHTTPRequestSerializer initWithCoderBm:29] ? 1 : 0;
ret += [AFHTTPRequestSerializer encodeWithCoderBm:17] ? 1 : 0;
ret += [AFHTTPRequestSerializer copyWithZoneBm:28] ? 1 : 0;
ret += [AFJSONRequestSerializer serializerBm:99] ? 1 : 0;
ret += [AFJSONRequestSerializer serializerWithWritingOptionsBm:47] ? 1 : 0;
ret += [AFJSONRequestSerializer requestBySerializingRequestWithparametersErrorBm:79] ? 1 : 0;
ret += [AFJSONRequestSerializer initWithCoderBm:68] ? 1 : 0;
ret += [AFJSONRequestSerializer encodeWithCoderBm:83] ? 1 : 0;
ret += [AFJSONRequestSerializer copyWithZoneBm:26] ? 1 : 0;
ret += [AFPropertyListRequestSerializer serializerBm:81] ? 1 : 0;
ret += [AFPropertyListRequestSerializer serializerWithFormatWriteoptionsBm:40] ? 1 : 0;
ret += [AFPropertyListRequestSerializer requestBySerializingRequestWithparametersErrorBm:34] ? 1 : 0;
ret += [AFPropertyListRequestSerializer initWithCoderBm:58] ? 1 : 0;
ret += [AFPropertyListRequestSerializer encodeWithCoderBm:94] ? 1 : 0;
ret += [AFPropertyListRequestSerializer copyWithZoneBm:40] ? 1 : 0;
ret += [AFHTTPResponseSerializer serializerBm:82] ? 1 : 0;
ret += [AFHTTPResponseSerializer initBm:96] ? 1 : 0;
ret += [AFHTTPResponseSerializer validateResponseDataErrorBm:22] ? 1 : 0;
ret += [AFHTTPResponseSerializer responseObjectForResponseDataErrorBm:97] ? 1 : 0;
ret += [AFHTTPResponseSerializer supportsSecureCodingBm:40] ? 1 : 0;
ret += [AFHTTPResponseSerializer initWithCoderBm:53] ? 1 : 0;
ret += [AFHTTPResponseSerializer encodeWithCoderBm:48] ? 1 : 0;
ret += [AFHTTPResponseSerializer copyWithZoneBm:99] ? 1 : 0;
ret += [AFJSONResponseSerializer serializerBm:31] ? 1 : 0;
ret += [AFJSONResponseSerializer serializerWithReadingOptionsBm:4] ? 1 : 0;
ret += [AFJSONResponseSerializer initBm:2] ? 1 : 0;
ret += [AFJSONResponseSerializer responseObjectForResponseDataErrorBm:81] ? 1 : 0;
ret += [AFJSONResponseSerializer supportsSecureCodingBm:63] ? 1 : 0;
ret += [AFJSONResponseSerializer initWithCoderBm:16] ? 1 : 0;
ret += [AFJSONResponseSerializer encodeWithCoderBm:12] ? 1 : 0;
ret += [AFJSONResponseSerializer copyWithZoneBm:70] ? 1 : 0;
ret += [AFXMLParserResponseSerializer serializerBm:60] ? 1 : 0;
ret += [AFXMLParserResponseSerializer initBm:6] ? 1 : 0;
ret += [AFXMLParserResponseSerializer responseObjectForResponseDataErrorBm:20] ? 1 : 0;
ret += [AFXMLDocumentResponseSerializer serializerBm:28] ? 1 : 0;
ret += [AFXMLDocumentResponseSerializer serializerWithXMLDocumentOptionsBm:50] ? 1 : 0;
ret += [AFXMLDocumentResponseSerializer initBm:83] ? 1 : 0;
ret += [AFXMLDocumentResponseSerializer responseObjectForResponseDataErrorBm:45] ? 1 : 0;
ret += [AFXMLDocumentResponseSerializer initWithCoderBm:13] ? 1 : 0;
ret += [AFXMLDocumentResponseSerializer encodeWithCoderBm:26] ? 1 : 0;
ret += [AFXMLDocumentResponseSerializer copyWithZoneBm:18] ? 1 : 0;
ret += [AFPropertyListResponseSerializer serializerBm:84] ? 1 : 0;
ret += [AFPropertyListResponseSerializer serializerWithFormatReadoptionsBm:85] ? 1 : 0;
ret += [AFPropertyListResponseSerializer initBm:1] ? 1 : 0;
ret += [AFPropertyListResponseSerializer responseObjectForResponseDataErrorBm:94] ? 1 : 0;
ret += [AFPropertyListResponseSerializer supportsSecureCodingBm:15] ? 1 : 0;
ret += [AFPropertyListResponseSerializer initWithCoderBm:71] ? 1 : 0;
ret += [AFPropertyListResponseSerializer encodeWithCoderBm:50] ? 1 : 0;
ret += [AFPropertyListResponseSerializer copyWithZoneBm:23] ? 1 : 0;
ret += [AFImageResponseSerializer initBm:58] ? 1 : 0;
ret += [AFImageResponseSerializer responseObjectForResponseDataErrorBm:6] ? 1 : 0;
ret += [AFImageResponseSerializer supportsSecureCodingBm:52] ? 1 : 0;
ret += [AFImageResponseSerializer initWithCoderBm:24] ? 1 : 0;
ret += [AFImageResponseSerializer encodeWithCoderBm:56] ? 1 : 0;
ret += [AFImageResponseSerializer copyWithZoneBm:44] ? 1 : 0;
ret += [AFCompoundResponseSerializer compoundSerializerWithResponseSerializersBm:56] ? 1 : 0;
ret += [AFCompoundResponseSerializer responseObjectForResponseDataErrorBm:41] ? 1 : 0;
ret += [AFCompoundResponseSerializer supportsSecureCodingBm:26] ? 1 : 0;
ret += [AFCompoundResponseSerializer initWithCoderBm:35] ? 1 : 0;
ret += [AFCompoundResponseSerializer encodeWithCoderBm:35] ? 1 : 0;
ret += [AFCompoundResponseSerializer copyWithZoneBm:27] ? 1 : 0;
ret += [UIImage af_safeImageWithDataBm:77] ? 1 : 0;
ret += [AFHTTPSessionManager managerBm:18] ? 1 : 0;
ret += [AFHTTPSessionManager initBm:49] ? 1 : 0;
ret += [AFHTTPSessionManager initWithBaseURLBm:40] ? 1 : 0;
ret += [AFHTTPSessionManager initWithSessionConfigurationBm:43] ? 1 : 0;
ret += [AFHTTPSessionManager initWithBaseURLSessionconfigurationBm:17] ? 1 : 0;
ret += [AFHTTPSessionManager setRequestSerializerBm:14] ? 1 : 0;
ret += [AFHTTPSessionManager setResponseSerializerBm:67] ? 1 : 0;
ret += [AFHTTPSessionManager setSecurityPolicyBm:19] ? 1 : 0;
ret += [AFHTTPSessionManager GETParametersHeadersProgressSuccessFailureBm:14] ? 1 : 0;
ret += [AFHTTPSessionManager HEADParametersHeadersSuccessFailureBm:80] ? 1 : 0;
ret += [AFHTTPSessionManager POSTParametersHeadersProgressSuccessFailureBm:31] ? 1 : 0;
ret += [AFHTTPSessionManager POSTParametersHeadersConstructingbodywithblockProgressSuccessFailureBm:82] ? 1 : 0;
ret += [AFHTTPSessionManager PUTParametersHeadersSuccessFailureBm:4] ? 1 : 0;
ret += [AFHTTPSessionManager PATCHParametersHeadersSuccessFailureBm:95] ? 1 : 0;
ret += [AFHTTPSessionManager DELETEParametersHeadersSuccessFailureBm:10] ? 1 : 0;
ret += [AFHTTPSessionManager dataTaskWithHTTPMethodUrlstringParametersHeadersUploadprogressDownloadprogressSuccessFailureBm:31] ? 1 : 0;
ret += [AFHTTPSessionManager descriptionBm:72] ? 1 : 0;
ret += [AFHTTPSessionManager supportsSecureCodingBm:15] ? 1 : 0;
ret += [AFHTTPSessionManager initWithCoderBm:26] ? 1 : 0;
ret += [AFHTTPSessionManager encodeWithCoderBm:47] ? 1 : 0;
ret += [AFHTTPSessionManager copyWithZoneBm:45] ? 1 : 0;
ret += [UIControl removeAllTargetsBm:66] ? 1 : 0;
ret += [UIControl setTargetActionForcontroleventsBm:12] ? 1 : 0;
ret += [UIControl addBlockForControlEventsBlockBm:2] ? 1 : 0;
ret += [UIControl setBlockForControlEventsBlockBm:68] ? 1 : 0;
ret += [UIControl removeAllBlocksForControlEventsBm:34] ? 1 : 0;
ret += [UIControl _yy_allUIControlBlockTargetsBm:98] ? 1 : 0;
ret += [UIImage imageWithSmallGIFDataScaleBm:52] ? 1 : 0;
ret += [UIImage isAnimatedGIFDataBm:43] ? 1 : 0;
ret += [UIImage isAnimatedGIFFileBm:97] ? 1 : 0;
ret += [UIImage imageWithPDFBm:77] ? 1 : 0;
ret += [UIImage imageWithPDFSizeBm:92] ? 1 : 0;
ret += [UIImage imageWithEmojiSizeBm:27] ? 1 : 0;
ret += [UIImage _yy_imageWithPDFResizeSizeBm:39] ? 1 : 0;
ret += [UIImage imageWithColorBm:28] ? 1 : 0;
ret += [UIImage imageWithColorSizeBm:98] ? 1 : 0;
ret += [UIImage imageWithSizeDrawblockBm:97] ? 1 : 0;
ret += [UIImage hasAlphaChannelBm:28] ? 1 : 0;
ret += [UIImage drawInRectWithcontentmodeClipstoboundsBm:79] ? 1 : 0;
ret += [UIImage imageByResizeToSizeBm:71] ? 1 : 0;
ret += [UIImage imageByResizeToSizeContentmodeBm:37] ? 1 : 0;
ret += [UIImage imageByCropToRectBm:92] ? 1 : 0;
ret += [UIImage imageByInsetEdgeWithcolorBm:54] ? 1 : 0;
ret += [UIImage imageByRoundCornerRadiusBm:90] ? 1 : 0;
ret += [UIImage imageByRoundCornerRadiusBorderwidthBordercolorBm:90] ? 1 : 0;
ret += [UIImage imageByRoundCornerRadiusCornersBorderwidthBordercolorBorderlinejoinBm:17] ? 1 : 0;
ret += [UIImage imageByRotateFitsizeBm:18] ? 1 : 0;
ret += [UIImage _yy_flipHorizontalVerticalBm:54] ? 1 : 0;
ret += [UIImage imageByRotateLeft90Bm:88] ? 1 : 0;
ret += [UIImage imageByRotateRight90Bm:91] ? 1 : 0;
ret += [UIImage imageByRotate180Bm:38] ? 1 : 0;
ret += [UIImage imageByFlipVerticalBm:50] ? 1 : 0;
ret += [UIImage imageByFlipHorizontalBm:32] ? 1 : 0;
ret += [UIImage imageByTintColorBm:64] ? 1 : 0;
ret += [UIImage imageByGrayscaleBm:65] ? 1 : 0;
ret += [UIImage imageByBlurSoftBm:12] ? 1 : 0;
ret += [UIImage imageByBlurLightBm:57] ? 1 : 0;
ret += [UIImage imageByBlurExtraLightBm:26] ? 1 : 0;
ret += [UIImage imageByBlurDarkBm:83] ? 1 : 0;
ret += [UIImage imageByBlurWithTintBm:6] ? 1 : 0;
ret += [UIImage imageByBlurRadiusTintcolorTintmodeSaturationMaskimageBm:61] ? 1 : 0;
ret += [UIImage _yy_mergeImageRefTintcolorTintblendmodeMaskimageOpaqueBm:97] ? 1 : 0;
ret += [UIFont isBoldBm:73] ? 1 : 0;
ret += [UIFont isItalicBm:93] ? 1 : 0;
ret += [UIFont isMonoSpaceBm:72] ? 1 : 0;
ret += [UIFont isColorGlyphsBm:48] ? 1 : 0;
ret += [UIFont fontWeightBm:78] ? 1 : 0;
ret += [UIFont fontWithBoldBm:78] ? 1 : 0;
ret += [UIFont fontWithItalicBm:69] ? 1 : 0;
ret += [UIFont fontWithBoldItalicBm:90] ? 1 : 0;
ret += [UIFont fontWithNormalBm:0] ? 1 : 0;
ret += [UIFont fontWithCTFontBm:64] ? 1 : 0;
ret += [UIFont fontWithCGFontSizeBm:59] ? 1 : 0;
ret += [UIFont CTFontRef CF_RETURNS_RETAINEDBm:45] ? 1 : 0;
ret += [UIFont CGFontRef CF_RETURNS_RETAINEDBm:92] ? 1 : 0;
ret += [UIFont loadFontFromPathBm:72] ? 1 : 0;
ret += [UIFont unloadFontFromPathBm:37] ? 1 : 0;
ret += [UIFont loadFontFromDataBm:80] ? 1 : 0;
ret += [UIFont unloadFontFromDataBm:90] ? 1 : 0;
ret += [UIFont dataFromFontBm:10] ? 1 : 0;
ret += [UIFont dataFromCGFontBm:92] ? 1 : 0;
ret += [UITextField selectAllTextBm:53] ? 1 : 0;
ret += [UITextField setSelectedRangeBm:91] ? 1 : 0;
ret += [UIColor colorWithHueSaturationLightnessAlphaBm:44] ? 1 : 0;
ret += [UIColor colorWithCyanMagentaYellowBlackAlphaBm:12] ? 1 : 0;
ret += [UIColor colorWithRGBBm:21] ? 1 : 0;
ret += [UIColor colorWithRGBABm:47] ? 1 : 0;
ret += [UIColor colorWithRGBAlphaBm:93] ? 1 : 0;
ret += [UIColor rgbValueBm:18] ? 1 : 0;
ret += [UIColor rgbaValueBm:35] ? 1 : 0;
ret += [UIColor colorWithHexStringBm:83] ? 1 : 0;
ret += [UIColor hexStringBm:94] ? 1 : 0;
ret += [UIColor hexStringWithAlphaBm:26] ? 1 : 0;
ret += [UIColor hexStringWithAlphaBm:85] ? 1 : 0;
ret += [UIColor colorByAddColorBlendmodeBm:73] ? 1 : 0;
ret += [UIColor colorByChangeHueSaturationBrightnessAlphaBm:19] ? 1 : 0;
ret += [UIColor getHueSaturationLightnessAlphaBm:74] ? 1 : 0;
ret += [UIColor getCyanMagentaYellowBlackAlphaBm:60] ? 1 : 0;
ret += [UIColor redBm:82] ? 1 : 0;
ret += [UIColor greenBm:68] ? 1 : 0;
ret += [UIColor blueBm:21] ? 1 : 0;
ret += [UIColor alphaBm:17] ? 1 : 0;
ret += [UIColor hueBm:15] ? 1 : 0;
ret += [UIColor saturationBm:42] ? 1 : 0;
ret += [UIColor brightnessBm:19] ? 1 : 0;
ret += [UIColor colorSpaceModelBm:41] ? 1 : 0;
ret += [UIColor colorSpaceStringBm:89] ? 1 : 0;
ret += [UIBezierPath bezierPathWithTextFontBm:65] ? 1 : 0;
ret += [UIScreen screenScaleBm:73] ? 1 : 0;
ret += [UIScreen currentBoundsBm:65] ? 1 : 0;
ret += [UIScreen boundsForOrientationBm:70] ? 1 : 0;
ret += [UIScreen sizeInPixelBm:98] ? 1 : 0;
ret += [UIScreen pixelsPerInchBm:8] ? 1 : 0;
ret += [UIScrollView scrollToTopBm:24] ? 1 : 0;
ret += [UIScrollView scrollToBottomBm:5] ? 1 : 0;
ret += [UIScrollView scrollToLeftBm:9] ? 1 : 0;
ret += [UIScrollView scrollToRightBm:45] ? 1 : 0;
ret += [UIScrollView scrollToTopAnimatedBm:2] ? 1 : 0;
ret += [UIScrollView scrollToBottomAnimatedBm:95] ? 1 : 0;
ret += [UIScrollView scrollToLeftAnimatedBm:0] ? 1 : 0;
ret += [UIScrollView scrollToRightAnimatedBm:8] ? 1 : 0;
ret += [UITableView updateWithBlockBm:32] ? 1 : 0;
ret += [UITableView scrollToRowInsectionAtscrollpositionAnimatedBm:50] ? 1 : 0;
ret += [UITableView insertRowAtIndexPathWithrowanimationBm:71] ? 1 : 0;
ret += [UITableView insertRowInsectionWithrowanimationBm:34] ? 1 : 0;
ret += [UITableView reloadRowAtIndexPathWithrowanimationBm:91] ? 1 : 0;
ret += [UITableView reloadRowInsectionWithrowanimationBm:43] ? 1 : 0;
ret += [UITableView deleteRowAtIndexPathWithrowanimationBm:66] ? 1 : 0;
ret += [UITableView deleteRowInsectionWithrowanimationBm:40] ? 1 : 0;
ret += [UITableView insertSectionWithrowanimationBm:47] ? 1 : 0;
ret += [UITableView deleteSectionWithrowanimationBm:36] ? 1 : 0;
ret += [UITableView reloadSectionWithrowanimationBm:80] ? 1 : 0;
ret += [UITableView clearSelectedRowsAnimatedBm:37] ? 1 : 0;
ret += [UIDevice systemVersionBm:16] ? 1 : 0;
ret += [UIDevice isPadBm:67] ? 1 : 0;
ret += [UIDevice isSimulatorBm:75] ? 1 : 0;
ret += [UIDevice isJailbrokenBm:40] ? 1 : 0;
ret += [UIDevice canMakePhoneCallsBm:17] ? 1 : 0;
ret += [UIDevice ipAddressWithIfaNameBm:52] ? 1 : 0;
ret += [UIDevice ipAddressWIFIBm:12] ? 1 : 0;
ret += [UIDevice ipAddressCellBm:78] ? 1 : 0;
ret += [UIDevice getNetworkTrafficBytesBm:68] ? 1 : 0;
ret += [UIDevice machineModelBm:84] ? 1 : 0;
ret += [UIDevice machineModelNameBm:18] ? 1 : 0;
ret += [UIDevice systemUptimeBm:11] ? 1 : 0;
ret += [UIDevice diskSpaceBm:25] ? 1 : 0;
ret += [UIDevice diskSpaceFreeBm:53] ? 1 : 0;
ret += [UIDevice diskSpaceUsedBm:3] ? 1 : 0;
ret += [UIDevice memoryTotalBm:80] ? 1 : 0;
ret += [UIDevice memoryUsedBm:52] ? 1 : 0;
ret += [UIDevice memoryFreeBm:96] ? 1 : 0;
ret += [UIDevice memoryActiveBm:76] ? 1 : 0;
ret += [UIDevice memoryInactiveBm:57] ? 1 : 0;
ret += [UIDevice memoryWiredBm:72] ? 1 : 0;
ret += [UIDevice memoryPurgableBm:7] ? 1 : 0;
ret += [UIDevice cpuCountBm:35] ? 1 : 0;
ret += [UIDevice cpuUsageBm:78] ? 1 : 0;
ret += [UIDevice cpuUsagePerProcessorBm:17] ? 1 : 0;
ret += [UIDevice + CPU_STATE_SYSTEM] - _prevCPUInfo[(CPU_STATE_MAX * i) + CPU_STATE_SYSTEM])
                          + (_cpuInfo[(CPU_STATE_MAX * i) + CPU_STATE_NICE]   - _prevCPUInfo[(CPU_STATE_MAX * i) + CPU_STATE_NICE])
                          )Bm:92] ? 1 : 0;
ret += [UIApplication documentsURLBm:92] ? 1 : 0;
ret += [UIApplication documentsPathBm:55] ? 1 : 0;
ret += [UIApplication cachesURLBm:19] ? 1 : 0;
ret += [UIApplication cachesPathBm:25] ? 1 : 0;
ret += [UIApplication libraryURLBm:52] ? 1 : 0;
ret += [UIApplication libraryPathBm:8] ? 1 : 0;
ret += [UIApplication isPiratedBm:60] ? 1 : 0;
ret += [UIApplication _yy_fileExistInMainBundleBm:52] ? 1 : 0;
ret += [UIApplication appBundleNameBm:67] ? 1 : 0;
ret += [UIApplication appBundleIDBm:58] ? 1 : 0;
ret += [UIApplication appVersionBm:69] ? 1 : 0;
ret += [UIApplication appBuildVersionBm:18] ? 1 : 0;
ret += [UIApplication isBeingDebuggedBm:15] ? 1 : 0;
ret += [UIApplication memoryUsageBm:70] ? 1 : 0;
ret += [UIApplication cpuUsageBm:4] ? 1 : 0;
ret += [UIApplication _delaySetActivityBm:46] ? 1 : 0;
ret += [UIApplication _changeNetworkActivityCountBm:32] ? 1 : 0;
ret += [UIApplication incrementNetworkActivityCountBm:42] ? 1 : 0;
ret += [UIApplication decrementNetworkActivityCountBm:23] ? 1 : 0;
ret += [UIApplication isAppExtensionBm:98] ? 1 : 0;
ret += [UIApplication sharedExtensionApplicationBm:36] ? 1 : 0;
ret += [UIGestureRecognizer initWithActionBlockBm:55] ? 1 : 0;
ret += [UIGestureRecognizer addActionBlockBm:45] ? 1 : 0;
ret += [UIGestureRecognizer removeAllActionBlocksBm:10] ? 1 : 0;
ret += [UIGestureRecognizer _yy_allUIGestureRecognizerBlockTargetsBm:99] ? 1 : 0;
ret += [UIBarButtonItem setActionBlockBm:53] ? 1 : 0;
ret += [UIBarButtonItem (id)) actionBlockBm:59] ? 1 : 0;
ret += [UIView snapshotImageBm:22] ? 1 : 0;
ret += [UIView snapshotImageAfterScreenUpdatesBm:61] ? 1 : 0;
ret += [UIView snapshotPDFBm:52] ? 1 : 0;
ret += [UIView setLayerShadowOffsetRadiusBm:15] ? 1 : 0;
ret += [UIView removeAllSubviewsBm:39] ? 1 : 0;
ret += [UIView viewControllerBm:22] ? 1 : 0;
ret += [UIView visibleAlphaBm:75] ? 1 : 0;
ret += [UIView convertPointTovieworwindowBm:28] ? 1 : 0;
ret += [UIView convertPointFromvieworwindowBm:72] ? 1 : 0;
ret += [UIView convertRectTovieworwindowBm:66] ? 1 : 0;
ret += [UIView convertRectFromvieworwindowBm:47] ? 1 : 0;
ret += [UIView leftBm:88] ? 1 : 0;
ret += [UIView setLeftBm:62] ? 1 : 0;
ret += [UIView topBm:43] ? 1 : 0;
ret += [UIView setTopBm:61] ? 1 : 0;
ret += [UIView rightBm:87] ? 1 : 0;
ret += [UIView setRightBm:80] ? 1 : 0;
ret += [UIView bottomBm:99] ? 1 : 0;
ret += [UIView setBottomBm:32] ? 1 : 0;
ret += [UIView widthBm:64] ? 1 : 0;
ret += [UIView setWidthBm:89] ? 1 : 0;
ret += [UIView heightBm:59] ? 1 : 0;
ret += [UIView setHeightBm:33] ? 1 : 0;
ret += [UIView centerXBm:14] ? 1 : 0;
ret += [UIView setCenterXBm:28] ? 1 : 0;
ret += [UIView centerYBm:26] ? 1 : 0;
ret += [UIView setCenterYBm:62] ? 1 : 0;
ret += [UIView originBm:54] ? 1 : 0;
ret += [UIView setOriginBm:18] ? 1 : 0;
ret += [UIView sizeBm:79] ? 1 : 0;
ret += [UIView setSizeBm:91] ? 1 : 0;
ret += [NSTimer _yy_ExecBlockBm:59] ? 1 : 0;
ret += [NSTimer scheduledTimerWithTimeIntervalBlockRepeatsBm:86] ? 1 : 0;
ret += [NSTimer timerWithTimeIntervalBlockRepeatsBm:73] ? 1 : 0;
ret += [NSDate yearBm:2] ? 1 : 0;
ret += [NSDate monthBm:26] ? 1 : 0;
ret += [NSDate dayBm:95] ? 1 : 0;
ret += [NSDate hourBm:51] ? 1 : 0;
ret += [NSDate minuteBm:40] ? 1 : 0;
ret += [NSDate secondBm:68] ? 1 : 0;
ret += [NSDate nanosecondBm:37] ? 1 : 0;
ret += [NSDate weekdayBm:74] ? 1 : 0;
ret += [NSDate weekdayOrdinalBm:71] ? 1 : 0;
ret += [NSDate weekOfMonthBm:93] ? 1 : 0;
ret += [NSDate weekOfYearBm:63] ? 1 : 0;
ret += [NSDate yearForWeekOfYearBm:39] ? 1 : 0;
ret += [NSDate quarterBm:11] ? 1 : 0;
ret += [NSDate isLeapMonthBm:15] ? 1 : 0;
ret += [NSDate isLeapYearBm:69] ? 1 : 0;
ret += [NSDate isTodayBm:11] ? 1 : 0;
ret += [NSDate isYesterdayBm:77] ? 1 : 0;
ret += [NSDate dateByAddingYearsBm:92] ? 1 : 0;
ret += [NSDate dateByAddingMonthsBm:53] ? 1 : 0;
ret += [NSDate dateByAddingWeeksBm:52] ? 1 : 0;
ret += [NSDate dateByAddingDaysBm:37] ? 1 : 0;
ret += [NSDate dateByAddingHoursBm:22] ? 1 : 0;
ret += [NSDate dateByAddingMinutesBm:92] ? 1 : 0;
ret += [NSDate dateByAddingSecondsBm:25] ? 1 : 0;
ret += [NSDate stringWithFormatBm:0] ? 1 : 0;
ret += [NSDate stringWithFormatTimezoneLocaleBm:50] ? 1 : 0;
ret += [NSDate stringWithISOFormatBm:79] ? 1 : 0;
ret += [NSDate dateWithStringFormatBm:19] ? 1 : 0;
ret += [NSDate dateWithStringFormatTimezoneLocaleBm:21] ? 1 : 0;
ret += [NSDate dateWithISOFormatStringBm:39] ? 1 : 0;
ret += [NSObject arcDebugRetainBm:13] ? 1 : 0;
ret += [NSObject arcDebugReleaseBm:49] ? 1 : 0;
ret += [NSObject arcDebugAutoreleaseBm:56] ? 1 : 0;
ret += [NSObject arcDebugRetainCountBm:20] ? 1 : 0;
ret += [NSNotificationCenter postNotificationOnMainThreadBm:44] ? 1 : 0;
ret += [NSNotificationCenter postNotificationOnMainThreadWaituntildoneBm:72] ? 1 : 0;
ret += [NSNotificationCenter postNotificationOnMainThreadWithNameObjectBm:91] ? 1 : 0;
ret += [NSNotificationCenter postNotificationOnMainThreadWithNameObjectUserinfoBm:6] ? 1 : 0;
ret += [NSNotificationCenter postNotificationOnMainThreadWithNameObjectUserinfoWaituntildoneBm:25] ? 1 : 0;
ret += [NSNotificationCenter _yy_postNotificationBm:6] ? 1 : 0;
ret += [NSNotificationCenter _yy_postNotificationNameBm:15] ? 1 : 0;
ret += [NSString md2StringBm:85] ? 1 : 0;
ret += [NSString md4StringBm:32] ? 1 : 0;
ret += [NSString md5StringBm:96] ? 1 : 0;
ret += [NSString sha1StringBm:93] ? 1 : 0;
ret += [NSString sha224StringBm:95] ? 1 : 0;
ret += [NSString sha256StringBm:78] ? 1 : 0;
ret += [NSString sha384StringBm:0] ? 1 : 0;
ret += [NSString sha512StringBm:15] ? 1 : 0;
ret += [NSString crc32StringBm:12] ? 1 : 0;
ret += [NSString hmacMD5StringWithKeyBm:96] ? 1 : 0;
ret += [NSString hmacSHA1StringWithKeyBm:25] ? 1 : 0;
ret += [NSString hmacSHA224StringWithKeyBm:62] ? 1 : 0;
ret += [NSString hmacSHA256StringWithKeyBm:26] ? 1 : 0;
ret += [NSString hmacSHA384StringWithKeyBm:51] ? 1 : 0;
ret += [NSString hmacSHA512StringWithKeyBm:57] ? 1 : 0;
ret += [NSString base64EncodedStringBm:99] ? 1 : 0;
ret += [NSString stringWithBase64EncodedStringBm:92] ? 1 : 0;
ret += [NSString stringByURLEncodeBm:15] ? 1 : 0;
ret += [NSString stringByURLDecodeBm:72] ? 1 : 0;
ret += [NSString stringByEscapingHTMLBm:9] ? 1 : 0;
ret += [NSString sizeForFontSizeModeBm:36] ? 1 : 0;
ret += [NSString widthForFontBm:4] ? 1 : 0;
ret += [NSString heightForFontWidthBm:87] ? 1 : 0;
ret += [NSString matchesRegexOptionsBm:73] ? 1 : 0;
ret += [NSString enumerateRegexMatchesOptionsUsingblockBm:4] ? 1 : 0;
ret += [NSString stringByReplacingRegexOptionsWithstringBm:80] ? 1 : 0;
ret += [NSString charValueBm:40] ? 1 : 0;
ret += [NSString unsignedCharValueBm:54] ? 1 : 0;
ret += [NSString shortValueBm:54] ? 1 : 0;
ret += [NSString unsignedShortValueBm:90] ? 1 : 0;
ret += [NSString unsignedIntValueBm:20] ? 1 : 0;
ret += [NSString longValueBm:24] ? 1 : 0;
ret += [NSString unsignedLongValueBm:29] ? 1 : 0;
ret += [NSString unsignedLongLongValueBm:46] ? 1 : 0;
ret += [NSString unsignedIntegerValueBm:52] ? 1 : 0;
ret += [NSString stringWithUUIDBm:14] ? 1 : 0;
ret += [NSString stringWithUTF32CharBm:48] ? 1 : 0;
ret += [NSString stringWithUTF32CharsLengthBm:23] ? 1 : 0;
ret += [NSString enumerateUTF32CharInRangeUsingblockBm:30] ? 1 : 0;
ret += [NSString stringByTrimBm:90] ? 1 : 0;
ret += [NSString stringByAppendingNameScaleBm:98] ? 1 : 0;
ret += [NSString stringByAppendingPathScaleBm:53] ? 1 : 0;
ret += [NSString pathScaleBm:73] ? 1 : 0;
ret += [NSString isNotBlankBm:84] ? 1 : 0;
ret += [NSString containsStringBm:53] ? 1 : 0;
ret += [NSString containsCharacterSetBm:38] ? 1 : 0;
ret += [NSString numberValueBm:91] ? 1 : 0;
ret += [NSString dataValueBm:43] ? 1 : 0;
ret += [NSString rangeOfAllBm:16] ? 1 : 0;
ret += [NSString jsonValueDecodedBm:17] ? 1 : 0;
ret += [NSString stringNamedBm:76] ? 1 : 0;
ret += [NSObject addObserverBlockForKeyPathBlockBm:81] ? 1 : 0;
ret += [NSObject removeObserverBlocksForKeyPathBm:41] ? 1 : 0;
ret += [NSObject removeObserverBlocksBm:4] ? 1 : 0;
ret += [NSObject _yy_allNSObjectObserverBlocksBm:51] ? 1 : 0;
ret += [NSDictionary dictionaryWithPlistDataBm:31] ? 1 : 0;
ret += [NSDictionary dictionaryWithPlistStringBm:24] ? 1 : 0;
ret += [NSDictionary plistDataBm:85] ? 1 : 0;
ret += [NSDictionary plistStringBm:32] ? 1 : 0;
ret += [NSDictionary allKeysSortedBm:44] ? 1 : 0;
ret += [NSDictionary allValuesSortedByKeysBm:60] ? 1 : 0;
ret += [NSDictionary containsObjectForKeyBm:16] ? 1 : 0;
ret += [NSDictionary entriesForKeysBm:33] ? 1 : 0;
ret += [NSDictionary jsonStringEncodedBm:25] ? 1 : 0;
ret += [NSDictionary jsonPrettyStringEncodedBm:21] ? 1 : 0;
ret += [NSDictionary dictionaryWithXMLBm:52] ? 1 : 0;
ret += [NSDictionary boolValueForKeyDefaultBm:28] ? 1 : 0;
ret += [NSDictionary charValueForKeyDefaultBm:24] ? 1 : 0;
ret += [NSDictionary unsignedCharValueForKeyDefaultBm:58] ? 1 : 0;
ret += [NSDictionary shortValueForKeyDefaultBm:78] ? 1 : 0;
ret += [NSDictionary unsignedShortValueForKeyDefaultBm:69] ? 1 : 0;
ret += [NSDictionary intValueForKeyDefaultBm:44] ? 1 : 0;
ret += [NSDictionary unsignedIntValueForKeyDefaultBm:21] ? 1 : 0;
ret += [NSDictionary longValueForKeyDefaultBm:88] ? 1 : 0;
ret += [NSDictionary unsignedLongValueForKeyDefaultBm:80] ? 1 : 0;
ret += [NSDictionary longLongValueForKeyDefaultBm:76] ? 1 : 0;
ret += [NSDictionary unsignedLongLongValueForKeyDefaultBm:62] ? 1 : 0;
ret += [NSDictionary floatValueForKeyDefaultBm:36] ? 1 : 0;
ret += [NSDictionary doubleValueForKeyDefaultBm:50] ? 1 : 0;
ret += [NSDictionary integerValueForKeyDefaultBm:15] ? 1 : 0;
ret += [NSDictionary unsignedIntegerValueForKeyDefaultBm:11] ? 1 : 0;
ret += [NSDictionary numberValueForKeyDefaultBm:70] ? 1 : 0;
ret += [NSDictionary stringValueForKeyDefaultBm:21] ? 1 : 0;
ret += [NSMutableDictionary dictionaryWithPlistDataBm:95] ? 1 : 0;
ret += [NSMutableDictionary dictionaryWithPlistStringBm:82] ? 1 : 0;
ret += [NSMutableDictionary popObjectForKeyBm:82] ? 1 : 0;
ret += [NSMutableDictionary popEntriesForKeysBm:53] ? 1 : 0;
ret += [NSNumber numberWithStringBm:96] ? 1 : 0;
ret += [NSArray arrayWithPlistDataBm:41] ? 1 : 0;
ret += [NSArray arrayWithPlistStringBm:32] ? 1 : 0;
ret += [NSArray plistDataBm:32] ? 1 : 0;
ret += [NSArray plistStringBm:74] ? 1 : 0;
ret += [NSArray randomObjectBm:1] ? 1 : 0;
ret += [NSArray objectOrNilAtIndexBm:48] ? 1 : 0;
ret += [NSArray jsonStringEncodedBm:37] ? 1 : 0;
ret += [NSArray jsonPrettyStringEncodedBm:34] ? 1 : 0;
ret += [NSMutableArray arrayWithPlistDataBm:63] ? 1 : 0;
ret += [NSMutableArray arrayWithPlistStringBm:9] ? 1 : 0;
ret += [NSMutableArray removeFirstObjectBm:63] ? 1 : 0;
ret += [NSMutableArray removeLastObjectBm:19] ? 1 : 0;
ret += [NSMutableArray popFirstObjectBm:28] ? 1 : 0;
ret += [NSMutableArray popLastObjectBm:51] ? 1 : 0;
ret += [NSMutableArray appendObjectBm:27] ? 1 : 0;
ret += [NSMutableArray prependObjectBm:73] ? 1 : 0;
ret += [NSMutableArray appendObjectsBm:96] ? 1 : 0;
ret += [NSMutableArray prependObjectsBm:60] ? 1 : 0;
ret += [NSMutableArray insertObjectsAtindexBm:84] ? 1 : 0;
ret += [NSMutableArray reverseBm:59] ? 1 : 0;
ret += [NSMutableArray shuffleBm:8] ? 1 : 0;
ret += [NSObject performSelectorWithArgsBm:59] ? 1 : 0;
ret += [NSObject performSelectorWithArgsAfterdelayBm:94] ? 1 : 0;
ret += [NSObject performSelectorWithArgsOnMainThreadWaituntildoneBm:35] ? 1 : 0;
ret += [NSObject performSelectorWithArgsOnthreadWaituntildoneBm:83] ? 1 : 0;
ret += [NSObject performSelectorWithArgsInBackgroundBm:19] ? 1 : 0;
ret += [NSObject getReturnFromInvWithsigBm:54] ? 1 : 0;
ret += [NSObject setInvWithsigAndargsBm:32] ? 1 : 0;
ret += [NSObject performSelectorAfterdelayBm:89] ? 1 : 0;
ret += [NSObject swizzleInstanceMethodWithBm:28] ? 1 : 0;
ret += [NSObject swizzleClassMethodWithBm:30] ? 1 : 0;
ret += [NSObject setAssociateValueWithkeyBm:95] ? 1 : 0;
ret += [NSObject setAssociateWeakValueWithkeyBm:7] ? 1 : 0;
ret += [NSObject removeAssociatedValuesBm:14] ? 1 : 0;
ret += [NSObject getAssociatedValueForKeyBm:26] ? 1 : 0;
ret += [NSObject classNameBm:8] ? 1 : 0;
ret += [NSObject classNameBm:30] ? 1 : 0;
ret += [NSObject deepCopyBm:79] ? 1 : 0;
ret += [NSObject deepCopyWithArchiverUnarchiverBm:72] ? 1 : 0;
ret += [NSBundle preferredScalesBm:4] ? 1 : 0;
ret += [NSBundle pathForScaledResourceOftypeIndirectoryBm:54] ? 1 : 0;
ret += [NSBundle pathForScaledResourceOftypeBm:68] ? 1 : 0;
ret += [NSBundle pathForScaledResourceOftypeIndirectoryBm:59] ? 1 : 0;
ret += [NSKeyedUnarchiver unarchiveObjectWithDataExceptionBm:95] ? 1 : 0;
ret += [NSKeyedUnarchiver unarchiveObjectWithFileExceptionBm:75] ? 1 : 0;
ret += [NSThread addAutoreleasePoolToCurrentRunloopBm:3] ? 1 : 0;
ret += [NSData md2StringBm:80] ? 1 : 0;
ret += [NSData md2DataBm:53] ? 1 : 0;
ret += [NSData md4StringBm:66] ? 1 : 0;
ret += [NSData md4DataBm:25] ? 1 : 0;
ret += [NSData md5StringBm:80] ? 1 : 0;
ret += [NSData md5DataBm:52] ? 1 : 0;
ret += [NSData sha1StringBm:66] ? 1 : 0;
ret += [NSData sha1DataBm:8] ? 1 : 0;
ret += [NSData sha224StringBm:98] ? 1 : 0;
ret += [NSData sha224DataBm:40] ? 1 : 0;
ret += [NSData sha256StringBm:9] ? 1 : 0;
ret += [NSData sha256DataBm:78] ? 1 : 0;
ret += [NSData sha384StringBm:21] ? 1 : 0;
ret += [NSData sha384DataBm:67] ? 1 : 0;
ret += [NSData sha512StringBm:63] ? 1 : 0;
ret += [NSData sha512DataBm:41] ? 1 : 0;
ret += [NSData hmacStringUsingAlgWithkeyBm:28] ? 1 : 0;
ret += [NSData hmacDataUsingAlgWithkeyBm:75] ? 1 : 0;
ret += [NSData hmacMD5StringWithKeyBm:90] ? 1 : 0;
ret += [NSData hmacMD5DataWithKeyBm:39] ? 1 : 0;
ret += [NSData hmacSHA1StringWithKeyBm:60] ? 1 : 0;
ret += [NSData hmacSHA1DataWithKeyBm:8] ? 1 : 0;
ret += [NSData hmacSHA224StringWithKeyBm:47] ? 1 : 0;
ret += [NSData hmacSHA224DataWithKeyBm:58] ? 1 : 0;
ret += [NSData hmacSHA256StringWithKeyBm:74] ? 1 : 0;
ret += [NSData hmacSHA256DataWithKeyBm:74] ? 1 : 0;
ret += [NSData hmacSHA384StringWithKeyBm:38] ? 1 : 0;
ret += [NSData hmacSHA384DataWithKeyBm:27] ? 1 : 0;
ret += [NSData hmacSHA512StringWithKeyBm:79] ? 1 : 0;
ret += [NSData hmacSHA512DataWithKeyBm:39] ? 1 : 0;
ret += [NSData crc32StringBm:69] ? 1 : 0;
ret += [NSData crc32Bm:43] ? 1 : 0;
ret += [NSData aes256EncryptWithKeyIvBm:61] ? 1 : 0;
ret += [NSData aes256DecryptWithkeyIvBm:40] ? 1 : 0;
ret += [NSData utf8StringBm:98] ? 1 : 0;
ret += [NSData hexStringBm:22] ? 1 : 0;
ret += [NSData dataWithHexStringBm:3] ? 1 : 0;
ret += [NSData base64EncodedStringBm:83] ? 1 : 0;
ret += [NSData dataWithBase64EncodedStringBm:21] ? 1 : 0;
ret += [NSData jsonValueDecodedBm:15] ? 1 : 0;
ret += [NSData gzipInflateBm:22] ? 1 : 0;
ret += [NSData gzipDeflateBm:31] ? 1 : 0;
ret += [NSData zlibInflateBm:92] ? 1 : 0;
ret += [NSData zlibDeflateBm:22] ? 1 : 0;
ret += [NSData dataNamedBm:24] ? 1 : 0;
ret += [CALayer snapshotImageBm:5] ? 1 : 0;
ret += [CALayer snapshotPDFBm:89] ? 1 : 0;
ret += [CALayer setLayerShadowOffsetRadiusBm:26] ? 1 : 0;
ret += [CALayer removeAllSublayersBm:24] ? 1 : 0;
ret += [CALayer leftBm:66] ? 1 : 0;
ret += [CALayer setLeftBm:1] ? 1 : 0;
ret += [CALayer topBm:54] ? 1 : 0;
ret += [CALayer setTopBm:70] ? 1 : 0;
ret += [CALayer rightBm:91] ? 1 : 0;
ret += [CALayer setRightBm:77] ? 1 : 0;
ret += [CALayer bottomBm:29] ? 1 : 0;
ret += [CALayer setBottomBm:29] ? 1 : 0;
ret += [CALayer widthBm:78] ? 1 : 0;
ret += [CALayer setWidthBm:55] ? 1 : 0;
ret += [CALayer heightBm:96] ? 1 : 0;
ret += [CALayer setHeightBm:51] ? 1 : 0;
ret += [CALayer centerBm:46] ? 1 : 0;
ret += [CALayer setCenterBm:81] ? 1 : 0;
ret += [CALayer centerXBm:66] ? 1 : 0;
ret += [CALayer setCenterXBm:63] ? 1 : 0;
ret += [CALayer centerYBm:6] ? 1 : 0;
ret += [CALayer setCenterYBm:92] ? 1 : 0;
ret += [CALayer originBm:92] ? 1 : 0;
ret += [CALayer setOriginBm:3] ? 1 : 0;
ret += [CALayer frameSizeBm:65] ? 1 : 0;
ret += [CALayer setFrameSizeBm:32] ? 1 : 0;
ret += [CALayer transformRotationBm:77] ? 1 : 0;
ret += [CALayer setTransformRotationBm:26] ? 1 : 0;
ret += [CALayer transformRotationXBm:75] ? 1 : 0;
ret += [CALayer setTransformRotationXBm:96] ? 1 : 0;
ret += [CALayer transformRotationYBm:92] ? 1 : 0;
ret += [CALayer setTransformRotationYBm:60] ? 1 : 0;
ret += [CALayer transformRotationZBm:21] ? 1 : 0;
ret += [CALayer setTransformRotationZBm:87] ? 1 : 0;
ret += [CALayer transformScaleXBm:60] ? 1 : 0;
ret += [CALayer setTransformScaleXBm:20] ? 1 : 0;
ret += [CALayer transformScaleYBm:27] ? 1 : 0;
ret += [CALayer setTransformScaleYBm:40] ? 1 : 0;
ret += [CALayer transformScaleZBm:89] ? 1 : 0;
ret += [CALayer setTransformScaleZBm:67] ? 1 : 0;
ret += [CALayer transformScaleBm:96] ? 1 : 0;
ret += [CALayer setTransformScaleBm:21] ? 1 : 0;
ret += [CALayer transformTranslationXBm:94] ? 1 : 0;
ret += [CALayer setTransformTranslationXBm:65] ? 1 : 0;
ret += [CALayer transformTranslationYBm:58] ? 1 : 0;
ret += [CALayer setTransformTranslationYBm:35] ? 1 : 0;
ret += [CALayer transformTranslationZBm:51] ? 1 : 0;
ret += [CALayer setTransformTranslationZBm:38] ? 1 : 0;
ret += [CALayer transformDepthBm:51] ? 1 : 0;
ret += [CALayer setTransformDepthBm:98] ? 1 : 0;
ret += [CALayer contentModeBm:38] ? 1 : 0;
ret += [CALayer setContentModeBm:32] ? 1 : 0;
ret += [CALayer addFadeAnimationWithDurationCurveBm:99] ? 1 : 0;
ret += [CALayer removePreviousFadeAnimationBm:47] ? 1 : 0;
ret += [GPUImageMedianFilter initBmBm:60] ? 1 : 0;
ret += [AFXMLDocumentResponseSerializer serializerBmBm:25] ? 1 : 0;
ret += [AFXMLDocumentResponseSerializer serializerWithXMLDocumentOptionsBmBm:9] ? 1 : 0;
ret += [AFXMLDocumentResponseSerializer initBmBm:55] ? 1 : 0;
ret += [AFXMLDocumentResponseSerializer responseObjectForResponseDataErrorBmBm:8] ? 1 : 0;
ret += [AFXMLDocumentResponseSerializer initWithCoderBmBm:60] ? 1 : 0;
ret += [AFXMLDocumentResponseSerializer encodeWithCoderBmBm:90] ? 1 : 0;
ret += [AFXMLDocumentResponseSerializer copyWithZoneBmBm:72] ? 1 : 0;
ret += [TOActivityCroppedImageProvider initWithImageCropframeAngleCircularBmBm:43] ? 1 : 0;
ret += [TOActivityCroppedImageProvider activityViewControllerPlaceholderItemBmBm:23] ? 1 : 0;
ret += [TOActivityCroppedImageProvider activityViewControllerItemforactivitytypeBmBm:97] ? 1 : 0;
ret += [TOActivityCroppedImageProvider itemBmBm:77] ? 1 : 0;
ret += [UIButton rac_commandBmBm:83] ? 1 : 0;
ret += [UIButton setRac_commandBmBm:55] ? 1 : 0;
ret += [UIButton rac_hijackActionAndTargetIfNeededBmBm:8] ? 1 : 0;
ret += [UIButton rac_commandPerformActionBmBm:25] ? 1 : 0;
ret += [GPUImageLuminosityBlendFilter initBmBm:68] ? 1 : 0;
ret += [GPUImageMotionDetector initBmBm:60] ? 1 : 0;
ret += [GPUImageMotionDetector setLowPassFilterStrengthBmBm:40] ? 1 : 0;
ret += [GPUImageMotionDetector lowPassFilterStrengthBmBm:13] ? 1 : 0;
ret += [GPUImageSourceOverBlendFilter initBmBm:93] ? 1 : 0;
ret += [GPUImageWeakPixelInclusionFilter initBmBm:78] ? 1 : 0;
ret += [UIGestureRecognizer rac_gestureSignalBmBm:50] ? 1 : 0;
ret += [NSString rac_readContentsOfURLUsedencodingSchedulerBmBm:35] ? 1 : 0;
ret += [RACSignal emptyBmBm:5] ? 1 : 0;
ret += [RACSignal returnBmBm:95] ? 1 : 0;
ret += [RACSignal bindBmBm:89] ? 1 : 0;
ret += [RACSignal concatBmBm:81] ? 1 : 0;
ret += [RACSignal zipWithBmBm:14] ? 1 : 0;
ret += [YYClassIvarInfo initWithIvarBmBm:81] ? 1 : 0;
ret += [GPUImageFilterGroup initBmBm:45] ? 1 : 0;
ret += [GPUImageFilterGroup addFilterBmBm:59] ? 1 : 0;
ret += [GPUImageFilterGroup filterAtIndexBmBm:60] ? 1 : 0;
ret += [GPUImageFilterGroup filterCountBmBm:21] ? 1 : 0;
ret += [GPUImageFilterGroup useNextFrameForImageCaptureBmBm:47] ? 1 : 0;
ret += [GPUImageFilterGroup newCGImageFromCurrentlyProcessedOutputBmBm:64] ? 1 : 0;
ret += [GPUImageFilterGroup setTargetToIgnoreForUpdatesBmBm:23] ? 1 : 0;
ret += [GPUImageFilterGroup addTargetAttexturelocationBmBm:86] ? 1 : 0;
ret += [GPUImageFilterGroup removeTargetBmBm:43] ? 1 : 0;
ret += [GPUImageFilterGroup removeAllTargetsBmBm:37] ? 1 : 0;
ret += [GPUImageFilterGroup targetsBmBm:71] ? 1 : 0;
ret += [GPUImageFilterGroup setFrameProcessingCompletionBlockBmBm:7] ? 1 : 0;
ret += [GPUImageFilterGroup frameProcessingCompletionBlockBmBm:16] ? 1 : 0;
ret += [GPUImageFilterGroup newFrameReadyAtTimeAtindexBmBm:55] ? 1 : 0;
ret += [GPUImageFilterGroup setInputFramebufferAtindexBmBm:27] ? 1 : 0;
ret += [GPUImageFilterGroup nextAvailableTextureIndexBmBm:16] ? 1 : 0;
ret += [GPUImageFilterGroup setInputSizeAtindexBmBm:65] ? 1 : 0;
ret += [GPUImageFilterGroup setInputRotationAtindexBmBm:66] ? 1 : 0;
ret += [GPUImageFilterGroup forceProcessingAtSizeBmBm:4] ? 1 : 0;
ret += [GPUImageFilterGroup forceProcessingAtSizeRespectingAspectRatioBmBm:55] ? 1 : 0;
ret += [GPUImageFilterGroup maximumOutputSizeBmBm:92] ? 1 : 0;
ret += [GPUImageFilterGroup endProcessingBmBm:94] ? 1 : 0;
ret += [GPUImageFilterGroup wantsMonochromeInputBmBm:21] ? 1 : 0;
ret += [GPUImageFilterGroup setCurrentlyReceivingMonochromeInputBmBm:13] ? 1 : 0;
ret += [UITableView previousIndexPathOfIndexPathBmBm:30] ? 1 : 0;
ret += [WKWebView sessionManagerBmBm:26] ? 1 : 0;
ret += [WKWebView setSessionManagerBmBm:23] ? 1 : 0;
ret += [WKWebView responseSerializerBmBm:94] ? 1 : 0;
ret += [WKWebView setResponseSerializerBmBm:31] ? 1 : 0;
ret += [WKWebView loadRequestNavigationProgressSuccessFailureBmBm:52] ? 1 : 0;
ret += [WKWebView loadRequestNavigationMimetypeTextencodingnameProgressSuccessFailureBmBm:66] ? 1 : 0;
ret += [RACOneTuple initBmBm:4] ? 1 : 0;
ret += [RACOneTuple initWithBackingArrayBmBm:67] ? 1 : 0;
ret += [RACOneTuple tupleByAddingObjectBmBm:96] ? 1 : 0;
ret += [RACOneTuple packBmBm:1] ? 1 : 0;
ret += [RACOneTuple isEqualBmBm:12] ? 1 : 0;
ret += [MASViewAttribute initWithViewLayoutattributeBmBm:90] ? 1 : 0;
ret += [MASViewAttribute initWithViewItemLayoutattributeBmBm:65] ? 1 : 0;
ret += [MASViewAttribute isSizeAttributeBmBm:77] ? 1 : 0;
ret += [MASViewAttribute isEqualBmBm:28] ? 1 : 0;
ret += [MASViewAttribute hashBmBm:78] ? 1 : 0;
ret += [GPUImageMovieWriter initWithMovieURLSizeBmBm:85] ? 1 : 0;
ret += [GPUImageMovieWriter initWithMovieURLSizeFiletypeOutputsettingsBmBm:26] ? 1 : 0;
ret += [GPUImageMovieWriter deallocBmBm:70] ? 1 : 0;
ret += [GPUImageMovieWriter initializeMovieWithOutputSettingsBmBm:82] ? 1 : 0;
ret += [GPUImageMovieWriter setEncodingLiveVideoBmBm:69] ? 1 : 0;
ret += [GPUImageMovieWriter startRecordingBmBm:86] ? 1 : 0;
ret += [GPUImageMovieWriter startRecordingInOrientationBmBm:57] ? 1 : 0;
ret += [GPUImageMovieWriter cancelRecordingBmBm:73] ? 1 : 0;
ret += [GPUImageMovieWriter finishRecordingBmBm:32] ? 1 : 0;
ret += [GPUImageMovieWriter finishRecordingWithCompletionHandlerBmBm:51] ? 1 : 0;
ret += [GPUImageMovieWriter processAudioBufferBmBm:84] ? 1 : 0;
ret += [GPUImageMovieWriter enableSynchronizationCallbacksBmBm:30] ? 1 : 0;
ret += [GPUImageMovieWriter createDataFBOBmBm:68] ? 1 : 0;
ret += [GPUImageMovieWriter destroyDataFBOBmBm:0] ? 1 : 0;
ret += [GPUImageMovieWriter setFilterFBOBmBm:97] ? 1 : 0;
ret += [GPUImageMovieWriter renderAtInternalSizeUsingFramebufferBmBm:30] ? 1 : 0;
ret += [GPUImageMovieWriter newFrameReadyAtTimeAtindexBmBm:82] ? 1 : 0;
ret += [GPUImageMovieWriter nextAvailableTextureIndexBmBm:42] ? 1 : 0;
ret += [GPUImageMovieWriter setInputFramebufferAtindexBmBm:21] ? 1 : 0;
ret += [GPUImageMovieWriter setInputRotationAtindexBmBm:56] ? 1 : 0;
ret += [GPUImageMovieWriter setInputSizeAtindexBmBm:42] ? 1 : 0;
ret += [GPUImageMovieWriter maximumOutputSizeBmBm:35] ? 1 : 0;
ret += [GPUImageMovieWriter endProcessingBmBm:88] ? 1 : 0;
ret += [GPUImageMovieWriter shouldIgnoreUpdatesToThisTargetBmBm:57] ? 1 : 0;
ret += [GPUImageMovieWriter wantsMonochromeInputBmBm:24] ? 1 : 0;
ret += [GPUImageMovieWriter setCurrentlyReceivingMonochromeInputBmBm:42] ? 1 : 0;
ret += [GPUImageMovieWriter setHasAudioTrackBmBm:15] ? 1 : 0;
ret += [GPUImageMovieWriter setHasAudioTrackAudiosettingsBmBm:30] ? 1 : 0;
ret += [GPUImageMovieWriter metaDataBmBm:75] ? 1 : 0;
ret += [GPUImageMovieWriter setMetaDataBmBm:35] ? 1 : 0;
ret += [GPUImageMovieWriter durationBmBm:86] ? 1 : 0;
ret += [GPUImageMovieWriter transformBmBm:78] ? 1 : 0;
ret += [GPUImageMovieWriter setTransformBmBm:24] ? 1 : 0;
ret += [GPUImageMovieWriter assetWriterBmBm:86] ? 1 : 0;
ret += [GPUImageUnsharpMaskFilter initBmBm:40] ? 1 : 0;
ret += [GPUImageUnsharpMaskFilter setBlurRadiusInPixelsBmBm:79] ? 1 : 0;
ret += [GPUImageUnsharpMaskFilter blurRadiusInPixelsBmBm:42] ? 1 : 0;
ret += [GPUImageUnsharpMaskFilter setIntensityBmBm:70] ? 1 : 0;
ret += [NSEnumerator rac_sequenceBmBm:12] ? 1 : 0;
ret += [NSObject rac_valuesForKeyPathObserverBmBm:92] ? 1 : 0;
ret += [NSObject rac_valuesAndChangesForKeyPathOptionsObserverBmBm:23] ? 1 : 0;
ret += [GPUImageLanczosResamplingFilter initBmBm:16] ? 1 : 0;
ret += [GPUImageLanczosResamplingFilter setInputSizeAtindexBmBm:6] ? 1 : 0;
ret += [GPUImageLanczosResamplingFilter setupFilterForSizeBmBm:96] ? 1 : 0;
ret += [GPUImageLanczosResamplingFilter renderToTextureWithVerticesTexturecoordinatesBmBm:81] ? 1 : 0;
ret += [RACKVOChannel currentThreadDataBmBm:9] ? 1 : 0;
ret += [RACKVOChannel initWithTargetKeypathNilvalueBmBm:53] ? 1 : 0;
ret += [RACKVOChannel createCurrentThreadDataBmBm:20] ? 1 : 0;
ret += [RACKVOChannel destroyCurrentThreadDataBmBm:94] ? 1 : 0;
ret += [RACReturnSignal setNameBmBm:27] ? 1 : 0;
ret += [RACReturnSignal nameBmBm:21] ? 1 : 0;
ret += [RACReturnSignal returnBmBm:62] ? 1 : 0;
ret += [RACReturnSignal subscribeBmBm:29] ? 1 : 0;
ret += [GPUImageNobleCornerDetectionFilter initBmBm:32] ? 1 : 0;
ret += [IQBarButtonItemConfiguration initWithBarButtonSystemItemActionBmBm:91] ? 1 : 0;
ret += [IQBarButtonItemConfiguration initWithImageActionBmBm:10] ? 1 : 0;
ret += [IQBarButtonItemConfiguration initWithTitleActionBmBm:40] ? 1 : 0;
ret += [GPUImageCannyEdgeDetectionFilter initBmBm:7] ? 1 : 0;
ret += [GPUImageCannyEdgeDetectionFilter setBlurRadiusInPixelsBmBm:22] ? 1 : 0;
ret += [GPUImageCannyEdgeDetectionFilter blurRadiusInPixelsBmBm:32] ? 1 : 0;
ret += [GPUImageCannyEdgeDetectionFilter setBlurTexelSpacingMultiplierBmBm:28] ? 1 : 0;
ret += [GPUImageCannyEdgeDetectionFilter blurTexelSpacingMultiplierBmBm:78] ? 1 : 0;
ret += [GPUImageCannyEdgeDetectionFilter setTexelWidthBmBm:83] ? 1 : 0;
ret += [GPUImageCannyEdgeDetectionFilter texelWidthBmBm:64] ? 1 : 0;
ret += [GPUImageCannyEdgeDetectionFilter setTexelHeightBmBm:80] ? 1 : 0;
ret += [GPUImageCannyEdgeDetectionFilter texelHeightBmBm:42] ? 1 : 0;
ret += [GPUImageCannyEdgeDetectionFilter setUpperThresholdBmBm:78] ? 1 : 0;
ret += [GPUImageCannyEdgeDetectionFilter upperThresholdBmBm:54] ? 1 : 0;
ret += [GPUImageCannyEdgeDetectionFilter setLowerThresholdBmBm:95] ? 1 : 0;
ret += [GPUImageCannyEdgeDetectionFilter lowerThresholdBmBm:82] ? 1 : 0;
ret += [GPUImageLuminanceThresholdFilter initBmBm:84] ? 1 : 0;
ret += [GPUImageLuminanceThresholdFilter setThresholdBmBm:85] ? 1 : 0;
ret += [GPUImageGrayscaleFilter renderToTextureWithVerticesTexturecoordinatesBmBm:76] ? 1 : 0;
ret += [GPUImageGrayscaleFilter wantsMonochromeInputBmBm:98] ? 1 : 0;
ret += [GPUImageGrayscaleFilter providesMonochromeOutputBmBm:34] ? 1 : 0;
ret += [GPUImageGrayscaleFilter initBmBm:31] ? 1 : 0;
ret += [UIGestureRecognizer initWithActionBlockBmBm:71] ? 1 : 0;
ret += [UIGestureRecognizer addActionBlockBmBm:27] ? 1 : 0;
ret += [UIGestureRecognizer removeAllActionBlocksBmBm:10] ? 1 : 0;
ret += [UIGestureRecognizer _yy_allUIGestureRecognizerBlockTargetsBmBm:70] ? 1 : 0;
ret += [IQKeyboardReturnKeyHandler initBmBm:36] ? 1 : 0;
ret += [IQKeyboardReturnKeyHandler initWithViewControllerBmBm:85] ? 1 : 0;
ret += [IQKeyboardReturnKeyHandler textFieldViewCachedInfoBmBm:45] ? 1 : 0;
ret += [IQKeyboardReturnKeyHandler addResponderFromViewBmBm:97] ? 1 : 0;
ret += [IQKeyboardReturnKeyHandler removeResponderFromViewBmBm:40] ? 1 : 0;
ret += [IQKeyboardReturnKeyHandler removeTextFieldViewBmBm:86] ? 1 : 0;
ret += [IQKeyboardReturnKeyHandler addTextFieldViewBmBm:27] ? 1 : 0;
ret += [IQKeyboardReturnKeyHandler updateReturnKeyTypeOnTextFieldBmBm:79] ? 1 : 0;
ret += [IQKeyboardReturnKeyHandler goToNextResponderOrResignBmBm:54] ? 1 : 0;
ret += [IQKeyboardReturnKeyHandler textFieldShouldBeginEditingBmBm:34] ? 1 : 0;
ret += [IQKeyboardReturnKeyHandler textFieldDidBeginEditingBmBm:75] ? 1 : 0;
ret += [IQKeyboardReturnKeyHandler textFieldShouldEndEditingBmBm:97] ? 1 : 0;
ret += [IQKeyboardReturnKeyHandler textFieldDidEndEditingBmBm:87] ? 1 : 0;
ret += [IQKeyboardReturnKeyHandler textFieldDidEndEditingReasonBmBm:7] ? 1 : 0;
ret += [IQKeyboardReturnKeyHandler textFieldShouldchangecharactersinrangeReplacementstringBmBm:76] ? 1 : 0;
ret += [IQKeyboardReturnKeyHandler textFieldShouldClearBmBm:22] ? 1 : 0;
ret += [IQKeyboardReturnKeyHandler textFieldShouldReturnBmBm:2] ? 1 : 0;
ret += [IQKeyboardReturnKeyHandler textViewShouldBeginEditingBmBm:82] ? 1 : 0;
ret += [IQKeyboardReturnKeyHandler textViewShouldEndEditingBmBm:16] ? 1 : 0;
ret += [IQKeyboardReturnKeyHandler textViewDidBeginEditingBmBm:10] ? 1 : 0;
ret += [IQKeyboardReturnKeyHandler textViewDidEndEditingBmBm:83] ? 1 : 0;
ret += [IQKeyboardReturnKeyHandler textViewShouldchangetextinrangeReplacementtextBmBm:90] ? 1 : 0;
ret += [IQKeyboardReturnKeyHandler textViewDidChangeBmBm:67] ? 1 : 0;
ret += [IQKeyboardReturnKeyHandler textViewDidChangeSelectionBmBm:37] ? 1 : 0;
ret += [IQKeyboardReturnKeyHandler textViewShouldinteractwithurlInrangeInteractionBmBm:35] ? 1 : 0;
ret += [IQKeyboardReturnKeyHandler textViewShouldinteractwithtextattachmentInrangeInteractionBmBm:67] ? 1 : 0;
ret += [IQKeyboardReturnKeyHandler textViewShouldinteractwithurlInrangeBmBm:73] ? 1 : 0;
ret += [IQKeyboardReturnKeyHandler textViewShouldinteractwithtextattachmentInrangeBmBm:82] ? 1 : 0;
ret += [IQKeyboardReturnKeyHandler deallocBmBm:61] ? 1 : 0;
ret += [DGActivityIndicatorLineScalePulseOutRapidAnimation setupAnimationInLayerWithsizeTintcolorBmBm:59] ? 1 : 0;
ret += [DGActivityIndicatorBallBeatAnimation setupAnimationInLayerWithsizeTintcolorBmBm:24] ? 1 : 0;
ret += [RACStringSequence sequenceWithStringOffsetBmBm:31] ? 1 : 0;
ret += [RACStringSequence headBmBm:39] ? 1 : 0;
ret += [RACStringSequence tailBmBm:45] ? 1 : 0;
ret += [RACStringSequence arrayBmBm:33] ? 1 : 0;
ret += [RACStringSequence descriptionBmBm:26] ? 1 : 0;
ret += [AFNetworkReachabilityManager sharedManagerBmBm:33] ? 1 : 0;
ret += [AFNetworkReachabilityManager managerForDomainBmBm:77] ? 1 : 0;
ret += [AFNetworkReachabilityManager managerForAddressBmBm:41] ? 1 : 0;
ret += [AFNetworkReachabilityManager managerBmBm:92] ? 1 : 0;
ret += [AFNetworkReachabilityManager initWithReachabilityBmBm:30] ? 1 : 0;
ret += [AFNetworkReachabilityManager initBmBm:89] ? 1 : 0;
ret += [AFNetworkReachabilityManager deallocBmBm:56] ? 1 : 0;
ret += [AFNetworkReachabilityManager isReachableBmBm:29] ? 1 : 0;
ret += [AFNetworkReachabilityManager isReachableViaWWANBmBm:93] ? 1 : 0;
ret += [AFNetworkReachabilityManager isReachableViaWiFiBmBm:39] ? 1 : 0;
ret += [AFNetworkReachabilityManager startMonitoringBmBm:40] ? 1 : 0;
ret += [AFNetworkReachabilityManager stopMonitoringBmBm:87] ? 1 : 0;
ret += [AFNetworkReachabilityManager localizedNetworkReachabilityStatusStringBmBm:41] ? 1 : 0;
ret += [AFNetworkReachabilityManager setReachabilityStatusChangeBlockBmBm:15] ? 1 : 0;
ret += [AFNetworkReachabilityManager keyPathsForValuesAffectingValueForKeyBmBm:14] ? 1 : 0;
ret += [GPUImageCrosshatchFilter initBmBm:25] ? 1 : 0;
ret += [GPUImageCrosshatchFilter setCrossHatchSpacingBmBm:79] ? 1 : 0;
ret += [GPUImageCrosshatchFilter setLineWidthBmBm:78] ? 1 : 0;
ret += [RACFiveTuple initBmBm:35] ? 1 : 0;
ret += [RACFiveTuple initWithBackingArrayBmBm:52] ? 1 : 0;
ret += [RACFiveTuple packFirstSecondThirdFourthBmBm:14] ? 1 : 0;
ret += [RACFiveTuple isEqualBmBm:69] ? 1 : 0;
ret += [UITableViewCell rac_prepareForReuseSignalBmBm:15] ? 1 : 0;
ret += [NSData rac_readContentsOfURLOptionsSchedulerBmBm:15] ? 1 : 0;
ret += [GPUImagePosterizeFilter initBmBm:7] ? 1 : 0;
ret += [GPUImagePosterizeFilter setColorLevelsBmBm:78] ? 1 : 0;
ret += [NSObject rac_signalForSelectorBmBm:39] ? 1 : 0;
ret += [NSObject rac_signalForSelectorFromprotocolBmBm:42] ? 1 : 0;
ret += [NSObject rac_observeKeyPathOptionsObserverBlockBmBm:72] ? 1 : 0;
ret += [AFCompoundResponseSerializer compoundSerializerWithResponseSerializersBmBm:64] ? 1 : 0;
ret += [AFCompoundResponseSerializer responseObjectForResponseDataErrorBmBm:54] ? 1 : 0;
ret += [AFCompoundResponseSerializer supportsSecureCodingBmBm:83] ? 1 : 0;
ret += [AFCompoundResponseSerializer initWithCoderBmBm:10] ? 1 : 0;
ret += [AFCompoundResponseSerializer encodeWithCoderBmBm:16] ? 1 : 0;
ret += [AFCompoundResponseSerializer copyWithZoneBmBm:51] ? 1 : 0;
ret += [GPUImagePixellateFilter initBmBm:32] ? 1 : 0;
ret += [GPUImagePixellateFilter initWithFragmentShaderFromStringBmBm:43] ? 1 : 0;
ret += [GPUImagePixellateFilter adjustAspectRatioBmBm:37] ? 1 : 0;
ret += [GPUImagePixellateFilter setInputRotationAtindexBmBm:97] ? 1 : 0;
ret += [GPUImagePixellateFilter forceProcessingAtSizeBmBm:49] ? 1 : 0;
ret += [GPUImagePixellateFilter setInputSizeAtindexBmBm:2] ? 1 : 0;
ret += [GPUImagePixellateFilter setFractionalWidthOfAPixelBmBm:93] ? 1 : 0;
ret += [GPUImagePixellateFilter setAspectRatioBmBm:12] ? 1 : 0;
ret += [RACSignal createSignalBmBm:87] ? 1 : 0;
ret += [RACSignal errorBmBm:97] ? 1 : 0;
ret += [RACSignal neverBmBm:61] ? 1 : 0;
ret += [RACSignal startEagerlyWithSchedulerBlockBmBm:64] ? 1 : 0;
ret += [RACSignal startLazilyWithSchedulerBlockBmBm:52] ? 1 : 0;
ret += [RACSignal descriptionBmBm:98] ? 1 : 0;
ret += [UIColor colorWithHueSaturationLightnessAlphaBmBm:57] ? 1 : 0;
ret += [UIColor colorWithCyanMagentaYellowBlackAlphaBmBm:20] ? 1 : 0;
ret += [UIColor colorWithRGBBmBm:15] ? 1 : 0;
ret += [UIColor colorWithRGBABmBm:32] ? 1 : 0;
ret += [UIColor colorWithRGBAlphaBmBm:1] ? 1 : 0;
ret += [UIColor rgbValueBmBm:94] ? 1 : 0;
ret += [UIColor rgbaValueBmBm:10] ? 1 : 0;
ret += [UIColor colorWithHexStringBmBm:95] ? 1 : 0;
ret += [UIColor hexStringBmBm:9] ? 1 : 0;
ret += [UIColor hexStringWithAlphaBmBm:82] ? 1 : 0;
ret += [UIColor hexStringWithAlphaBmBm:63] ? 1 : 0;
ret += [UIColor colorByAddColorBlendmodeBmBm:92] ? 1 : 0;
ret += [UIColor colorByChangeHueSaturationBrightnessAlphaBmBm:18] ? 1 : 0;
ret += [UIColor getHueSaturationLightnessAlphaBmBm:45] ? 1 : 0;
ret += [UIColor getCyanMagentaYellowBlackAlphaBmBm:90] ? 1 : 0;
ret += [UIColor redBmBm:71] ? 1 : 0;
ret += [UIColor greenBmBm:28] ? 1 : 0;
ret += [UIColor blueBmBm:75] ? 1 : 0;
ret += [UIColor alphaBmBm:25] ? 1 : 0;
ret += [UIColor hueBmBm:27] ? 1 : 0;
ret += [UIColor saturationBmBm:99] ? 1 : 0;
ret += [UIColor brightnessBmBm:54] ? 1 : 0;
ret += [UIColor colorSpaceModelBmBm:5] ? 1 : 0;
ret += [UIColor colorSpaceStringBmBm:61] ? 1 : 0;
ret += [GPUImageMovie initWithURLBmBm:15] ? 1 : 0;
ret += [GPUImageMovie initWithAssetBmBm:72] ? 1 : 0;
ret += [GPUImageMovie initWithPlayerItemBmBm:29] ? 1 : 0;
ret += [GPUImageMovie yuvConversionSetupBmBm:13] ? 1 : 0;
ret += [GPUImageMovie deallocBmBm:6] ? 1 : 0;
ret += [GPUImageMovie enableSynchronizedEncodingUsingMovieWriterBmBm:17] ? 1 : 0;
ret += [GPUImageMovie startProcessingBmBm:64] ? 1 : 0;
ret += [GPUImageMovie createAssetReaderBmBm:85] ? 1 : 0;
ret += [GPUImageMovie processAssetBmBm:29] ? 1 : 0;
ret += [GPUImageMovie processPlayerItemBmBm:39] ? 1 : 0;
ret += [GPUImageMovie outputMediaDataWillChangeBmBm:66] ? 1 : 0;
ret += [GPUImageMovie displayLinkCallbackBmBm:91] ? 1 : 0;
ret += [GPUImageMovie readNextVideoFrameFromOutputBmBm:22] ? 1 : 0;
ret += [GPUImageMovie readNextAudioSampleFromOutputBmBm:9] ? 1 : 0;
ret += [GPUImageMovie processMovieFrameBmBm:9] ? 1 : 0;
ret += [GPUImageMovie progressBmBm:35] ? 1 : 0;
ret += [GPUImageMovie processMovieFrameWithsampletimeBmBm:66] ? 1 : 0;
ret += [GPUImageMovie endProcessingBmBm:14] ? 1 : 0;
ret += [GPUImageMovie cancelProcessingBmBm:60] ? 1 : 0;
ret += [GPUImageMovie convertYUVToRGBOutputBmBm:4] ? 1 : 0;
ret += [GPUImageMovie assetReaderBmBm:99] ? 1 : 0;
ret += [GPUImageMovie audioEncodingIsFinishedBmBm:45] ? 1 : 0;
ret += [GPUImageMovie videoEncodingIsFinishedBmBm:64] ? 1 : 0;
ret += [GPUImageLuminanceRangeFilter initBmBm:59] ? 1 : 0;
ret += [GPUImageLuminanceRangeFilter setRangeReductionFactorBmBm:32] ? 1 : 0;
ret += [AppDelegate applicationDidfinishlaunchingwithoptionsBm:21] ? 1 : 0;
ret += [AppDelegate applicationWillResignActiveBm:38] ? 1 : 0;
ret += [AppDelegate applicationDidEnterBackgroundBm:37] ? 1 : 0;
ret += [AppDelegate applicationWillEnterForegroundBm:30] ? 1 : 0;
ret += [AppDelegate applicationDidBecomeActiveBm:50] ? 1 : 0;
ret += [AppDelegate applicationWillTerminateBm:54] ? 1 : 0;
ret += [DGActivityIndicatorRotatingSquaresAnimation setupAnimationInLayerWithsizeTintcolorBmBm:60] ? 1 : 0;
ret += [UITextField rac_textSignalBmBm:11] ? 1 : 0;
ret += [UITextField rac_newTextChannelBmBm:2] ? 1 : 0;
ret += [DGActivityIndicatorCookieTerminatorAnimation setupAnimationInLayerWithsizeTintcolorBmBm:90] ? 1 : 0;
ret += [UIImage keyboardLeftImageBmBm:19] ? 1 : 0;
ret += [UIImage keyboardRightImageBmBm:50] ? 1 : 0;
ret += [UIImage keyboardUpImageBmBm:45] ? 1 : 0;
ret += [UIImage keyboardDownImageBmBm:59] ? 1 : 0;
ret += [UIImage keyboardPreviousImageBmBm:58] ? 1 : 0;
ret += [UIImage keyboardNextImageBmBm:12] ? 1 : 0;
ret += [RACKVOChannel objectForKeyedSubscriptBmBm:71] ? 1 : 0;
ret += [RACKVOChannel setObjectForkeyedsubscriptBmBm:25] ? 1 : 0;
ret += [RACCompoundDisposable isDisposedBmBm:60] ? 1 : 0;
ret += [RACCompoundDisposable compoundDisposableBmBm:1] ? 1 : 0;
ret += [RACCompoundDisposable compoundDisposableWithDisposablesBmBm:5] ? 1 : 0;
ret += [RACCompoundDisposable initBmBm:59] ? 1 : 0;
ret += [RACCompoundDisposable initWithDisposablesBmBm:27] ? 1 : 0;
ret += [RACCompoundDisposable initWithBlockBmBm:30] ? 1 : 0;
ret += [RACCompoundDisposable deallocBmBm:41] ? 1 : 0;
ret += [RACCompoundDisposable addDisposableBmBm:79] ? 1 : 0;
ret += [RACCompoundDisposable removeDisposableBmBm:82] ? 1 : 0;
ret += [RACCompoundDisposable disposeBmBm:1] ? 1 : 0;
ret += [GPUImageNormalBlendFilter initBmBm:10] ? 1 : 0;
ret += [GPUImagePerlinNoiseFilter initBmBm:32] ? 1 : 0;
ret += [GPUImagePerlinNoiseFilter setScaleBmBm:34] ? 1 : 0;
ret += [GPUImagePerlinNoiseFilter setColorStartBmBm:81] ? 1 : 0;
ret += [GPUImagePerlinNoiseFilter setColorFinishBmBm:53] ? 1 : 0;
ret += [RACQueueScheduler initWithNameQueueBmBm:16] ? 1 : 0;
ret += [RACQueueScheduler deallocBmBm:23] ? 1 : 0;
ret += [RACQueueScheduler wallTimeWithDateBmBm:87] ? 1 : 0;
ret += [RACQueueScheduler scheduleBmBm:45] ? 1 : 0;
ret += [RACQueueScheduler afterScheduleBmBm:84] ? 1 : 0;
ret += [RACQueueScheduler afterRepeatingeveryWithleewayScheduleBmBm:95] ? 1 : 0;
ret += [DGActivityIndicatorBallClipRotateMultipleAnimation setupAnimationInLayerWithsizeTintcolorBmBm:78] ? 1 : 0;
ret += [DGActivityIndicatorBallClipRotateMultipleAnimation createAnimationInDurationWithtimingfunctionReverseBmBm:71] ? 1 : 0;
ret += [TOCroppedImageAttributes initWithCroppedFrameAngleOriginalimagesizeBmBm:2] ? 1 : 0;
ret += [UIScreen screenScaleBmBm:17] ? 1 : 0;
ret += [UIScreen currentBoundsBmBm:77] ? 1 : 0;
ret += [UIScreen boundsForOrientationBmBm:75] ? 1 : 0;
ret += [UIScreen sizeInPixelBmBm:62] ? 1 : 0;
ret += [UIScreen pixelsPerInchBmBm:61] ? 1 : 0;
ret += [GPUImageTextureOutput initBmBm:36] ? 1 : 0;
ret += [GPUImageTextureOutput doneWithTextureBmBm:53] ? 1 : 0;
ret += [GPUImageTextureOutput newFrameReadyAtTimeAtindexBmBm:68] ? 1 : 0;
ret += [GPUImageTextureOutput nextAvailableTextureIndexBmBm:7] ? 1 : 0;
ret += [GPUImageTextureOutput setInputFramebufferAtindexBmBm:44] ? 1 : 0;
ret += [GPUImageTextureOutput setInputRotationAtindexBmBm:68] ? 1 : 0;
ret += [GPUImageTextureOutput setInputSizeAtindexBmBm:32] ? 1 : 0;
ret += [GPUImageTextureOutput maximumOutputSizeBmBm:84] ? 1 : 0;
ret += [GPUImageTextureOutput endProcessingBmBm:88] ? 1 : 0;
ret += [GPUImageTextureOutput shouldIgnoreUpdatesToThisTargetBmBm:11] ? 1 : 0;
ret += [GPUImageTextureOutput wantsMonochromeInputBmBm:12] ? 1 : 0;
ret += [GPUImageTextureOutput setCurrentlyReceivingMonochromeInputBmBm:5] ? 1 : 0;
ret += [UITableViewHeaderFooterView rac_prepareForReuseSignalBmBm:56] ? 1 : 0;
ret += [GPUImageAlphaBlendFilter initBmBm:96] ? 1 : 0;
ret += [GPUImageAlphaBlendFilter setMixBmBm:3] ? 1 : 0;
ret += [UIView viewContainingControllerBmBm:24] ? 1 : 0;
ret += [UIView topMostControllerBmBm:26] ? 1 : 0;
ret += [UIView parentContainerViewControllerBmBm:11] ? 1 : 0;
ret += [UIView superviewOfClassTypeBmBm:32] ? 1 : 0;
ret += [UIView superviewOfClassTypeBelowviewBmBm:80] ? 1 : 0;
ret += [UIView _IQcanBecomeFirstResponderBmBm:65] ? 1 : 0;
ret += [UIView responderSiblingsBmBm:65] ? 1 : 0;
ret += [UIView deepResponderViewsBmBm:27] ? 1 : 0;
ret += [UIView convertTransformToViewBmBm:31] ? 1 : 0;
ret += [UIView depthBmBm:60] ? 1 : 0;
ret += [UIView subHierarchyBmBm:96] ? 1 : 0;
ret += [UIView superHierarchyBmBm:0] ? 1 : 0;
ret += [UIView debugHierarchyBmBm:10] ? 1 : 0;
ret += [UIView textFieldSearchBarBmBm:16] ? 1 : 0;
ret += [UIView isAlertViewTextFieldBmBm:36] ? 1 : 0;
ret += [GPUImageTwoPassFilter initWithFirstStageVertexShaderFromStringFirststagefragmentshaderfromstringSecondstagevertexshaderfromstringSecondstagefragmentshaderfromstringBmBm:85] ? 1 : 0;
ret += [GPUImageTwoPassFilter initWithFirstStageFragmentShaderFromStringSecondstagefragmentshaderfromstringBmBm:15] ? 1 : 0;
ret += [GPUImageTwoPassFilter initializeSecondaryAttributesBmBm:57] ? 1 : 0;
ret += [GPUImageTwoPassFilter framebufferForOutputBmBm:17] ? 1 : 0;
ret += [GPUImageTwoPassFilter removeOutputFramebufferBmBm:19] ? 1 : 0;
ret += [GPUImageTwoPassFilter renderToTextureWithVerticesTexturecoordinatesBmBm:14] ? 1 : 0;
ret += [GPUImageTwoPassFilter setAndExecuteUniformStateCallbackAtIndexForprogramToblockBmBm:33] ? 1 : 0;
ret += [GPUImageTwoPassFilter setUniformsForProgramAtIndexBmBm:98] ? 1 : 0;
ret += [GPUImageLocalBinaryPatternFilter initBmBm:22] ? 1 : 0;
ret += [GPUImageOutput initBmBm:23] ? 1 : 0;
ret += [GPUImageOutput deallocBmBm:35] ? 1 : 0;
ret += [GPUImageOutput setInputFramebufferForTargetAtindexBmBm:16] ? 1 : 0;
ret += [GPUImageOutput framebufferForOutputBmBm:71] ? 1 : 0;
ret += [GPUImageOutput removeOutputFramebufferBmBm:87] ? 1 : 0;
ret += [GPUImageOutput notifyTargetsAboutNewOutputTextureBmBm:21] ? 1 : 0;
ret += [GPUImageOutput targetsBmBm:51] ? 1 : 0;
ret += [GPUImageOutput addTargetBmBm:31] ? 1 : 0;
ret += [GPUImageOutput addTargetAttexturelocationBmBm:16] ? 1 : 0;
ret += [GPUImageOutput removeTargetBmBm:22] ? 1 : 0;
ret += [GPUImageOutput removeAllTargetsBmBm:17] ? 1 : 0;
ret += [GPUImageOutput forceProcessingAtSizeBmBm:82] ? 1 : 0;
ret += [GPUImageOutput forceProcessingAtSizeRespectingAspectRatioBmBm:7] ? 1 : 0;
ret += [GPUImageOutput useNextFrameForImageCaptureBmBm:52] ? 1 : 0;
ret += [GPUImageOutput newCGImageFromCurrentlyProcessedOutputBmBm:53] ? 1 : 0;
ret += [GPUImageOutput newCGImageByFilteringCGImageBmBm:71] ? 1 : 0;
ret += [GPUImageOutput providesMonochromeOutputBmBm:15] ? 1 : 0;
ret += [GPUImageOutput imageFromCurrentFramebufferBmBm:96] ? 1 : 0;
ret += [GPUImageOutput imageFromCurrentFramebufferWithOrientationBmBm:74] ? 1 : 0;
ret += [GPUImageOutput imageByFilteringImageBmBm:19] ? 1 : 0;
ret += [GPUImageOutput newCGImageByFilteringImageBmBm:33] ? 1 : 0;
ret += [GPUImageOutput imageFromCurrentFramebufferBmBm:13] ? 1 : 0;
ret += [GPUImageOutput imageFromCurrentFramebufferWithOrientationBmBm:16] ? 1 : 0;
ret += [GPUImageOutput imageByFilteringImageBmBm:99] ? 1 : 0;
ret += [GPUImageOutput newCGImageByFilteringImageBmBm:0] ? 1 : 0;
ret += [GPUImageOutput setAudioEncodingTargetBmBm:54] ? 1 : 0;
ret += [GPUImageOutput setOutputTextureOptionsBmBm:52] ? 1 : 0;
ret += [GPUImageRawDataInput initWithBytesSizeBmBm:29] ? 1 : 0;
ret += [GPUImageRawDataInput initWithBytesSizePixelformatBmBm:54] ? 1 : 0;
ret += [GPUImageRawDataInput initWithBytesSizePixelformatTypeBmBm:58] ? 1 : 0;
ret += [GPUImageRawDataInput deallocBmBm:99] ? 1 : 0;
ret += [GPUImageRawDataInput uploadBytesBmBm:53] ? 1 : 0;
ret += [GPUImageRawDataInput updateDataFromBytesSizeBmBm:62] ? 1 : 0;
ret += [GPUImageRawDataInput processDataBmBm:35] ? 1 : 0;
ret += [GPUImageRawDataInput processDataForTimestampBmBm:52] ? 1 : 0;
ret += [GPUImageRawDataInput outputImageSizeBmBm:11] ? 1 : 0;
ret += [GPUImageHarrisCornerDetectionFilter initBmBm:58] ? 1 : 0;
ret += [GPUImageHarrisCornerDetectionFilter initWithCornerDetectionFragmentShaderBmBm:57] ? 1 : 0;
ret += [GPUImageHarrisCornerDetectionFilter deallocBmBm:77] ? 1 : 0;
ret += [GPUImageHarrisCornerDetectionFilter extractCornerLocationsFromImageAtFrameTimeBmBm:23] ? 1 : 0;
ret += [GPUImageHarrisCornerDetectionFilter wantsMonochromeInputBmBm:95] ? 1 : 0;
ret += [GPUImageHarrisCornerDetectionFilter setBlurRadiusInPixelsBmBm:51] ? 1 : 0;
ret += [GPUImageHarrisCornerDetectionFilter blurRadiusInPixelsBmBm:52] ? 1 : 0;
ret += [GPUImageHarrisCornerDetectionFilter setSensitivityBmBm:76] ? 1 : 0;
ret += [GPUImageHarrisCornerDetectionFilter setThresholdBmBm:21] ? 1 : 0;
ret += [GPUImageHarrisCornerDetectionFilter thresholdBmBm:60] ? 1 : 0;
ret += [RACEagerSequence returnBmBm:57] ? 1 : 0;
ret += [RACEagerSequence bindBmBm:99] ? 1 : 0;
ret += [RACEagerSequence concatBmBm:29] ? 1 : 0;
ret += [RACEagerSequence eagerSequenceBmBm:59] ? 1 : 0;
ret += [RACEagerSequence lazySequenceBmBm:72] ? 1 : 0;
ret += [RACEagerSequence foldRightWithStartReduceBmBm:11] ? 1 : 0;
ret += [DGActivityIndicatorBallPulseAnimation setupAnimationInLayerWithsizeTintcolorBmBm:63] ? 1 : 0;
ret += [GPUImageXYDerivativeFilter initBmBm:17] ? 1 : 0;
ret += [RACSignal doNextBmBm:77] ? 1 : 0;
ret += [RACSignal doErrorBmBm:23] ? 1 : 0;
ret += [RACSignal doCompletedBmBm:43] ? 1 : 0;
ret += [RACSignal throttleBmBm:55] ? 1 : 0;
ret += [RACSignal throttleValuespassingtestBmBm:96] ? 1 : 0;
ret += [RACSignal delayBmBm:12] ? 1 : 0;
ret += [RACSignal repeatBmBm:5] ? 1 : 0;
ret += [RACSignal catchBmBm:53] ? 1 : 0;
ret += [RACSignal catchToBmBm:63] ? 1 : 0;
ret += [RACSignal tryBmBm:62] ? 1 : 0;
ret += [RACSignal tryBmBm:58] ? 1 : 0;
ret += [RACSignal tryMapBmBm:89] ? 1 : 0;
ret += [RACSignal initiallyBmBm:24] ? 1 : 0;
ret += [RACSignal finallyBmBm:97] ? 1 : 0;
ret += [RACSignal bufferWithTimeOnschedulerBmBm:4] ? 1 : 0;
ret += [RACSignal collectBmBm:13] ? 1 : 0;
ret += [RACSignal takeLastBmBm:26] ? 1 : 0;
ret += [RACSignal combineLatestWithBmBm:81] ? 1 : 0;
ret += [RACSignal combineLatestBmBm:11] ? 1 : 0;
ret += [RACSignal combineLatestReduceBmBm:35] ? 1 : 0;
ret += [RACSignal mergeBmBm:23] ? 1 : 0;
ret += [RACSignal mergeBmBm:28] ? 1 : 0;
ret += [RACSignal flattenBmBm:86] ? 1 : 0;
ret += [RACSignal thenBmBm:96] ? 1 : 0;
ret += [RACSignal concatBmBm:68] ? 1 : 0;
ret += [RACSignal aggregateWithStartFactoryReduceBmBm:18] ? 1 : 0;
ret += [RACSignal aggregateWithStartReduceBmBm:97] ? 1 : 0;
ret += [RACSignal aggregateWithStartReducewithindexBmBm:55] ? 1 : 0;
ret += [RACSignal setKeyPathOnobjectBmBm:29] ? 1 : 0;
ret += [RACSignal setKeyPathOnobjectNilvalueBmBm:40] ? 1 : 0;
ret += [RACSignal intervalOnschedulerBmBm:34] ? 1 : 0;
ret += [RACSignal intervalOnschedulerWithleewayBmBm:12] ? 1 : 0;
ret += [RACSignal takeUntilBmBm:89] ? 1 : 0;
ret += [RACSignal takeUntilReplacementBmBm:46] ? 1 : 0;
ret += [RACSignal switchToLatestBmBm:53] ? 1 : 0;
ret += [RACSignal switchCasesDefaultBmBm:89] ? 1 : 0;
ret += [RACSignal ifThenElseBmBm:10] ? 1 : 0;
ret += [RACSignal firstBmBm:37] ? 1 : 0;
ret += [RACSignal firstOrDefaultBmBm:84] ? 1 : 0;
ret += [RACSignal firstOrDefaultSuccessErrorBmBm:90] ? 1 : 0;
ret += [RACSignal waitUntilCompletedBmBm:20] ? 1 : 0;
ret += [RACSignal deferBmBm:45] ? 1 : 0;
ret += [RACSignal toArrayBmBm:80] ? 1 : 0;
ret += [RACSignal sequenceBmBm:10] ? 1 : 0;
ret += [RACSignal publishBmBm:95] ? 1 : 0;
ret += [RACSignal multicastBmBm:32] ? 1 : 0;
ret += [RACSignal replayBmBm:40] ? 1 : 0;
ret += [RACSignal replayLastBmBm:52] ? 1 : 0;
ret += [RACSignal replayLazilyBmBm:97] ? 1 : 0;
ret += [RACSignal timeoutOnschedulerBmBm:79] ? 1 : 0;
ret += [RACSignal deliverOnBmBm:77] ? 1 : 0;
ret += [RACSignal subscribeOnBmBm:72] ? 1 : 0;
ret += [RACSignal deliverOnMainThreadBmBm:42] ? 1 : 0;
ret += [RACSignal groupByTransformBmBm:57] ? 1 : 0;
ret += [RACSignal groupByBmBm:7] ? 1 : 0;
ret += [RACSignal anyBmBm:7] ? 1 : 0;
ret += [RACSignal anyBmBm:44] ? 1 : 0;
ret += [RACSignal allBmBm:62] ? 1 : 0;
ret += [RACSignal retryBmBm:72] ? 1 : 0;
ret += [RACSignal retryBmBm:1] ? 1 : 0;
ret += [RACSignal sampleBmBm:54] ? 1 : 0;
ret += [RACSignal ignoreValuesBmBm:76] ? 1 : 0;
ret += [RACSignal materializeBmBm:48] ? 1 : 0;
ret += [RACSignal dematerializeBmBm:53] ? 1 : 0;
ret += [RACSignal notBmBm:58] ? 1 : 0;
ret += [RACSignal andBmBm:12] ? 1 : 0;
ret += [RACSignal orBmBm:99] ? 1 : 0;
ret += [RACSignal reduceApplyBmBm:44] ? 1 : 0;
ret += [DGActivityIndicatorBallPulseSyncAnimation setupAnimationInLayerWithsizeTintcolorBmBm:44] ? 1 : 0;
ret += [GPUImageiOSBlurFilter initBmBm:55] ? 1 : 0;
ret += [GPUImageiOSBlurFilter setInputSizeAtindexBmBm:33] ? 1 : 0;
ret += [GPUImageiOSBlurFilter setBlurRadiusInPixelsBmBm:88] ? 1 : 0;
ret += [GPUImageiOSBlurFilter blurRadiusInPixelsBmBm:90] ? 1 : 0;
ret += [GPUImageiOSBlurFilter setSaturationBmBm:73] ? 1 : 0;
ret += [GPUImageiOSBlurFilter saturationBmBm:23] ? 1 : 0;
ret += [GPUImageiOSBlurFilter setDownsamplingBmBm:71] ? 1 : 0;
ret += [GPUImageiOSBlurFilter setRangeReductionFactorBmBm:77] ? 1 : 0;
ret += [GPUImageiOSBlurFilter rangeReductionFactorBmBm:50] ? 1 : 0;
ret += [UIRefreshControl rac_commandBmBm:70] ? 1 : 0;
ret += [UIRefreshControl setRac_commandBmBm:42] ? 1 : 0;
ret += [DGActivityIndicatorNineDotsAnimation setupAnimationInLayerWithsizeTintcolorBmBm:59] ? 1 : 0;
ret += [NSObject arcDebugRetainBmBm:63] ? 1 : 0;
ret += [NSObject arcDebugReleaseBmBm:32] ? 1 : 0;
ret += [NSObject arcDebugAutoreleaseBmBm:94] ? 1 : 0;
ret += [NSObject arcDebugRetainCountBmBm:15] ? 1 : 0;
ret += [GPUImageTwoPassTextureSamplingFilter initWithFirstStageVertexShaderFromStringFirststagefragmentshaderfromstringSecondstagevertexshaderfromstringSecondstagefragmentshaderfromstringBmBm:42] ? 1 : 0;
ret += [GPUImageTwoPassTextureSamplingFilter setUniformsForProgramAtIndexBmBm:28] ? 1 : 0;
ret += [GPUImageTwoPassTextureSamplingFilter setupFilterForSizeBmBm:97] ? 1 : 0;
ret += [GPUImageTwoPassTextureSamplingFilter setVerticalTexelSpacingBmBm:81] ? 1 : 0;
ret += [GPUImageTwoPassTextureSamplingFilter setHorizontalTexelSpacingBmBm:30] ? 1 : 0;
ret += [GPUImageColorInvertFilter initBmBm:71] ? 1 : 0;
ret += [GPUImagePolkaDotFilter initBmBm:47] ? 1 : 0;
ret += [GPUImagePolkaDotFilter setDotScalingBmBm:5] ? 1 : 0;
ret += [DGActivityIndicatorBallClipRotatePulseAnimation setupAnimationInLayerWithsizeTintcolorBmBm:6] ? 1 : 0;
ret += [GPUImageGlassSphereFilter initBmBm:6] ? 1 : 0;
ret += [GPUImageSolidColorGenerator initBmBm:39] ? 1 : 0;
ret += [GPUImageSolidColorGenerator renderToTextureWithVerticesTexturecoordinatesBmBm:4] ? 1 : 0;
ret += [GPUImageSolidColorGenerator forceProcessingAtSizeBmBm:44] ? 1 : 0;
ret += [GPUImageSolidColorGenerator addTargetAttexturelocationBmBm:23] ? 1 : 0;
ret += [GPUImageSolidColorGenerator setColorBmBm:99] ? 1 : 0;
ret += [GPUImageSolidColorGenerator setColorRedGreenBlueAlphaBmBm:44] ? 1 : 0;
ret += [GPUImageSolidColorGenerator setUseExistingAlphaBmBm:86] ? 1 : 0;
ret += [RACStream flattenMapBmBm:22] ? 1 : 0;
ret += [RACStream flattenBmBm:78] ? 1 : 0;
ret += [RACStream mapBmBm:25] ? 1 : 0;
ret += [RACStream mapReplaceBmBm:62] ? 1 : 0;
ret += [RACStream combinePreviousWithStartReduceBmBm:82] ? 1 : 0;
ret += [RACStream filterBmBm:28] ? 1 : 0;
ret += [RACStream ignoreBmBm:57] ? 1 : 0;
ret += [RACStream reduceEachBmBm:67] ? 1 : 0;
ret += [RACStream startWithBmBm:29] ? 1 : 0;
ret += [RACStream skipBmBm:44] ? 1 : 0;
ret += [RACStream takeBmBm:62] ? 1 : 0;
ret += [RACStream joinBlockBmBm:84] ? 1 : 0;
ret += [RACStream zipBmBm:4] ? 1 : 0;
ret += [RACStream zipReduceBmBm:26] ? 1 : 0;
ret += [RACStream concatBmBm:17] ? 1 : 0;
ret += [RACStream scanWithStartReduceBmBm:35] ? 1 : 0;
ret += [RACStream scanWithStartReducewithindexBmBm:94] ? 1 : 0;
ret += [RACStream takeUntilBlockBmBm:80] ? 1 : 0;
ret += [RACStream takeWhileBlockBmBm:49] ? 1 : 0;
ret += [RACStream skipUntilBlockBmBm:85] ? 1 : 0;
ret += [RACStream skipWhileBlockBmBm:81] ? 1 : 0;
ret += [RACStream distinctUntilChangedBmBm:59] ? 1 : 0;
ret += [TOCropView initWithImageBmBm:26] ? 1 : 0;
ret += [TOCropView initWithCroppingStyleImageBmBm:31] ? 1 : 0;
ret += [TOCropView setupBmBm:0] ? 1 : 0;
ret += [TOCropView performInitialSetupBmBm:84] ? 1 : 0;
ret += [TOCropView layoutInitialImageBmBm:45] ? 1 : 0;
ret += [TOCropView prepareforRotationBmBm:10] ? 1 : 0;
ret += [TOCropView performRelayoutForRotationBmBm:89] ? 1 : 0;
ret += [TOCropView matchForegroundToBackgroundBmBm:4] ? 1 : 0;
ret += [TOCropView updateCropBoxFrameWithGesturePointBmBm:49] ? 1 : 0;
ret += [TOCropView resetLayoutToDefaultAnimatedBmBm:46] ? 1 : 0;
ret += [TOCropView toggleTranslucencyViewVisibleBmBm:98] ? 1 : 0;
ret += [TOCropView updateToImageCropFrameBmBm:30] ? 1 : 0;
ret += [TOCropView gridPanGestureRecognizedBmBm:17] ? 1 : 0;
ret += [TOCropView longPressGestureRecognizedBmBm:51] ? 1 : 0;
ret += [TOCropView gestureRecognizerShouldBeginBmBm:78] ? 1 : 0;
ret += [TOCropView gestureRecognizerShouldreceivetouchBmBm:47] ? 1 : 0;
ret += [TOCropView startResetTimerBmBm:31] ? 1 : 0;
ret += [TOCropView timerTriggeredBmBm:74] ? 1 : 0;
ret += [TOCropView cancelResetTimerBmBm:38] ? 1 : 0;
ret += [TOCropView cropEdgeForPointBmBm:92] ? 1 : 0;
ret += [TOCropView viewForZoomingInScrollViewBmBm:10] ? 1 : 0;
ret += [TOCropView scrollViewDidScrollBmBm:20] ? 1 : 0;
ret += [TOCropView scrollViewWillBeginDraggingBmBm:57] ? 1 : 0;
ret += [TOCropView scrollViewWillBeginZoomingWithviewBmBm:68] ? 1 : 0;
ret += [TOCropView scrollViewDidEndDeceleratingBmBm:31] ? 1 : 0;
ret += [TOCropView scrollViewDidEndZoomingWithviewAtscaleBmBm:81] ? 1 : 0;
ret += [TOCropView scrollViewDidZoomBmBm:61] ? 1 : 0;
ret += [TOCropView scrollViewDidEndDraggingWilldecelerateBmBm:26] ? 1 : 0;
ret += [TOCropView setCropBoxResizeEnabledBmBm:82] ? 1 : 0;
ret += [TOCropView setCropBoxFrameBmBm:57] ? 1 : 0;
ret += [TOCropView setEditingBmBm:43] ? 1 : 0;
ret += [TOCropView setSimpleRenderModeBmBm:36] ? 1 : 0;
ret += [TOCropView cropBoxAspectRatioIsPortraitBmBm:59] ? 1 : 0;
ret += [TOCropView imageCropFrameBmBm:27] ? 1 : 0;
ret += [TOCropView setImageCropFrameBmBm:77] ? 1 : 0;
ret += [TOCropView setCroppingViewsHiddenBmBm:53] ? 1 : 0;
ret += [TOCropView setCroppingViewsHiddenAnimatedBmBm:83] ? 1 : 0;
ret += [TOCropView setBackgroundImageViewHiddenAnimatedBmBm:63] ? 1 : 0;
ret += [TOCropView setGridOverlayHiddenBmBm:52] ? 1 : 0;
ret += [TOCropView setGridOverlayHiddenAnimatedBmBm:8] ? 1 : 0;
ret += [TOCropView imageViewFrameBmBm:52] ? 1 : 0;
ret += [TOCropView setCanBeResetBmBm:57] ? 1 : 0;
ret += [TOCropView setAngleBmBm:24] ? 1 : 0;
ret += [TOCropView startEditingBmBm:16] ? 1 : 0;
ret += [TOCropView setEditingResetcropboxAnimatedBmBm:94] ? 1 : 0;
ret += [TOCropView moveCroppedContentToCenterAnimatedBmBm:14] ? 1 : 0;
ret += [TOCropView setSimpleRenderModeAnimatedBmBm:72] ? 1 : 0;
ret += [TOCropView setAspectRatioBmBm:99] ? 1 : 0;
ret += [TOCropView setAspectRatioAnimatedBmBm:10] ? 1 : 0;
ret += [TOCropView rotateImageNinetyDegreesAnimatedBmBm:45] ? 1 : 0;
ret += [TOCropView rotateImageNinetyDegreesAnimatedClockwiseBmBm:92] ? 1 : 0;
ret += [TOCropView captureStateForImageRotationBmBm:28] ? 1 : 0;
ret += [TOCropView checkForCanResetBmBm:32] ? 1 : 0;
ret += [TOCropView contentBoundsBmBm:44] ? 1 : 0;
ret += [TOCropView imageSizeBmBm:5] ? 1 : 0;
ret += [TOCropView hasAspectRatioBmBm:68] ? 1 : 0;
ret += [GPUImageGaussianBlurPositionFilter initWithFirstStageVertexShaderFromStringFirststagefragmentshaderfromstringSecondstagevertexshaderfromstringSecondstagefragmentshaderfromstringBmBm:51] ? 1 : 0;
ret += [GPUImageGaussianBlurPositionFilter initBmBm:50] ? 1 : 0;
ret += [GPUImageGaussianBlurPositionFilter adjustAspectRatioBmBm:26] ? 1 : 0;
ret += [GPUImageGaussianBlurPositionFilter forceProcessingAtSizeBmBm:21] ? 1 : 0;
ret += [GPUImageGaussianBlurPositionFilter setInputSizeAtindexBmBm:82] ? 1 : 0;
ret += [GPUImageGaussianBlurPositionFilter setInputRotationAtindexBmBm:22] ? 1 : 0;
ret += [GPUImageGaussianBlurPositionFilter setBlurSizeBmBm:67] ? 1 : 0;
ret += [GPUImageGaussianBlurPositionFilter setBlurCenterBmBm:4] ? 1 : 0;
ret += [GPUImageGaussianBlurPositionFilter setBlurRadiusBmBm:50] ? 1 : 0;
ret += [GPUImageGaussianBlurPositionFilter setAspectRatioBmBm:98] ? 1 : 0;
ret += [IQTitleBarButtonItem initWithTitleBmBm:7] ? 1 : 0;
ret += [IQTitleBarButtonItem setTitleFontBmBm:16] ? 1 : 0;
ret += [IQTitleBarButtonItem setTitleBmBm:39] ? 1 : 0;
ret += [IQTitleBarButtonItem setTitleColorBmBm:76] ? 1 : 0;
ret += [IQTitleBarButtonItem setSelectableTitleColorBmBm:21] ? 1 : 0;
ret += [IQTitleBarButtonItem setInvocationBmBm:69] ? 1 : 0;
ret += [IQTitleBarButtonItem deallocBmBm:9] ? 1 : 0;
ret += [UIScrollView scrollToTopBmBm:75] ? 1 : 0;
ret += [UIScrollView scrollToBottomBmBm:32] ? 1 : 0;
ret += [UIScrollView scrollToLeftBmBm:20] ? 1 : 0;
ret += [UIScrollView scrollToRightBmBm:62] ? 1 : 0;
ret += [UIScrollView scrollToTopAnimatedBmBm:99] ? 1 : 0;
ret += [UIScrollView scrollToBottomAnimatedBmBm:78] ? 1 : 0;
ret += [UIScrollView scrollToLeftAnimatedBmBm:28] ? 1 : 0;
ret += [UIScrollView scrollToRightAnimatedBmBm:28] ? 1 : 0;
ret += [UIView keyboardToolbarBmBm:37] ? 1 : 0;
ret += [UIView setShouldHideToolbarPlaceholderBmBm:22] ? 1 : 0;
ret += [UIView shouldHideToolbarPlaceholderBmBm:88] ? 1 : 0;
ret += [UIView setToolbarPlaceholderBmBm:68] ? 1 : 0;
ret += [UIView toolbarPlaceholderBmBm:85] ? 1 : 0;
ret += [UIView drawingToolbarPlaceholderBmBm:93] ? 1 : 0;
ret += [UIView flexibleBarButtonItemBmBm:80] ? 1 : 0;
ret += [UIView addKeyboardToolbarWithTargetTitletextRightbarbuttonconfigurationPreviousbarbuttonconfigurationNextbarbuttonconfigurationBmBm:49] ? 1 : 0;
ret += [UIView addRightButtonOnKeyboardWithTextTargetActionBmBm:30] ? 1 : 0;
ret += [UIView addRightButtonOnKeyboardWithTextTargetActionShouldshowplaceholderBmBm:9] ? 1 : 0;
ret += [UIView addRightButtonOnKeyboardWithTextTargetActionTitletextBmBm:1] ? 1 : 0;
ret += [UIView addRightButtonOnKeyboardWithImageTargetActionBmBm:54] ? 1 : 0;
ret += [UIView addRightButtonOnKeyboardWithImageTargetActionShouldshowplaceholderBmBm:19] ? 1 : 0;
ret += [UIView addRightButtonOnKeyboardWithImageTargetActionTitletextBmBm:3] ? 1 : 0;
ret += [UIView addDoneOnKeyboardWithTargetActionBmBm:96] ? 1 : 0;
ret += [UIView addDoneOnKeyboardWithTargetActionShouldshowplaceholderBmBm:59] ? 1 : 0;
ret += [UIView addDoneOnKeyboardWithTargetActionTitletextBmBm:63] ? 1 : 0;
ret += [UIView addLeftRightOnKeyboardWithTargetLeftbuttontitleRightbuttontitleLeftbuttonactionRightbuttonactionBmBm:72] ? 1 : 0;
ret += [UIView addLeftRightOnKeyboardWithTargetLeftbuttontitleRightbuttontitleLeftbuttonactionRightbuttonactionShouldshowplaceholderBmBm:3] ? 1 : 0;
ret += [UIView addLeftRightOnKeyboardWithTargetLeftbuttontitleRightbuttontitleLeftbuttonactionRightbuttonactionTitletextBmBm:96] ? 1 : 0;
ret += [UIView addCancelDoneOnKeyboardWithTargetCancelactionDoneactionBmBm:67] ? 1 : 0;
ret += [UIView addCancelDoneOnKeyboardWithTargetCancelactionDoneactionShouldshowplaceholderBmBm:77] ? 1 : 0;
ret += [UIView addCancelDoneOnKeyboardWithTargetCancelactionDoneactionTitletextBmBm:19] ? 1 : 0;
ret += [UIView addPreviousNextDoneOnKeyboardWithTargetPreviousactionNextactionDoneactionBmBm:14] ? 1 : 0;
ret += [UIView addPreviousNextDoneOnKeyboardWithTargetPreviousactionNextactionDoneactionShouldshowplaceholderBmBm:17] ? 1 : 0;
ret += [UIView addPreviousNextDoneOnKeyboardWithTargetPreviousactionNextactionDoneactionTitletextBmBm:56] ? 1 : 0;
ret += [UIView addPreviousNextRightOnKeyboardWithTargetRightbuttonimagePreviousactionNextactionRightbuttonactionBmBm:84] ? 1 : 0;
ret += [UIView addPreviousNextRightOnKeyboardWithTargetRightbuttonimagePreviousactionNextactionRightbuttonactionShouldshowplaceholderBmBm:62] ? 1 : 0;
ret += [UIView addPreviousNextRightOnKeyboardWithTargetRightbuttonimagePreviousactionNextactionRightbuttonactionTitletextBmBm:1] ? 1 : 0;
ret += [UIView addPreviousNextRightOnKeyboardWithTargetRightbuttontitlePreviousactionNextactionRightbuttonactionBmBm:26] ? 1 : 0;
ret += [UIView addPreviousNextRightOnKeyboardWithTargetRightbuttontitlePreviousactionNextactionRightbuttonactionShouldshowplaceholderBmBm:82] ? 1 : 0;
ret += [UIView addPreviousNextRightOnKeyboardWithTargetRightbuttontitlePreviousactionNextactionRightbuttonactionTitletextBmBm:52] ? 1 : 0;
ret += [DGActivityIndicatorView initWithCoderBmBm:58] ? 1 : 0;
ret += [DGActivityIndicatorView initWithTypeBmBm:15] ? 1 : 0;
ret += [DGActivityIndicatorView initWithTypeTintcolorBmBm:68] ? 1 : 0;
ret += [DGActivityIndicatorView initWithTypeTintcolorSizeBmBm:59] ? 1 : 0;
ret += [DGActivityIndicatorView commonInitBmBm:4] ? 1 : 0;
ret += [DGActivityIndicatorView setupAnimationBmBm:95] ? 1 : 0;
ret += [DGActivityIndicatorView startAnimatingBmBm:78] ? 1 : 0;
ret += [DGActivityIndicatorView stopAnimatingBmBm:42] ? 1 : 0;
ret += [DGActivityIndicatorView setTypeBmBm:33] ? 1 : 0;
ret += [DGActivityIndicatorView setSizeBmBm:82] ? 1 : 0;
ret += [DGActivityIndicatorView setTintColorBmBm:0] ? 1 : 0;
ret += [DGActivityIndicatorView activityIndicatorAnimationForAnimationTypeBmBm:91] ? 1 : 0;
ret += [DGActivityIndicatorView layoutSubviewsBmBm:47] ? 1 : 0;
ret += [DGActivityIndicatorView intrinsicContentSizeBmBm:89] ? 1 : 0;
ret += [GPUImageBulgeDistortionFilter initBmBm:84] ? 1 : 0;
ret += [GPUImageBulgeDistortionFilter adjustAspectRatioBmBm:5] ? 1 : 0;
ret += [GPUImageBulgeDistortionFilter forceProcessingAtSizeBmBm:33] ? 1 : 0;
ret += [GPUImageBulgeDistortionFilter setInputSizeAtindexBmBm:65] ? 1 : 0;
ret += [GPUImageBulgeDistortionFilter setAspectRatioBmBm:88] ? 1 : 0;
ret += [GPUImageBulgeDistortionFilter setInputRotationAtindexBmBm:83] ? 1 : 0;
ret += [GPUImageBulgeDistortionFilter setRadiusBmBm:17] ? 1 : 0;
ret += [GPUImageBulgeDistortionFilter setScaleBmBm:51] ? 1 : 0;
ret += [GPUImageBulgeDistortionFilter setCenterBmBm:54] ? 1 : 0;
ret += [RACFourTuple initBmBm:6] ? 1 : 0;
ret += [RACFourTuple initWithBackingArrayBmBm:46] ? 1 : 0;
ret += [RACFourTuple tupleByAddingObjectBmBm:7] ? 1 : 0;
ret += [RACFourTuple packFirstSecondThirdBmBm:58] ? 1 : 0;
ret += [RACFourTuple isEqualBmBm:97] ? 1 : 0;
ret += [GPUImageJFAVoronoiFilter initBmBm:87] ? 1 : 0;
ret += [GPUImageJFAVoronoiFilter setSizeInPixelsBmBm:87] ? 1 : 0;
ret += [GPUImageJFAVoronoiFilter nextPowerOfTwoBmBm:17] ? 1 : 0;
ret += [GPUImageJFAVoronoiFilter renderToTextureWithVerticesTexturecoordinatesBmBm:43] ? 1 : 0;
ret += [TOCropToolbar initWithFrameBmBm:18] ? 1 : 0;
ret += [TOCropToolbar setupBmBm:77] ? 1 : 0;
ret += [TOCropToolbar layoutSubviewsBmBm:1] ? 1 : 0;
ret += [TOCropToolbar layoutToolbarButtonsWithsamebuttonsizeIncontainerrectHorizontallyBmBm:31] ? 1 : 0;
ret += [TOCropToolbar buttonTappedBmBm:35] ? 1 : 0;
ret += [TOCropToolbar clampButtonFrameBmBm:34] ? 1 : 0;
ret += [TOCropToolbar setClampButtonHiddenBmBm:85] ? 1 : 0;
ret += [TOCropToolbar setClampButtonGlowingBmBm:92] ? 1 : 0;
ret += [TOCropToolbar setRotateCounterClockwiseButtonHiddenBmBm:96] ? 1 : 0;
ret += [TOCropToolbar resetButtonEnabledBmBm:69] ? 1 : 0;
ret += [TOCropToolbar setResetButtonEnabledBmBm:35] ? 1 : 0;
ret += [TOCropToolbar doneButtonFrameBmBm:33] ? 1 : 0;
ret += [TOCropToolbar setCancelTextButtonTitleBmBm:94] ? 1 : 0;
ret += [TOCropToolbar setDoneTextButtonTitleBmBm:85] ? 1 : 0;
ret += [TOCropToolbar doneImageBmBm:55] ? 1 : 0;
ret += [TOCropToolbar cancelImageBmBm:62] ? 1 : 0;
ret += [TOCropToolbar rotateCCWImageBmBm:9] ? 1 : 0;
ret += [TOCropToolbar rotateCWImageBmBm:37] ? 1 : 0;
ret += [TOCropToolbar resetImageBmBm:89] ? 1 : 0;
ret += [TOCropToolbar clampImageBmBm:4] ? 1 : 0;
ret += [TOCropToolbar setRotateClockwiseButtonHiddenBmBm:83] ? 1 : 0;
ret += [TOCropToolbar rotateButtonBmBm:76] ? 1 : 0;
ret += [TOCropToolbar setStatusBarHeightInsetBmBm:64] ? 1 : 0;
ret += [GPUImageSaturationFilter initBmBm:36] ? 1 : 0;
ret += [GPUImageSaturationFilter setSaturationBmBm:74] ? 1 : 0;
ret += [GPUImagePolarPixellateFilter initBmBm:52] ? 1 : 0;
ret += [GPUImagePolarPixellateFilter setInputRotationAtindexBmBm:68] ? 1 : 0;
ret += [GPUImagePolarPixellateFilter setPixelSizeBmBm:57] ? 1 : 0;
ret += [GPUImagePolarPixellateFilter setCenterBmBm:47] ? 1 : 0;
ret += [NSUserDefaults rac_channelTerminalForKeyBmBm:71] ? 1 : 0;
ret += [AFNetworkActivityIndicatorManager sharedManagerBmBm:51] ? 1 : 0;
ret += [AFNetworkActivityIndicatorManager initBmBm:15] ? 1 : 0;
ret += [AFNetworkActivityIndicatorManager deallocBmBm:58] ? 1 : 0;
ret += [AFNetworkActivityIndicatorManager setEnabledBmBm:20] ? 1 : 0;
ret += [AFNetworkActivityIndicatorManager setNetworkingActivityActionWithBlockBmBm:15] ? 1 : 0;
ret += [AFNetworkActivityIndicatorManager isNetworkActivityOccurringBmBm:25] ? 1 : 0;
ret += [AFNetworkActivityIndicatorManager setNetworkActivityIndicatorVisibleBmBm:8] ? 1 : 0;
ret += [AFNetworkActivityIndicatorManager incrementActivityCountBmBm:87] ? 1 : 0;
ret += [AFNetworkActivityIndicatorManager decrementActivityCountBmBm:79] ? 1 : 0;
ret += [AFNetworkActivityIndicatorManager networkRequestDidStartBmBm:1] ? 1 : 0;
ret += [AFNetworkActivityIndicatorManager networkRequestDidFinishBmBm:32] ? 1 : 0;
ret += [AFNetworkActivityIndicatorManager setCurrentStateBmBm:33] ? 1 : 0;
ret += [AFNetworkActivityIndicatorManager updateCurrentStateForNetworkActivityChangeBmBm:43] ? 1 : 0;
ret += [AFNetworkActivityIndicatorManager startActivationDelayTimerBmBm:28] ? 1 : 0;
ret += [AFNetworkActivityIndicatorManager activationDelayTimerFiredBmBm:42] ? 1 : 0;
ret += [AFNetworkActivityIndicatorManager startCompletionDelayTimerBmBm:99] ? 1 : 0;
ret += [AFNetworkActivityIndicatorManager completionDelayTimerFiredBmBm:94] ? 1 : 0;
ret += [AFNetworkActivityIndicatorManager cancelActivationDelayTimerBmBm:88] ? 1 : 0;
ret += [AFNetworkActivityIndicatorManager cancelCompletionDelayTimerBmBm:35] ? 1 : 0;
ret += [GPUImageShiTomasiFeatureDetectionFilter initBmBm:1] ? 1 : 0;
ret += [NSObject _IQDescriptionBmBm:73] ? 1 : 0;
ret += [RACTargetQueueScheduler initWithNameTargetqueueBmBm:13] ? 1 : 0;
ret += [GPUImageBuffer initBmBm:93] ? 1 : 0;
ret += [GPUImageBuffer deallocBmBm:96] ? 1 : 0;
ret += [GPUImageBuffer newFrameReadyAtTimeAtindexBmBm:72] ? 1 : 0;
ret += [GPUImageBuffer renderToTextureWithVerticesTexturecoordinatesBmBm:72] ? 1 : 0;
ret += [GPUImageBuffer setBufferSizeBmBm:18] ? 1 : 0;
ret += [GPUImageHistogramEqualizationFilter initBmBm:45] ? 1 : 0;
ret += [GPUImageHistogramEqualizationFilter initWithHistogramTypeBmBm:74] ? 1 : 0;
ret += [GPUImageHistogramEqualizationFilter setDownsamplingFactorBmBm:5] ? 1 : 0;
ret += [RACSubscriptingAssignmentTrampoline initWithTargetNilvalueBmBm:32] ? 1 : 0;
ret += [RACSubscriptingAssignmentTrampoline setObjectForkeyedsubscriptBmBm:75] ? 1 : 0;
ret += [UIView snapshotImageBmBm:77] ? 1 : 0;
ret += [UIView snapshotImageAfterScreenUpdatesBmBm:5] ? 1 : 0;
ret += [UIView snapshotPDFBmBm:29] ? 1 : 0;
ret += [UIView setLayerShadowOffsetRadiusBmBm:1] ? 1 : 0;
ret += [UIView removeAllSubviewsBmBm:28] ? 1 : 0;
ret += [UIView viewControllerBmBm:30] ? 1 : 0;
ret += [UIView visibleAlphaBmBm:46] ? 1 : 0;
ret += [UIView convertPointTovieworwindowBmBm:64] ? 1 : 0;
ret += [UIView convertPointFromvieworwindowBmBm:4] ? 1 : 0;
ret += [UIView convertRectTovieworwindowBmBm:86] ? 1 : 0;
ret += [UIView convertRectFromvieworwindowBmBm:49] ? 1 : 0;
ret += [UIView leftBmBm:9] ? 1 : 0;
ret += [UIView setLeftBmBm:80] ? 1 : 0;
ret += [UIView topBmBm:55] ? 1 : 0;
ret += [UIView setTopBmBm:5] ? 1 : 0;
ret += [UIView rightBmBm:62] ? 1 : 0;
ret += [UIView setRightBmBm:96] ? 1 : 0;
ret += [UIView bottomBmBm:49] ? 1 : 0;
ret += [UIView setBottomBmBm:11] ? 1 : 0;
ret += [UIView widthBmBm:38] ? 1 : 0;
ret += [UIView setWidthBmBm:50] ? 1 : 0;
ret += [UIView heightBmBm:48] ? 1 : 0;
ret += [UIView setHeightBmBm:91] ? 1 : 0;
ret += [UIView centerXBmBm:57] ? 1 : 0;
ret += [UIView setCenterXBmBm:82] ? 1 : 0;
ret += [UIView centerYBmBm:30] ? 1 : 0;
ret += [UIView setCenterYBmBm:53] ? 1 : 0;
ret += [UIView originBmBm:77] ? 1 : 0;
ret += [UIView setOriginBmBm:96] ? 1 : 0;
ret += [UIView sizeBmBm:85] ? 1 : 0;
ret += [UIView setSizeBmBm:40] ? 1 : 0;
ret += [RACDisposable isDisposedBmBm:99] ? 1 : 0;
ret += [RACDisposable initBmBm:68] ? 1 : 0;
ret += [RACDisposable initWithBlockBmBm:28] ? 1 : 0;
ret += [RACDisposable disposableWithBlockBmBm:63] ? 1 : 0;
ret += [RACDisposable deallocBmBm:17] ? 1 : 0;
ret += [RACDisposable disposeBmBm:32] ? 1 : 0;
ret += [RACDisposable asScopedDisposableBmBm:18] ? 1 : 0;
ret += [UISlider rac_newValueChannelWithNilValueBmBm:66] ? 1 : 0;
ret += [RACSignalSequence sequenceWithSignalBmBm:1] ? 1 : 0;
ret += [RACSignalSequence headBmBm:68] ? 1 : 0;
ret += [RACSignalSequence tailBmBm:79] ? 1 : 0;
ret += [RACSignalSequence arrayBmBm:14] ? 1 : 0;
ret += [RACSignalSequence descriptionBmBm:8] ? 1 : 0;
ret += [UIDevice systemVersionBmBm:84] ? 1 : 0;
ret += [UIDevice isPadBmBm:21] ? 1 : 0;
ret += [UIDevice isSimulatorBmBm:27] ? 1 : 0;
ret += [UIDevice isJailbrokenBmBm:50] ? 1 : 0;
ret += [UIDevice canMakePhoneCallsBmBm:50] ? 1 : 0;
ret += [UIDevice ipAddressWithIfaNameBmBm:8] ? 1 : 0;
ret += [UIDevice ipAddressWIFIBmBm:42] ? 1 : 0;
ret += [UIDevice ipAddressCellBmBm:66] ? 1 : 0;
ret += [UIDevice getNetworkTrafficBytesBmBm:52] ? 1 : 0;
ret += [UIDevice machineModelBmBm:98] ? 1 : 0;
ret += [UIDevice machineModelNameBmBm:94] ? 1 : 0;
ret += [UIDevice systemUptimeBmBm:65] ? 1 : 0;
ret += [UIDevice diskSpaceBmBm:78] ? 1 : 0;
ret += [UIDevice diskSpaceFreeBmBm:79] ? 1 : 0;
ret += [UIDevice diskSpaceUsedBmBm:76] ? 1 : 0;
ret += [UIDevice memoryTotalBmBm:98] ? 1 : 0;
ret += [UIDevice memoryUsedBmBm:66] ? 1 : 0;
ret += [UIDevice memoryFreeBmBm:0] ? 1 : 0;
ret += [UIDevice memoryActiveBmBm:46] ? 1 : 0;
ret += [UIDevice memoryInactiveBmBm:25] ? 1 : 0;
ret += [UIDevice memoryWiredBmBm:92] ? 1 : 0;
ret += [UIDevice memoryPurgableBmBm:6] ? 1 : 0;
ret += [UIDevice cpuCountBmBm:15] ? 1 : 0;
ret += [UIDevice cpuUsageBmBm:18] ? 1 : 0;
ret += [UIDevice cpuUsagePerProcessorBmBm:54] ? 1 : 0;
ret += [UIDevice BmBm:14] ? 1 : 0;
ret += [RACTupleUnpackingTrampoline trampolineBmBm:57] ? 1 : 0;
ret += [RACTupleUnpackingTrampoline setObjectForkeyedsubscriptBmBm:97] ? 1 : 0;
ret += [YYClassInfo initWithClassBmBm:10] ? 1 : 0;
ret += [YYClassInfo _updateBmBm:37] ? 1 : 0;
ret += [YYClassInfo setNeedUpdateBmBm:97] ? 1 : 0;
ret += [YYClassInfo needUpdateBmBm:54] ? 1 : 0;
ret += [YYClassInfo classInfoWithClassBmBm:42] ? 1 : 0;
ret += [YYClassInfo classInfoWithClassNameBmBm:33] ? 1 : 0;
ret += [UISwitch rac_newOnChannelBmBm:70] ? 1 : 0;
ret += [GPUImageThreeInputFilter initWithFragmentShaderFromStringBmBm:65] ? 1 : 0;
ret += [GPUImageThreeInputFilter initWithVertexShaderFromStringFragmentshaderfromstringBmBm:52] ? 1 : 0;
ret += [GPUImageThreeInputFilter initializeAttributesBmBm:80] ? 1 : 0;
ret += [GPUImageThreeInputFilter disableThirdFrameCheckBmBm:8] ? 1 : 0;
ret += [GPUImageThreeInputFilter renderToTextureWithVerticesTexturecoordinatesBmBm:56] ? 1 : 0;
ret += [GPUImageThreeInputFilter nextAvailableTextureIndexBmBm:2] ? 1 : 0;
ret += [GPUImageThreeInputFilter setInputFramebufferAtindexBmBm:16] ? 1 : 0;
ret += [GPUImageThreeInputFilter setInputSizeAtindexBmBm:13] ? 1 : 0;
ret += [GPUImageThreeInputFilter setInputRotationAtindexBmBm:38] ? 1 : 0;
ret += [GPUImageThreeInputFilter rotatedSizeForindexBmBm:76] ? 1 : 0;
ret += [GPUImageThreeInputFilter newFrameReadyAtTimeAtindexBmBm:45] ? 1 : 0;
ret += [RACErrorSignal errorBmBm:91] ? 1 : 0;
ret += [RACErrorSignal subscribeBmBm:47] ? 1 : 0;
ret += [RACTuple initBmBm:68] ? 1 : 0;
ret += [RACTuple initWithBackingArrayBmBm:14] ? 1 : 0;
ret += [RACTuple descriptionBmBm:85] ? 1 : 0;
ret += [RACTuple isEqualBmBm:1] ? 1 : 0;
ret += [RACTuple hashBmBm:29] ? 1 : 0;
ret += [RACTuple countByEnumeratingWithStateObjectsCountBmBm:52] ? 1 : 0;
ret += [RACTuple copyWithZoneBmBm:96] ? 1 : 0;
ret += [RACTuple initWithCoderBmBm:48] ? 1 : 0;
ret += [RACTuple encodeWithCoderBmBm:79] ? 1 : 0;
ret += [RACTuple tupleWithObjectsFromArrayBmBm:36] ? 1 : 0;
ret += [RACTuple tupleWithObjectsFromArrayConvertnullstonilsBmBm:7] ? 1 : 0;
ret += [RACTuple tupleWithObjectsBmBm:50] ? 1 : 0;
ret += [RACTuple objectAtIndexBmBm:97] ? 1 : 0;
ret += [RACTuple allObjectsBmBm:27] ? 1 : 0;
ret += [RACTuple tupleByAddingObjectBmBm:89] ? 1 : 0;
ret += [RACTuple countBmBm:12] ? 1 : 0;
ret += [RACTuple firstBmBm:5] ? 1 : 0;
ret += [RACTuple secondBmBm:8] ? 1 : 0;
ret += [RACTuple thirdBmBm:39] ? 1 : 0;
ret += [RACTuple fourthBmBm:46] ? 1 : 0;
ret += [RACTuple fifthBmBm:26] ? 1 : 0;
ret += [RACTuple lastBmBm:16] ? 1 : 0;
ret += [AFPropertyListResponseSerializer serializerBmBm:41] ? 1 : 0;
ret += [AFPropertyListResponseSerializer serializerWithFormatReadoptionsBmBm:11] ? 1 : 0;
ret += [AFPropertyListResponseSerializer initBmBm:83] ? 1 : 0;
ret += [AFPropertyListResponseSerializer responseObjectForResponseDataErrorBmBm:15] ? 1 : 0;
ret += [AFPropertyListResponseSerializer supportsSecureCodingBmBm:14] ? 1 : 0;
ret += [AFPropertyListResponseSerializer initWithCoderBmBm:89] ? 1 : 0;
ret += [AFPropertyListResponseSerializer encodeWithCoderBmBm:72] ? 1 : 0;
ret += [AFPropertyListResponseSerializer copyWithZoneBmBm:32] ? 1 : 0;
ret += [GPUImageHardLightBlendFilter initBmBm:76] ? 1 : 0;
ret += [NSObject rac_liftSelectorWithsignalofargumentsBmBm:63] ? 1 : 0;
ret += [NSObject rac_liftSelectorWithsignalsfromarrayBmBm:18] ? 1 : 0;
ret += [NSObject rac_liftSelectorWithsignalsBmBm:14] ? 1 : 0;
ret += [MIIPAPurchase managerBm:40] ? 1 : 0;
ret += [MIIPAPurchase startManagerBm:17] ? 1 : 0;
ret += [MIIPAPurchase stopManagerBm:13] ? 1 : 0;
ret += [MIIPAPurchase buyProductWithProductIDPayresultBm:49] ? 1 : 0;
ret += [MIIPAPurchase removeAllUncompleteTransactionsBeforeNewPurchaseBm:11] ? 1 : 0;
ret += [MIIPAPurchase requestProductInfoBm:18] ? 1 : 0;
ret += [MIIPAPurchase productsRequestDidreceiveresponseBm:95] ? 1 : 0;
ret += [MIIPAPurchase requestDidfailwitherrorBm:24] ? 1 : 0;
ret += [MIIPAPurchase requestDidFinishBm:1] ? 1 : 0;
ret += [MIIPAPurchase paymentQueueUpdatedtransactionsBm:22] ? 1 : 0;
ret += [MIIPAPurchase completeTransactionBm:18] ? 1 : 0;
ret += [MIIPAPurchase failedTransactionBm:95] ? 1 : 0;
ret += [MIIPAPurchase restoreTransactionBm:94] ? 1 : 0;
ret += [MIIPAPurchase getAndSaveReceiptBm:92] ? 1 : 0;
ret += [MIIPAPurchase getPlatformAmountInfoWithOrderBm:82] ? 1 : 0;
ret += [MIIPAPurchase getCurrentZoneTimeBm:94] ? 1 : 0;
ret += [MIIPAPurchase sendAppStoreRequestBuyWithReceiptUseridPaltformorderTransWithBm:19] ? 1 : 0;
ret += [YWebFileManager shareInstanceBm:92] ? 1 : 0;
ret += [YWebFileManager folderIsExistBm:50] ? 1 : 0;
ret += [YWebFileManager fileIsExistBm:33] ? 1 : 0;
ret += [YWebFileManager imageWithURLBm:93] ? 1 : 0;
ret += [YWebFileManager deleteAllCAchesWithFolderProgressCompleteBm:52] ? 1 : 0;
ret += [YWebFileManager createDownFileWithFolderBm:24] ? 1 : 0;
ret += [YWebFileManager fileManagerBm:61] ? 1 : 0;
ret += [YWebFileManager fileSizeAtPathBm:26] ? 1 : 0;
ret += [YWebFileManager folderSizeAtPathBm:33] ? 1 : 0;
ret += [YWebDownManager initBm:55] ? 1 : 0;
ret += [YWebDownManager downManagerFinishBlockHandleBm:63] ? 1 : 0;
ret += [YWebDownManager downManagerProgressBlockHandleBm:7] ? 1 : 0;
ret += [YWebDownManager startDownImagePathBm:44] ? 1 : 0;
ret += [YWebDownManager startDownImageURLBm:24] ? 1 : 0;
ret += [YWebDownManager pauseDownBm:44] ? 1 : 0;
ret += [YWebDownManager resumeDownBm:22] ? 1 : 0;
ret += [YWebDownManager URLSessionDownloadtaskDidfinishdownloadingtourlBm:39] ? 1 : 0;
ret += [YWebDownManager URLSessionDownloadtaskDidwritedataTotalbyteswrittenTotalbytesexpectedtowriteBm:41] ? 1 : 0;
ret += [YWebDownManager documentPathBm:98] ? 1 : 0;
ret += [YWebDownManager imageNameBm:81] ? 1 : 0;
ret += [YWebDataHandle imageNameForBase64HandleBm:31] ? 1 : 0;
ret += [YWebDataHandle stringForBase64HandleBm:41] ? 1 : 0;
ret += [YWebDataHandle documentPathBm:76] ? 1 : 0;
ret += [YWebDataHandle documentAppendPathBm:34] ? 1 : 0;
ret += [YWebDataHandle documentAppendPathsBm:33] ? 1 : 0;
ret += [YWebDataHandle documentYWebImageFileWithFolderBm:48] ? 1 : 0;
ret += [YWebDataHandle documentYWebImageFileAppendWithFolderWithfileBm:46] ? 1 : 0;
ret += [YWebDataHandle documentYWebImageFileAppendBase64WithFolderWithfileBm:21] ? 1 : 0;
ret += [UIColor integerValueFromHexStringBm:1] ? 1 : 0;
ret += [UIColor colorWithHexStringBm:48] ? 1 : 0;
ret += [UIColor colorWithHexStringAlphaBm:89] ? 1 : 0;
ret += [UIColor colorWithGrayScaleBm:98] ? 1 : 0;
ret += [SDPieProgressView drawRectBm:56] ? 1 : 0;
ret += [SDBaseProgressView initWithFrameBm:10] ? 1 : 0;
ret += [SDBaseProgressView setProgressBm:4] ? 1 : 0;
ret += [SDBaseProgressView setCenterProgressTextWithattributesBm:87] ? 1 : 0;
ret += [SDBaseProgressView dismissBm:39] ? 1 : 0;
ret += [SDBaseProgressView progressViewBm:68] ? 1 : 0;
ret += [SDPieLoopProgressView initWithFrameBm:32] ? 1 : 0;
ret += [SDPieLoopProgressView drawRectBm:25] ? 1 : 0;
ret += [SDLoopProgressView drawRectBm:6] ? 1 : 0;
ret += [SDBallProgressView drawRectBm:83] ? 1 : 0;
ret += [SDRotationLoopProgressView initWithFrameBm:46] ? 1 : 0;
ret += [SDRotationLoopProgressView changeAngleBm:29] ? 1 : 0;
ret += [SDRotationLoopProgressView drawRectBm:66] ? 1 : 0;
ret += [SDTransparentPieProgressView initWithFrameBm:53] ? 1 : 0;
ret += [SDTransparentPieProgressView drawRectBm:49] ? 1 : 0;
ret += [UIView sd_heightBm:73] ? 1 : 0;
ret += [UIView setSd_heightBm:84] ? 1 : 0;
ret += [UIView sd_widthBm:52] ? 1 : 0;
ret += [UIView setSd_widthBm:47] ? 1 : 0;
ret += [UIView sd_yBm:27] ? 1 : 0;
ret += [UIView setSd_yBm:23] ? 1 : 0;
ret += [UIView sd_xBm:33] ? 1 : 0;
ret += [UIView setSd_xBm:46] ? 1 : 0;
ret += [SDCycleScrollView initWithFrameBm:81] ? 1 : 0;
ret += [SDCycleScrollView awakeFromNibBm:70] ? 1 : 0;
ret += [SDCycleScrollView initializationBm:25] ? 1 : 0;
ret += [SDCycleScrollView cycleScrollViewWithFrameImagenamesgroupBm:11] ? 1 : 0;
ret += [SDCycleScrollView cycleScrollViewWithFrameShouldinfiniteloopImagenamesgroupBm:58] ? 1 : 0;
ret += [SDCycleScrollView cycleScrollViewWithFrameImageurlstringsgroupBm:4] ? 1 : 0;
ret += [SDCycleScrollView cycleScrollViewWithFrameDelegatePlaceholderimageBm:4] ? 1 : 0;
ret += [SDCycleScrollView setupMainViewBm:27] ? 1 : 0;
ret += [SDCycleScrollView setDelegateBm:42] ? 1 : 0;
ret += [SDCycleScrollView setPlaceholderImageBm:57] ? 1 : 0;
ret += [SDCycleScrollView setPageControlDotSizeBm:38] ? 1 : 0;
ret += [SDCycleScrollView setShowPageControlBm:70] ? 1 : 0;
ret += [SDCycleScrollView setCurrentPageDotColorBm:84] ? 1 : 0;
ret += [SDCycleScrollView setPageDotColorBm:87] ? 1 : 0;
ret += [SDCycleScrollView setCurrentPageDotImageBm:50] ? 1 : 0;
ret += [SDCycleScrollView setPageDotImageBm:18] ? 1 : 0;
ret += [SDCycleScrollView setCustomPageControlDotImageIscurrentpagedotBm:29] ? 1 : 0;
ret += [SDCycleScrollView setInfiniteLoopBm:24] ? 1 : 0;
ret += [SDCycleScrollView setAutoScrollBm:1] ? 1 : 0;
ret += [SDCycleScrollView setScrollDirectionBm:85] ? 1 : 0;
ret += [SDCycleScrollView setAutoScrollTimeIntervalBm:95] ? 1 : 0;
ret += [SDCycleScrollView setPageControlStyleBm:3] ? 1 : 0;
ret += [SDCycleScrollView setImagePathsGroupBm:75] ? 1 : 0;
ret += [SDCycleScrollView setImageURLStringsGroupBm:52] ? 1 : 0;
ret += [SDCycleScrollView setLocalizationImageNamesGroupBm:47] ? 1 : 0;
ret += [SDCycleScrollView setTitlesGroupBm:66] ? 1 : 0;
ret += [SDCycleScrollView disableScrollGestureBm:21] ? 1 : 0;
ret += [SDCycleScrollView setupTimerBm:92] ? 1 : 0;
ret += [SDCycleScrollView invalidateTimerBm:18] ? 1 : 0;
ret += [SDCycleScrollView setupPageControlBm:74] ? 1 : 0;
ret += [SDCycleScrollView automaticScrollBm:43] ? 1 : 0;
ret += [SDCycleScrollView scrollToIndexBm:76] ? 1 : 0;
ret += [SDCycleScrollView currentIndexBm:73] ? 1 : 0;
ret += [SDCycleScrollView pageControlIndexWithCurrentCellIndexBm:59] ? 1 : 0;
ret += [SDCycleScrollView clearCacheBm:12] ? 1 : 0;
ret += [SDCycleScrollView clearImagesCacheBm:53] ? 1 : 0;
ret += [SDCycleScrollView layoutSubviewsBm:31] ? 1 : 0;
ret += [SDCycleScrollView willMoveToSuperviewBm:9] ? 1 : 0;
ret += [SDCycleScrollView deallocBm:79] ? 1 : 0;
ret += [SDCycleScrollView adjustWhenControllerViewWillApperaBm:10] ? 1 : 0;
ret += [SDCycleScrollView collectionViewNumberofitemsinsectionBm:45] ? 1 : 0;
ret += [SDCycleScrollView collectionViewCellforitematindexpathBm:63] ? 1 : 0;
ret += [SDCycleScrollView collectionViewDidselectitematindexpathBm:90] ? 1 : 0;
ret += [SDCycleScrollView scrollViewDidScrollBm:75] ? 1 : 0;
ret += [SDCycleScrollView scrollViewWillBeginDraggingBm:28] ? 1 : 0;
ret += [SDCycleScrollView scrollViewDidEndDraggingWilldecelerateBm:17] ? 1 : 0;
ret += [SDCycleScrollView scrollViewDidEndDeceleratingBm:63] ? 1 : 0;
ret += [SDCycleScrollView scrollViewDidEndScrollingAnimationBm:12] ? 1 : 0;
ret += [SDCycleScrollView makeScrollViewScrollToIndexBm:31] ? 1 : 0;
ret += [SDCollectionViewCell initWithFrameBm:68] ? 1 : 0;
ret += [SDCollectionViewCell setTitleLabelBackgroundColorBm:22] ? 1 : 0;
ret += [SDCollectionViewCell setTitleLabelTextColorBm:17] ? 1 : 0;
ret += [SDCollectionViewCell setTitleLabelTextFontBm:46] ? 1 : 0;
ret += [SDCollectionViewCell setupImageViewBm:44] ? 1 : 0;
ret += [SDCollectionViewCell setupTitleLabelBm:55] ? 1 : 0;
ret += [SDCollectionViewCell setTitleBm:52] ? 1 : 0;
ret += [SDCollectionViewCell setTitleLabelTextAlignmentBm:32] ? 1 : 0;
ret += [SDCollectionViewCell layoutSubviewsBm:12] ? 1 : 0;
ret += [TAAbstractDotView initBm:26] ? 1 : 0;
ret += [TAAbstractDotView changeActivityStateBm:71] ? 1 : 0;
ret += [TADotView initBm:31] ? 1 : 0;
ret += [TADotView initWithFrameBm:43] ? 1 : 0;
ret += [TADotView initWithCoderBm:62] ? 1 : 0;
ret += [TADotView initializationBm:30] ? 1 : 0;
ret += [TADotView changeActivityStateBm:47] ? 1 : 0;
ret += [TAAnimatedDotView initBm:74] ? 1 : 0;
ret += [TAAnimatedDotView initWithFrameBm:55] ? 1 : 0;
ret += [TAAnimatedDotView initWithCoderBm:60] ? 1 : 0;
ret += [TAAnimatedDotView setDotColorBm:67] ? 1 : 0;
ret += [TAAnimatedDotView initializationBm:8] ? 1 : 0;
ret += [TAAnimatedDotView changeActivityStateBm:46] ? 1 : 0;
ret += [TAAnimatedDotView animateToActiveStateBm:24] ? 1 : 0;
ret += [TAAnimatedDotView animateToDeactiveStateBm:70] ? 1 : 0;
ret += [TAPageControl initBm:27] ? 1 : 0;
ret += [TAPageControl initWithFrameBm:79] ? 1 : 0;
ret += [TAPageControl initWithCoderBm:21] ? 1 : 0;
ret += [TAPageControl initializationBm:29] ? 1 : 0;
ret += [TAPageControl touchesBeganWitheventBm:29] ? 1 : 0;
ret += [TAPageControl sizeToFitBm:65] ? 1 : 0;
ret += [TAPageControl sizeForNumberOfPagesBm:1] ? 1 : 0;
ret += [TAPageControl updateDotsBm:85] ? 1 : 0;
ret += [TAPageControl updateFrameBm:83] ? 1 : 0;
ret += [TAPageControl updateDotFrameAtindexBm:64] ? 1 : 0;
ret += [TAPageControl generateDotViewBm:64] ? 1 : 0;
ret += [TAPageControl changeActivityAtindexBm:64] ? 1 : 0;
ret += [TAPageControl resetDotViewsBm:66] ? 1 : 0;
ret += [TAPageControl hideForSinglePageBm:95] ? 1 : 0;
ret += [TAPageControl setNumberOfPagesBm:71] ? 1 : 0;
ret += [TAPageControl setSpacingBetweenDotsBm:65] ? 1 : 0;
ret += [TAPageControl setCurrentPageBm:58] ? 1 : 0;
ret += [TAPageControl setDotImageBm:45] ? 1 : 0;
ret += [TAPageControl setCurrentDotImageBm:19] ? 1 : 0;
ret += [TAPageControl setDotViewClassBm:40] ? 1 : 0;
ret += [TAPageControl dotsBm:37] ? 1 : 0;
ret += [TAPageControl dotSizeBm:98] ? 1 : 0;
ret += [BKMIBaseTabBarVC viewDidLoadBm:48] ? 1 : 0;
ret += [BKMIBaseTabBarVC BKinitWithChildControllerBm:7] ? 1 : 0;
ret += [BKMIBaseNavigationC viewDidLoadBm:19] ? 1 : 0;
ret += [BKMIBaseNavigationC pushViewControllerAnimatedBm:91] ? 1 : 0;
ret += [BKMIBaseNavigationC BKreturnCustomBm:67] ? 1 : 0;
ret += [UIImage gradientColorImageFromColorsGradienttypeImgsizeBm:82] ? 1 : 0;
ret += [MISlideVC superExistNavBm:68] ? 1 : 0;
ret += [MISlideVC superExistTabBm:51] ? 1 : 0;
ret += [MISlideVC bottomLineBm:88] ? 1 : 0;
ret += [MISlideVC menuHeightBm:96] ? 1 : 0;
ret += [MISlideVC pageNumberOfItemBm:91] ? 1 : 0;
ret += [MISlideVC bottomLineWidthBm:78] ? 1 : 0;
ret += [MISlideVC labelArysBm:68] ? 1 : 0;
ret += [MISlideVC initBm:38] ? 1 : 0;
ret += [MISlideVC viewDidLoadBm:24] ? 1 : 0;
ret += [MISlideVC customBaseViewBm:51] ? 1 : 0;
ret += [MISlideVC customTopViewBm:10] ? 1 : 0;
ret += [MISlideVC customBottomViewBm:26] ? 1 : 0;
ret += [MISlideVC scrollViewDidEndDeceleratingBm:36] ? 1 : 0;
ret += [MISlideVC itemClickTapBm:71] ? 1 : 0;
ret += [MISlideVC motionChangePageBm:62] ? 1 : 0;
ret += [MISlideVC contentScrollToCenterBm:56] ? 1 : 0;
ret += [MISlideVC menuScrollToCenterBm:79] ? 1 : 0;
ret += [MISlideVC menuUpdateStyleBm:59] ? 1 : 0;
ret += [MISlideVC menuUpdateBottomLineBm:33] ? 1 : 0;
ret += [NSArray yy_modelArrayWithClassJsonBmBm:22] ? 1 : 0;
ret += [NSArray yy_modelArrayWithClassArrayBmBm:77] ? 1 : 0;
ret += [UIButton af_imageDownloadReceiptForStateBmBm:63] ? 1 : 0;
ret += [UIButton af_setImageDownloadReceiptForstateBmBm:51] ? 1 : 0;
ret += [UIButton af_backgroundImageDownloadReceiptForStateBmBm:61] ? 1 : 0;
ret += [UIButton af_setBackgroundImageDownloadReceiptForstateBmBm:49] ? 1 : 0;
ret += [NSString rac_descriptionBmBm:36] ? 1 : 0;
ret += [NSNotificationCenter postNotificationOnMainThreadBmBm:40] ? 1 : 0;
ret += [NSNotificationCenter postNotificationOnMainThreadWaituntildoneBmBm:92] ? 1 : 0;
ret += [NSNotificationCenter postNotificationOnMainThreadWithNameObjectBmBm:72] ? 1 : 0;
ret += [NSNotificationCenter postNotificationOnMainThreadWithNameObjectUserinfoBmBm:53] ? 1 : 0;
ret += [NSNotificationCenter postNotificationOnMainThreadWithNameObjectUserinfoWaituntildoneBmBm:80] ? 1 : 0;
ret += [NSNotificationCenter _yy_postNotificationBmBm:16] ? 1 : 0;
ret += [NSNotificationCenter _yy_postNotificationNameBmBm:73] ? 1 : 0;
ret += [NSIndexSet rac_sequenceBmBm:64] ? 1 : 0;
ret += [RACStream initBmBm:57] ? 1 : 0;
ret += [RACStream emptyBmBm:75] ? 1 : 0;
ret += [RACStream bindBmBm:41] ? 1 : 0;
ret += [RACStream returnBmBm:87] ? 1 : 0;
ret += [RACStream concatBmBm:94] ? 1 : 0;
ret += [RACStream zipWithBmBm:86] ? 1 : 0;
ret += [RACStream setNameWithFormatBmBm:47] ? 1 : 0;
ret += [GPUImageVignetteFilter initBmBm:97] ? 1 : 0;
ret += [GPUImageVignetteFilter setVignetteCenterBmBm:3] ? 1 : 0;
ret += [GPUImageVignetteFilter setVignetteColorBmBm:98] ? 1 : 0;
ret += [GPUImageVignetteFilter setVignetteStartBmBm:83] ? 1 : 0;
ret += [GPUImageVignetteFilter setVignetteEndBmBm:43] ? 1 : 0;
ret += [BMUICollectionReusableViewn Grac_prepareForReuseSignalBm:9] ? 1 : 0;
ret += [BMGPUImageShiTomasiFeatureDetectionFilterT FInitbmBm:95] ? 1 : 0;
ret += [BMAFNetworkReachabilityManagerR ZSharedmanagerbmBm:35] ? 1 : 0;
ret += [BMAFNetworkReachabilityManagerR RManagerfordomainbmBm:45] ? 1 : 0;
ret += [BMAFNetworkReachabilityManagerR fManagerforaddressbmBm:83] ? 1 : 0;
ret += [BMAFNetworkReachabilityManagerR DManagerbmBm:1] ? 1 : 0;
ret += [BMAFNetworkReachabilityManagerR pInitwithreachabilitybmBm:36] ? 1 : 0;
ret += [BMAFNetworkReachabilityManagerR bInitbmBm:64] ? 1 : 0;
ret += [BMAFNetworkReachabilityManagerR uDeallocbmBm:9] ? 1 : 0;
ret += [BMAFNetworkReachabilityManagerR yIsreachablebmBm:3] ? 1 : 0;
ret += [BMAFNetworkReachabilityManagerR pIsreachableviawwanbmBm:57] ? 1 : 0;
ret += [BMAFNetworkReachabilityManagerR WIsreachableviawifibmBm:61] ? 1 : 0;
ret += [BMAFNetworkReachabilityManagerR pStartmonitoringbmBm:99] ? 1 : 0;
ret += [BMAFNetworkReachabilityManagerR kStopmonitoringbmBm:56] ? 1 : 0;
ret += [BMAFNetworkReachabilityManagerR uLocalizednetworkreachabilitystatusstringbmBm:61] ? 1 : 0;
ret += [BMAFNetworkReachabilityManagerR USetreachabilitystatuschangeblockbmBm:85] ? 1 : 0;
ret += [BMAFNetworkReachabilityManagerR uKeypathsforvaluesaffectingvalueforkeybmBm:45] ? 1 : 0;
ret += [BMUIScrollViewg tSetshouldignorescrollingadjustmentBm:15] ? 1 : 0;
ret += [BMUIScrollViewg sshouldIgnoreScrollingAdjustmentBm:12] ? 1 : 0;
ret += [BMUIScrollViewg bSetshouldignorecontentinsetadjustmentBm:4] ? 1 : 0;
ret += [BMUIScrollViewg DshouldIgnoreContentInsetAdjustmentBm:4] ? 1 : 0;
ret += [BMUIScrollViewg LSetshouldrestorescrollviewcontentoffsetBm:5] ? 1 : 0;
ret += [BMUIScrollViewg SshouldRestoreScrollViewContentOffsetBm:90] ? 1 : 0;
ret += [BMNSObjecto varcDebugRetainBm:53] ? 1 : 0;
ret += [BMNSObjecto warcDebugReleaseBm:22] ? 1 : 0;
ret += [BMNSObjecto farcDebugAutoreleaseBm:10] ? 1 : 0;
ret += [BMNSObjecto narcDebugRetainCountBm:27] ? 1 : 0;
ret += [BMGPUImagePerlinNoiseFilterk MinitBm:27] ? 1 : 0;
ret += [BMGPUImagePerlinNoiseFilterk JSetscaleBm:93] ? 1 : 0;
ret += [BMGPUImagePerlinNoiseFilterk iSetcolorstartBm:3] ? 1 : 0;
ret += [BMGPUImagePerlinNoiseFilterk bSetcolorfinishBm:97] ? 1 : 0;
ret += [BMUIViewH LSetkeyboarddistancefromtextfieldBm:33] ? 1 : 0;
ret += [BMUIViewH YkeyboardDistanceFromTextFieldBm:86] ? 1 : 0;
ret += [BMUIViewH fSetignoreswitchingbynextpreviousBm:99] ? 1 : 0;
ret += [BMUIViewH oignoreSwitchingByNextPreviousBm:23] ? 1 : 0;
ret += [BMUIViewH tSetenablemodeBm:23] ? 1 : 0;
ret += [BMUIViewH PenableModeBm:65] ? 1 : 0;
ret += [BMUIViewH lSetshouldresignontouchoutsidemodeBm:84] ? 1 : 0;
ret += [BMUIViewH sshouldResignOnTouchOutsideModeBm:81] ? 1 : 0;
ret += [BMUIButtonc YAf_ImagedownloadreceiptforstateBm:71] ? 1 : 0;
ret += [BMUIButtonc pAf_SetimagedownloadreceiptMForstateBm:75] ? 1 : 0;
ret += [BMUIButtonc gAf_BackgroundimagedownloadreceiptforstateBm:52] ? 1 : 0;
ret += [BMUIButtonc AAf_SetbackgroundimagedownloadreceiptgForstateBm:18] ? 1 : 0;
ret += [BMUITextFieldE jselectAllTextBm:64] ? 1 : 0;
ret += [BMUITextFieldE OSetselectedrangeBm:73] ? 1 : 0;
ret += [BMNSObjectE bRac_ValuesforkeypathlObserverBm:8] ? 1 : 0;
ret += [BMNSObjectE XRac_ValuesandchangesforkeypathgOptionsYObserverBm:6] ? 1 : 0;
ret += [BMGPUImageGrayscaleFilterJ ORendertotexturewithverticestexturecoordinatesbmBm:95] ? 1 : 0;
ret += [BMGPUImageGrayscaleFilterJ HWantsmonochromeinputbmBm:97] ? 1 : 0;
ret += [BMGPUImageGrayscaleFilterJ GProvidesmonochromeoutputbmBm:61] ? 1 : 0;
ret += [BMGPUImageGrayscaleFilterJ hInitbmBm:62] ? 1 : 0;
ret += [BMDGActivityIndicatorBallZigZagAnimationi fSetupanimationinlayerqWithsizeyTintcolorBm:83] ? 1 : 0;
ret += [BMRACTupleNilF TtupleNilBm:56] ? 1 : 0;
ret += [BMRACTupleNilF DCopywithzoneBm:37] ? 1 : 0;
ret += [BMRACTupleNilF JInitwithcoderBm:12] ? 1 : 0;
ret += [BMRACTupleNilF vEncodewithcoderBm:28] ? 1 : 0;
ret += [BMNSArrayQ IArraywithplistdataBm:86] ? 1 : 0;
ret += [BMNSArrayQ RArraywithpliststringBm:13] ? 1 : 0;
ret += [BMNSArrayQ pplistDataBm:85] ? 1 : 0;
ret += [BMNSArrayQ QplistStringBm:4] ? 1 : 0;
ret += [BMNSArrayQ arandomObjectBm:51] ? 1 : 0;
ret += [BMNSArrayQ TObjectornilatindexBm:11] ? 1 : 0;
ret += [BMNSArrayQ IjsonStringEncodedBm:38] ? 1 : 0;
ret += [BMNSArrayQ TjsonPrettyStringEncodedBm:56] ? 1 : 0;
ret += [BMRACTupleb jrac_sequenceBm:38] ? 1 : 0;
ret += [BMDGActivityIndicatorBallPulseSyncAnimationV cSetupanimationinlayercWithsizevTintcolorBm:68] ? 1 : 0;
ret += [BMGPUImagePosterizeFilterk finitBm:22] ? 1 : 0;
ret += [BMGPUImagePosterizeFilterk qSetcolorlevelsBm:71] ? 1 : 0;
ret += [BMRACDisposabler KisDisposedBm:23] ? 1 : 0;
ret += [BMRACDisposabler tinitBm:7] ? 1 : 0;
ret += [BMRACDisposabler HInitwithblockBm:33] ? 1 : 0;
ret += [BMRACDisposabler lDisposablewithblockBm:3] ? 1 : 0;
ret += [BMRACDisposabler NdeallocBm:34] ? 1 : 0;
ret += [BMRACDisposabler ydisposeBm:61] ? 1 : 0;
ret += [BMRACDisposabler kasScopedDisposableBm:60] ? 1 : 0;
ret += [BMGPUImagePinchDistortionFilterX pinitBm:33] ? 1 : 0;
ret += [BMGPUImagePinchDistortionFilterX SadjustAspectRatioBm:50] ? 1 : 0;
ret += [BMGPUImagePinchDistortionFilterX NForceprocessingatsizeBm:88] ? 1 : 0;
ret += [BMGPUImagePinchDistortionFilterX cSetinputsizeyAtindexBm:34] ? 1 : 0;
ret += [BMGPUImagePinchDistortionFilterX wSetinputrotationvAtindexBm:73] ? 1 : 0;
ret += [BMGPUImagePinchDistortionFilterX FSetaspectratioBm:56] ? 1 : 0;
ret += [BMGPUImagePinchDistortionFilterX ZSetradiusBm:50] ? 1 : 0;
ret += [BMGPUImagePinchDistortionFilterX LSetscaleBm:95] ? 1 : 0;
ret += [BMGPUImagePinchDistortionFilterX aSetcenterBm:55] ? 1 : 0;
ret += [BMRACEmptySignall iSetnameBm:51] ? 1 : 0;
ret += [BMRACEmptySignall unameBm:1] ? 1 : 0;
ret += [BMRACEmptySignall bemptyBm:57] ? 1 : 0;
ret += [BMRACEmptySignall hSubscribeBm:73] ? 1 : 0;
ret += [BMMAS_VIEW_CONTROLLERL Qmas_topLayoutGuideBm:10] ? 1 : 0;
ret += [BMMAS_VIEW_CONTROLLERL Umas_topLayoutGuideTopBm:23] ? 1 : 0;
ret += [BMMAS_VIEW_CONTROLLERL Gmas_topLayoutGuideBottomBm:42] ? 1 : 0;
ret += [BMMAS_VIEW_CONTROLLERL kmas_bottomLayoutGuideBm:45] ? 1 : 0;
ret += [BMMAS_VIEW_CONTROLLERL Rmas_bottomLayoutGuideTopBm:89] ? 1 : 0;
ret += [BMMAS_VIEW_CONTROLLERL Dmas_bottomLayoutGuideBottomBm:90] ? 1 : 0;
ret += [BMGPUImageOutputG NInitbmBm:55] ? 1 : 0;
ret += [BMGPUImageOutputG uDeallocbmBm:25] ? 1 : 0;
ret += [BMGPUImageOutputG aSetinputframebufferfortargetatindexbmBm:50] ? 1 : 0;
ret += [BMGPUImageOutputG yFramebufferforoutputbmBm:76] ? 1 : 0;
ret += [BMGPUImageOutputG uRemoveoutputframebufferbmBm:50] ? 1 : 0;
ret += [BMGPUImageOutputG cNotifytargetsaboutnewoutputtexturebmBm:32] ? 1 : 0;
ret += [BMGPUImageOutputG mTargetsbmBm:19] ? 1 : 0;
ret += [BMGPUImageOutputG KAddtargetbmBm:29] ? 1 : 0;
ret += [BMGPUImageOutputG qAddtargetattexturelocationbmBm:67] ? 1 : 0;
ret += [BMGPUImageOutputG aRemovetargetbmBm:19] ? 1 : 0;
ret += [BMGPUImageOutputG rRemovealltargetsbmBm:7] ? 1 : 0;
ret += [BMGPUImageOutputG WForceprocessingatsizebmBm:31] ? 1 : 0;
ret += [BMGPUImageOutputG CForceprocessingatsizerespectingaspectratiobmBm:70] ? 1 : 0;
ret += [BMGPUImageOutputG YUsenextframeforimagecapturebmBm:58] ? 1 : 0;
ret += [BMGPUImageOutputG ZNewcgimagefromcurrentlyprocessedoutputbmBm:68] ? 1 : 0;
ret += [BMGPUImageOutputG CNewcgimagebyfilteringcgimagebmBm:51] ? 1 : 0;
ret += [BMGPUImageOutputG gProvidesmonochromeoutputbmBm:43] ? 1 : 0;
ret += [BMGPUImageOutputG jImagefromcurrentframebufferbmBm:86] ? 1 : 0;
ret += [BMGPUImageOutputG nImagefromcurrentframebufferwithorientationbmBm:55] ? 1 : 0;
ret += [BMGPUImageOutputG FImagebyfilteringimagebmBm:74] ? 1 : 0;
ret += [BMGPUImageOutputG VNewcgimagebyfilteringimagebmBm:69] ? 1 : 0;
ret += [BMGPUImageOutputG vImagefromcurrentframebufferbmBm:80] ? 1 : 0;
ret += [BMGPUImageOutputG DImagefromcurrentframebufferwithorientationbmBm:83] ? 1 : 0;
ret += [BMGPUImageOutputG iImagebyfilteringimagebmBm:27] ? 1 : 0;
ret += [BMGPUImageOutputG kNewcgimagebyfilteringimagebmBm:48] ? 1 : 0;
ret += [BMGPUImageOutputG wSetaudioencodingtargetbmBm:7] ? 1 : 0;
ret += [BMGPUImageOutputG LSetoutputtextureoptionsbmBm:44] ? 1 : 0;
ret += [BMBKMIBaseTabBarVCC bviewDidLoadBm:91] ? 1 : 0;
ret += [BMBKMIBaseTabBarVCC aBKinitWithChildControllerBm:77] ? 1 : 0;
ret += [BMGPUImageNormalBlendFilterr UinitBm:31] ? 1 : 0;
ret += [BMIQTitleBarButtonItems GInitwithtitleBm:38] ? 1 : 0;
ret += [BMIQTitleBarButtonItems HSettitlefontBm:19] ? 1 : 0;
ret += [BMIQTitleBarButtonItems WSettitleBm:7] ? 1 : 0;
ret += [BMIQTitleBarButtonItems bSettitlecolorBm:59] ? 1 : 0;
ret += [BMIQTitleBarButtonItems ASetselectabletitlecolorBm:99] ? 1 : 0;
ret += [BMIQTitleBarButtonItems wSetinvocationBm:48] ? 1 : 0;
ret += [BMIQTitleBarButtonItems sdeallocBm:46] ? 1 : 0;
ret += [BMDGActivityIndicatorBallSpinFadeLoaderS uSetupanimationinlayerFWithsizenTintcolorBm:75] ? 1 : 0;
ret += [BMDGActivityIndicatorBallSpinFadeLoaderS ACirclelayerUSizepOriginJContainersizecColorBm:87] ? 1 : 0;
ret += [BMDGActivityIndicatorBallSpinFadeLoaderS WCreatelayerwithrColorBm:77] ? 1 : 0;
ret += [BMGPUImageColorPackingFilterd ZinitBm:88] ? 1 : 0;
ret += [BMGPUImageColorPackingFilterd kSetupfilterforsizeBm:37] ? 1 : 0;
ret += [BMGPUImageColorPackingFilterd SsizeOfFBOBm:45] ? 1 : 0;
ret += [BMGPUImageColorPackingFilterd eoutputFrameSizeBm:88] ? 1 : 0;
ret += [BMRACFourTupler ginitBm:9] ? 1 : 0;
ret += [BMRACFourTupler PInitwithbackingarrayBm:14] ? 1 : 0;
ret += [BMRACFourTupler VTuplebyaddingobjectBm:78] ? 1 : 0;
ret += [BMRACFourTupler rPackxFirstLSecondRThirdBm:21] ? 1 : 0;
ret += [BMRACFourTupler wIsequalBm:18] ? 1 : 0;
ret += [BMUICollectionViewm PPreviousindexpathofindexpathBm:56] ? 1 : 0;
ret += [BMGPUImageHistogramEqualizationFilterR GInitbmBm:32] ? 1 : 0;
ret += [BMGPUImageHistogramEqualizationFilterR jInitwithhistogramtypebmBm:63] ? 1 : 0;
ret += [BMGPUImageHistogramEqualizationFilterR kSetdownsamplingfactorbmBm:85] ? 1 : 0;
ret += [BMAFImageDownloaderV QdefaultURLCacheBm:6] ? 1 : 0;
ret += [BMAFImageDownloaderV ndefaultURLSessionConfigurationBm:38] ? 1 : 0;
ret += [BMAFImageDownloaderV dinitBm:35] ? 1 : 0;
ret += [BMAFImageDownloaderV lInitwithsessionconfigurationBm:32] ? 1 : 0;
ret += [BMAFImageDownloaderV lInitwithsessionmanagerIDownloadprioritizationqMaximumactivedownloadszImagecacheBm:74] ? 1 : 0;
ret += [BMAFImageDownloaderV BdefaultInstanceBm:26] ? 1 : 0;
ret += [BMAFImageDownloaderV QDownloadimageforurlrequestxSuccessTFailureBm:17] ? 1 : 0;
ret += [BMAFImageDownloaderV jDownloadimageforurlrequestBWithreceiptidXSuccessoFailureBm:23] ? 1 : 0;
ret += [BMAFImageDownloaderV eCanceltaskforimagedownloadreceiptBm:93] ? 1 : 0;
ret += [BMAFImageDownloaderV jSafelyremovemergedtaskwithurlidentifierBm:2] ? 1 : 0;
ret += [BMAFImageDownloaderV mRemovemergedtaskwithurlidentifierBm:31] ? 1 : 0;
ret += [BMAFImageDownloaderV PsafelyDecrementActiveTaskCountBm:53] ? 1 : 0;
ret += [BMAFImageDownloaderV isafelyStartNextTaskIfNecessaryBm:34] ? 1 : 0;
ret += [BMAFImageDownloaderV EStartmergedtaskBm:63] ? 1 : 0;
ret += [BMAFImageDownloaderV jEnqueuemergedtaskBm:66] ? 1 : 0;
ret += [BMAFImageDownloaderV rdequeueMergedTaskBm:45] ? 1 : 0;
ret += [BMAFImageDownloaderV disActiveRequestCountBelowMaximumLimitBm:85] ? 1 : 0;
ret += [BMAFImageDownloaderV MSafelygetmergedtaskBm:68] ? 1 : 0;
ret += [BMNSEnumeratoro FRac_SequencebmBm:8] ? 1 : 0;
ret += [BMGPUImageBrightnessFilterw ginitBm:79] ? 1 : 0;
ret += [BMGPUImageBrightnessFilterw ySetbrightnessBm:91] ? 1 : 0;
ret += [BMNSDataG MRac_ReadcontentsofurloptionsschedulerbmBm:92] ? 1 : 0;
ret += [BMYYClassPropertyInfoR OInitwithpropertyBm:19] ? 1 : 0;
ret += [BMRACTupleUnpackingTrampolinef StrampolineBm:16] ? 1 : 0;
ret += [BMRACTupleUnpackingTrampolinef xSetobjectNForkeyedsubscriptBm:3] ? 1 : 0;
ret += [BMGPUImageLuminosityBlendFilterz yInitbmBm:65] ? 1 : 0;
ret += [BMRACScopedDisposableQ EScopeddisposablewithdisposableBm:44] ? 1 : 0;
ret += [BMRACScopedDisposableQ EdeallocBm:93] ? 1 : 0;
ret += [BMRACScopedDisposableQ HasScopedDisposableBm:79] ? 1 : 0;
ret += [BMGPUImageThresholdedNonMaximumSuppressionFilterJ GinitBm:53] ? 1 : 0;
ret += [BMGPUImageThresholdedNonMaximumSuppressionFilterJ HInitwithpackedcolorspaceBm:56] ? 1 : 0;
ret += [BMGPUImageThresholdedNonMaximumSuppressionFilterJ oSetthresholdBm:86] ? 1 : 0;
ret += [BMGPUImagePixellatePositionFilterm AinitBm:15] ? 1 : 0;
ret += [BMGPUImagePixellatePositionFilterm xInitwithfragmentshaderfromstringBm:48] ? 1 : 0;
ret += [BMGPUImagePixellatePositionFilterm MSetinputsizeEAtindexBm:0] ? 1 : 0;
ret += [BMGPUImagePixellatePositionFilterm lSetinputrotationCAtindexBm:90] ? 1 : 0;
ret += [BMGPUImagePixellatePositionFilterm xadjustAspectRatioBm:91] ? 1 : 0;
ret += [BMGPUImagePixellatePositionFilterm DForceprocessingatsizeBm:35] ? 1 : 0;
ret += [BMGPUImagePixellatePositionFilterm RSetfractionalwidthofapixelBm:81] ? 1 : 0;
ret += [BMGPUImagePixellatePositionFilterm uSetaspectratioBm:56] ? 1 : 0;
ret += [BMGPUImagePixellatePositionFilterm KSetcenterBm:45] ? 1 : 0;
ret += [BMGPUImagePixellatePositionFilterm OSetradiusBm:59] ? 1 : 0;
ret += [BMGPUImageLocalBinaryPatternFilterP PinitBm:72] ? 1 : 0;
ret += [BMAFNetworkActivityIndicatorManagerb xSharedmanagerbmBm:2] ? 1 : 0;
ret += [BMAFNetworkActivityIndicatorManagerb DInitbmBm:7] ? 1 : 0;
ret += [BMAFNetworkActivityIndicatorManagerb gDeallocbmBm:73] ? 1 : 0;
ret += [BMAFNetworkActivityIndicatorManagerb ZSetenabledbmBm:20] ? 1 : 0;
ret += [BMAFNetworkActivityIndicatorManagerb RSetnetworkingactivityactionwithblockbmBm:79] ? 1 : 0;
ret += [BMAFNetworkActivityIndicatorManagerb jIsnetworkactivityoccurringbmBm:22] ? 1 : 0;
ret += [BMAFNetworkActivityIndicatorManagerb KSetnetworkactivityindicatorvisiblebmBm:14] ? 1 : 0;
ret += [BMAFNetworkActivityIndicatorManagerb aIncrementactivitycountbmBm:3] ? 1 : 0;
ret += [BMAFNetworkActivityIndicatorManagerb MDecrementactivitycountbmBm:78] ? 1 : 0;
ret += [BMAFNetworkActivityIndicatorManagerb BNetworkrequestdidstartbmBm:85] ? 1 : 0;
ret += [BMAFNetworkActivityIndicatorManagerb INetworkrequestdidfinishbmBm:6] ? 1 : 0;
ret += [BMAFNetworkActivityIndicatorManagerb nSetcurrentstatebmBm:15] ? 1 : 0;
ret += [BMAFNetworkActivityIndicatorManagerb qUpdatecurrentstatefornetworkactivitychangebmBm:48] ? 1 : 0;
ret += [BMAFNetworkActivityIndicatorManagerb DStartactivationdelaytimerbmBm:83] ? 1 : 0;
ret += [BMAFNetworkActivityIndicatorManagerb IActivationdelaytimerfiredbmBm:83] ? 1 : 0;
ret += [BMAFNetworkActivityIndicatorManagerb TStartcompletiondelaytimerbmBm:29] ? 1 : 0;
ret += [BMAFNetworkActivityIndicatorManagerb CCompletiondelaytimerfiredbmBm:58] ? 1 : 0;
ret += [BMAFNetworkActivityIndicatorManagerb aCancelactivationdelaytimerbmBm:20] ? 1 : 0;
ret += [BMAFNetworkActivityIndicatorManagerb kCancelcompletiondelaytimerbmBm:7] ? 1 : 0;
ret += [BMNSIndexSetJ qrac_sequenceBm:3] ? 1 : 0;
ret += [BMIQBarButtonItemD finitializeBm:15] ? 1 : 0;
ret += [BMIQBarButtonItemD GSettintcolorBm:24] ? 1 : 0;
ret += [BMIQBarButtonItemD OInitwithbarbuttonsystemitemkTargetAActionBm:69] ? 1 : 0;
ret += [BMIQBarButtonItemD cSettargetMActionBm:79] ? 1 : 0;
ret += [BMIQBarButtonItemD VdeallocBm:59] ? 1 : 0;
ret += [BMRACStreamr QFlattenmapbmBm:57] ? 1 : 0;
ret += [BMRACStreamr aFlattenbmBm:87] ? 1 : 0;
ret += [BMRACStreamr tMapbmBm:8] ? 1 : 0;
ret += [BMRACStreamr bMapreplacebmBm:68] ? 1 : 0;
ret += [BMRACStreamr hCombinepreviouswithstartreducebmBm:48] ? 1 : 0;
ret += [BMRACStreamr LFilterbmBm:23] ? 1 : 0;
ret += [BMRACStreamr ZIgnorebmBm:90] ? 1 : 0;
ret += [BMRACStreamr wReduceeachbmBm:31] ? 1 : 0;
ret += [BMRACStreamr QStartwithbmBm:82] ? 1 : 0;
ret += [BMRACStreamr PSkipbmBm:75] ? 1 : 0;
ret += [BMRACStreamr qTakebmBm:0] ? 1 : 0;
ret += [BMRACStreamr UJoinblockbmBm:86] ? 1 : 0;
ret += [BMRACStreamr VZipbmBm:59] ? 1 : 0;
ret += [BMRACStreamr XZipreducebmBm:8] ? 1 : 0;
ret += [BMRACStreamr WConcatbmBm:91] ? 1 : 0;
ret += [BMRACStreamr OScanwithstartreducebmBm:43] ? 1 : 0;
ret += [BMRACStreamr OScanwithstartreducewithindexbmBm:20] ? 1 : 0;
ret += [BMRACStreamr ETakeuntilblockbmBm:12] ? 1 : 0;
ret += [BMRACStreamr cTakewhileblockbmBm:73] ? 1 : 0;
ret += [BMRACStreamr tSkipuntilblockbmBm:18] ? 1 : 0;
ret += [BMRACStreamr hSkipwhileblockbmBm:61] ? 1 : 0;
ret += [BMRACStreamr CDistinctuntilchangedbmBm:30] ? 1 : 0;
ret += [BMSDPieProgressViewK RDrawrectBm:72] ? 1 : 0;
ret += [BMIQKeyboardManagerS gloadBm:70] ? 1 : 0;
ret += [BMIQKeyboardManagerS iinitBm:24] ? 1 : 0;
ret += [BMIQKeyboardManagerS wsharedManagerBm:83] ? 1 : 0;
ret += [BMIQKeyboardManagerS udeallocBm:77] ? 1 : 0;
ret += [BMIQKeyboardManagerS XSetenableBm:94] ? 1 : 0;
ret += [BMIQKeyboardManagerS cprivateIsEnabledBm:64] ? 1 : 0;
ret += [BMIQKeyboardManagerS ISetkeyboarddistancefromtextfieldBm:47] ? 1 : 0;
ret += [BMIQKeyboardManagerS aSetshouldresignontouchoutsideBm:38] ? 1 : 0;
ret += [BMIQKeyboardManagerS KprivateShouldResignOnTouchOutsideBm:52] ? 1 : 0;
ret += [BMIQKeyboardManagerS jSetmoveddistanceBm:66] ? 1 : 0;
ret += [BMIQKeyboardManagerS iSetenableautotoolbarBm:42] ? 1 : 0;
ret += [BMIQKeyboardManagerS tprivateIsEnableAutoToolbarBm:22] ? 1 : 0;
ret += [BMIQKeyboardManagerS SkeyWindowBm:21] ? 1 : 0;
ret += [BMIQKeyboardManagerS voptimizedAdjustPositionBm:55] ? 1 : 0;
ret += [BMIQKeyboardManagerS TadjustPositionBm:85] ? 1 : 0;
ret += [BMIQKeyboardManagerS srestorePositionBm:3] ? 1 : 0;
ret += [BMIQKeyboardManagerS greloadLayoutIfNeededBm:7] ? 1 : 0;
ret += [BMIQKeyboardManagerS bKeyboardwillshowBm:40] ? 1 : 0;
ret += [BMIQKeyboardManagerS AKeyboarddidshowBm:21] ? 1 : 0;
ret += [BMIQKeyboardManagerS xKeyboardwillhideBm:24] ? 1 : 0;
ret += [BMIQKeyboardManagerS PKeyboarddidhideBm:21] ? 1 : 0;
ret += [BMIQKeyboardManagerS bTextfieldviewdidbegineditingBm:93] ? 1 : 0;
ret += [BMIQKeyboardManagerS DTextfieldviewdidendeditingBm:71] ? 1 : 0;
ret += [BMIQKeyboardManagerS gWillchangestatusbarorientationBm:21] ? 1 : 0;
ret += [BMIQKeyboardManagerS RTaprecognizedBm:92] ? 1 : 0;
ret += [BMIQKeyboardManagerS CGesturerecognizerCShouldrecognizesimultaneouslywithgesturerecognizerBm:87] ? 1 : 0;
ret += [BMIQKeyboardManagerS rGesturerecognizerRShouldreceivetouchBm:37] ? 1 : 0;
ret += [BMIQKeyboardManagerS fresignFirstResponderBm:27] ? 1 : 0;
ret += [BMIQKeyboardManagerS WcanGoPreviousBm:46] ? 1 : 0;
ret += [BMIQKeyboardManagerS McanGoNextBm:58] ? 1 : 0;
ret += [BMIQKeyboardManagerS GgoPreviousBm:78] ? 1 : 0;
ret += [BMIQKeyboardManagerS lgoNextBm:11] ? 1 : 0;
ret += [BMIQKeyboardManagerS rresponderViewsBm:54] ? 1 : 0;
ret += [BMIQKeyboardManagerS baddToolbarIfRequiredBm:43] ? 1 : 0;
ret += [BMIQKeyboardManagerS zremoveToolbarIfRequiredBm:51] ? 1 : 0;
ret += [BMIQKeyboardManagerS JreloadInputViewsBm:41] ? 1 : 0;
ret += [BMIQKeyboardManagerS GPreviousactionBm:52] ? 1 : 0;
ret += [BMIQKeyboardManagerS eNextactionBm:94] ? 1 : 0;
ret += [BMIQKeyboardManagerS SDoneactionBm:12] ? 1 : 0;
ret += [BMIQKeyboardManagerS yRegistertextfieldviewclassoDidbegineditingnotificationnamenDidendeditingnotificationnameBm:7] ? 1 : 0;
ret += [BMIQKeyboardManagerS nUnregistertextfieldviewclassHDidbegineditingnotificationnameIDidendeditingnotificationnameBm:36] ? 1 : 0;
ret += [BMIQKeyboardManagerS iregisterAllNotificationsBm:53] ? 1 : 0;
ret += [BMIQKeyboardManagerS RunregisterAllNotificationsBm:8] ? 1 : 0;
ret += [BMIQKeyboardManagerS XShowlogBm:2] ? 1 : 0;
ret += [BMIQKeyboardManagerS YShowlogQIndentationBm:10] ? 1 : 0;
ret += [BMGPUImageLocalBinaryPatternFilterz HInitbmBm:80] ? 1 : 0;
ret += [BMGPUImageVignetteFilterM nInitbmBm:43] ? 1 : 0;
ret += [BMGPUImageVignetteFilterM cSetvignettecenterbmBm:88] ? 1 : 0;
ret += [BMGPUImageVignetteFilterM FSetvignettecolorbmBm:71] ? 1 : 0;
ret += [BMGPUImageVignetteFilterM jSetvignettestartbmBm:78] ? 1 : 0;
ret += [BMGPUImageVignetteFilterM wSetvignetteendbmBm:75] ? 1 : 0;
ret += [BMGPUImageColorInvertFilterB BinitBm:24] ? 1 : 0;
ret += [BMGPUImageMoviei tInitwithurlBm:11] ? 1 : 0;
ret += [BMGPUImageMoviei MInitwithassetBm:62] ? 1 : 0;
ret += [BMGPUImageMoviei RInitwithplayeritemBm:77] ? 1 : 0;
ret += [BMGPUImageMoviei QyuvConversionSetupBm:26] ? 1 : 0;
ret += [BMGPUImageMoviei hdeallocBm:43] ? 1 : 0;
ret += [BMGPUImageMoviei wEnablesynchronizedencodingusingmoviewriterBm:0] ? 1 : 0;
ret += [BMGPUImageMoviei nstartProcessingBm:67] ? 1 : 0;
ret += [BMGPUImageMoviei ncreateAssetReaderBm:54] ? 1 : 0;
ret += [BMGPUImageMoviei YprocessAssetBm:21] ? 1 : 0;
ret += [BMGPUImageMoviei bprocessPlayerItemBm:85] ? 1 : 0;
ret += [BMGPUImageMoviei BOutputmediadatawillchangeBm:32] ? 1 : 0;
ret += [BMGPUImageMoviei LDisplaylinkcallbackBm:93] ? 1 : 0;
ret += [BMGPUImageMoviei GReadnextvideoframefromoutputBm:29] ? 1 : 0;
ret += [BMGPUImageMoviei oReadnextaudiosamplefromoutputBm:77] ? 1 : 0;
ret += [BMGPUImageMoviei mProcessmovieframeBm:1] ? 1 : 0;
ret += [BMGPUImageMoviei kprogressBm:58] ? 1 : 0;
ret += [BMGPUImageMoviei sProcessmovieframeNWithsampletimeBm:73] ? 1 : 0;
ret += [BMGPUImageMoviei AendProcessingBm:77] ? 1 : 0;
ret += [BMGPUImageMoviei IcancelProcessingBm:61] ? 1 : 0;
ret += [BMGPUImageMoviei RconvertYUVToRGBOutputBm:39] ? 1 : 0;
ret += [BMGPUImageMoviei BassetReaderBm:27] ? 1 : 0;
ret += [BMGPUImageMoviei VaudioEncodingIsFinishedBm:5] ? 1 : 0;
ret += [BMGPUImageMoviei KvideoEncodingIsFinishedBm:68] ? 1 : 0;
ret += [BMDGActivityIndicatorBallBeatAnimationB MSetupanimationinlayeruWithsizebTintcolorBm:57] ? 1 : 0;
ret += [BMGPUImageVoronoiConsumerFilterj CinitBm:52] ? 1 : 0;
ret += [BMGPUImageVoronoiConsumerFilterj aSetsizeinpixelsBm:22] ? 1 : 0;
ret += [BMDGActivityIndicatorNineDotsAnimationZ sSetupanimationinlayerVWithsizepTintcolorBm:30] ? 1 : 0;
ret += [BMGPUImageMissEtikateFilterd AinitBm:30] ? 1 : 0;
ret += [BMNSObjectA mRac_SignalforselectorbmBm:40] ? 1 : 0;
ret += [BMNSObjectA RRac_SignalforselectorfromprotocolbmBm:0] ? 1 : 0;
ret += [BMAFImageResponseSerializerf DinitBm:58] ? 1 : 0;
ret += [BMAFImageResponseSerializerf GResponseobjectforresponsenDataaErrorBm:5] ? 1 : 0;
ret += [BMAFImageResponseSerializerf BsupportsSecureCodingBm:60] ? 1 : 0;
ret += [BMAFImageResponseSerializerf qInitwithcoderBm:39] ? 1 : 0;
ret += [BMAFImageResponseSerializerf QEncodewithcoderBm:91] ? 1 : 0;
ret += [BMAFImageResponseSerializerf GCopywithzoneBm:89] ? 1 : 0;
ret += [BMDGActivityIndicatorBallScaleAnimationX sSetupanimationinlayerDWithsizeNTintcolorBm:68] ? 1 : 0;
ret += [BMUIImageViewN daf_activeImageDownloadReceiptBm:90] ? 1 : 0;
ret += [BMUIImageViewN PAf_SetactiveimagedownloadreceiptBm:47] ? 1 : 0;
ret += [BMGPUImageCropFilterL aInitwithcropregionBm:73] ? 1 : 0;
ret += [BMGPUImageCropFilterL DinitBm:58] ? 1 : 0;
ret += [BMGPUImageCropFilterL ASetinputsizegAtindexBm:96] ? 1 : 0;
ret += [BMGPUImageCropFilterL xcalculateCropTextureCoordinatesBm:25] ? 1 : 0;
ret += [BMGPUImageCropFilterL lNewframereadyattimeqAtindexBm:99] ? 1 : 0;
ret += [BMGPUImageCropFilterL OSetcropregionBm:64] ? 1 : 0;
ret += [BMGPUImageCropFilterL xSetinputrotationPAtindexBm:41] ? 1 : 0;
ret += [BMAFHTTPSessionManagerk WmanagerBm:84] ? 1 : 0;
ret += [BMAFHTTPSessionManagerk ainitBm:70] ? 1 : 0;
ret += [BMAFHTTPSessionManagerk cInitwithbaseurlBm:19] ? 1 : 0;
ret += [BMAFHTTPSessionManagerk MInitwithsessionconfigurationBm:41] ? 1 : 0;
ret += [BMAFHTTPSessionManagerk PInitwithbaseurlGSessionconfigurationBm:15] ? 1 : 0;
ret += [BMAFHTTPSessionManagerk VSetrequestserializerBm:67] ? 1 : 0;
ret += [BMAFHTTPSessionManagerk zSetresponseserializerBm:50] ? 1 : 0;
ret += [BMAFHTTPSessionManagerk FSetsecuritypolicyBm:87] ? 1 : 0;
ret += [BMAFHTTPSessionManagerk GGeteParametersRHeadersSProgressfSuccessAFailureBm:32] ? 1 : 0;
ret += [BMAFHTTPSessionManagerk QHeadgParameterssHeadersCSuccesscFailureBm:92] ? 1 : 0;
ret += [BMAFHTTPSessionManagerk qPostlParametersQHeadersuProgressbSuccessKFailureBm:8] ? 1 : 0;
ret += [BMAFHTTPSessionManagerk cPostHParametersEHeadersFConstructingbodywithblockOProgresscSuccessrFailureBm:40] ? 1 : 0;
ret += [BMAFHTTPSessionManagerk aPutwParametersFHeadersESuccessZFailureBm:23] ? 1 : 0;
ret += [BMAFHTTPSessionManagerk hPatchvParametersVHeadersrSuccesseFailureBm:0] ? 1 : 0;
ret += [BMAFHTTPSessionManagerk DDeleteaParametersfHeadersFSuccessKFailureBm:31] ? 1 : 0;
ret += [BMAFHTTPSessionManagerk KDatataskwithhttpmethodbUrlstringRParametersrHeadersqUploadprogressrDownloadprogressRSuccessOFailureBm:34] ? 1 : 0;
ret += [BMAFHTTPSessionManagerk UdescriptionBm:94] ? 1 : 0;
ret += [BMAFHTTPSessionManagerk ssupportsSecureCodingBm:18] ? 1 : 0;
ret += [BMAFHTTPSessionManagerk fInitwithcoderBm:8] ? 1 : 0;
ret += [BMAFHTTPSessionManagerk pEncodewithcoderBm:60] ? 1 : 0;
ret += [BMAFHTTPSessionManagerk hCopywithzoneBm:94] ? 1 : 0;
ret += [BMGPUImageTwoPassFilterj KInitwithfirststagevertexshaderfromstringNFirststagefragmentshaderfromstringXSecondstagevertexshaderfromstringpSecondstagefragmentshaderfromstringBm:7] ? 1 : 0;
ret += [BMGPUImageTwoPassFilterj EInitwithfirststagefragmentshaderfromstringASecondstagefragmentshaderfromstringBm:45] ? 1 : 0;
ret += [BMGPUImageTwoPassFilterj VinitializeSecondaryAttributesBm:54] ? 1 : 0;
ret += [BMGPUImageTwoPassFilterj uframebufferForOutputBm:57] ? 1 : 0;
ret += [BMGPUImageTwoPassFilterj iremoveOutputFramebufferBm:95] ? 1 : 0;
ret += [BMGPUImageTwoPassFilterj JRendertotexturewithverticesATexturecoordinatesBm:67] ? 1 : 0;
ret += [BMGPUImageTwoPassFilterj fSetandexecuteuniformstatecallbackatindexYForprogramVToblockBm:20] ? 1 : 0;
ret += [BMGPUImageTwoPassFilterj PSetuniformsforprogramatindexBm:72] ? 1 : 0;
ret += [BMNSObjectk JRac_SignalforselectorBm:9] ? 1 : 0;
ret += [BMNSObjectk WRac_SignalforselectorQFromprotocolBm:38] ? 1 : 0;
ret += [BMUIRefreshControlC Iaf_notificationObserverBm:71] ? 1 : 0;
ret += [BMUIRefreshControlC oSetrefreshingwithstateoftaskBm:12] ? 1 : 0;
ret += [BMNSThreado PaddAutoreleasePoolToCurrentRunloopBm:12] ? 1 : 0;
ret += [BMNSURLConnectionm QRac_SendasynchronousrequestBm:93] ? 1 : 0;
ret += [BMTOCroppedImageAttributesv kInitwithcroppedframeOAnglejOriginalimagesizeBm:70] ? 1 : 0;
ret += [BMTOCropToolbarE SInitwithframeBm:99] ? 1 : 0;
ret += [BMTOCropToolbarE fsetupBm:56] ? 1 : 0;
ret += [BMTOCropToolbarE ylayoutSubviewsBm:35] ? 1 : 0;
ret += [BMTOCropToolbarE ELayouttoolbarbuttonsiWithsamebuttonsizerIncontainerrectqHorizontallyBm:79] ? 1 : 0;
ret += [BMTOCropToolbarE zButtontappedBm:92] ? 1 : 0;
ret += [BMTOCropToolbarE XclampButtonFrameBm:10] ? 1 : 0;
ret += [BMTOCropToolbarE cSetclampbuttonhiddenBm:25] ? 1 : 0;
ret += [BMTOCropToolbarE ySetclampbuttonglowingBm:7] ? 1 : 0;
ret += [BMTOCropToolbarE bSetrotatecounterclockwisebuttonhiddenBm:60] ? 1 : 0;
ret += [BMTOCropToolbarE MresetButtonEnabledBm:98] ? 1 : 0;
ret += [BMTOCropToolbarE XSetresetbuttonenabledBm:52] ? 1 : 0;
ret += [BMTOCropToolbarE NdoneButtonFrameBm:29] ? 1 : 0;
ret += [BMTOCropToolbarE TSetcanceltextbuttontitleBm:11] ? 1 : 0;
ret += [BMTOCropToolbarE lSetdonetextbuttontitleBm:89] ? 1 : 0;
ret += [BMTOCropToolbarE cdoneImageBm:82] ? 1 : 0;
ret += [BMTOCropToolbarE ycancelImageBm:32] ? 1 : 0;
ret += [BMTOCropToolbarE SrotateCCWImageBm:41] ? 1 : 0;
ret += [BMTOCropToolbarE zrotateCWImageBm:90] ? 1 : 0;
ret += [BMTOCropToolbarE UresetImageBm:35] ? 1 : 0;
ret += [BMTOCropToolbarE EclampImageBm:55] ? 1 : 0;
ret += [BMTOCropToolbarE PSetrotateclockwisebuttonhiddenBm:97] ? 1 : 0;
ret += [BMTOCropToolbarE VrotateButtonBm:62] ? 1 : 0;
ret += [BMTOCropToolbarE FSetstatusbarheightinsetBm:20] ? 1 : 0;
ret += [BMGPUImageJFAVoronoiFilterh SInitbmBm:60] ? 1 : 0;
ret += [BMGPUImageJFAVoronoiFilterh tSetsizeinpixelsbmBm:41] ? 1 : 0;
ret += [BMGPUImageJFAVoronoiFilterh sNextpoweroftwobmBm:24] ? 1 : 0;
ret += [BMGPUImageJFAVoronoiFilterh eRendertotexturewithverticestexturecoordinatesbmBm:96] ? 1 : 0;
ret += [BMNSDictionaryZ mrac_sequenceBm:74] ? 1 : 0;
ret += [BMNSDictionaryZ mrac_keySequenceBm:36] ? 1 : 0;
ret += [BMNSDictionaryZ Srac_valueSequenceBm:94] ? 1 : 0;
ret += [BMGPUImageHalftoneFilterP LinitBm:46] ? 1 : 0;
ret += [BMYYClassInfoI xInitwithclassbmBm:66] ? 1 : 0;
ret += [BMYYClassInfoI g_UpdatebmBm:66] ? 1 : 0;
ret += [BMYYClassInfoI qSetneedupdatebmBm:78] ? 1 : 0;
ret += [BMYYClassInfoI kNeedupdatebmBm:7] ? 1 : 0;
ret += [BMYYClassInfoI vClassinfowithclassbmBm:82] ? 1 : 0;
ret += [BMYYClassInfoI JClassinfowithclassnamebmBm:41] ? 1 : 0;
ret += [BMGPUImageExposureFilterO kinitBm:46] ? 1 : 0;
ret += [BMGPUImageExposureFilterO ISetexposureBm:72] ? 1 : 0;
ret += [BMGPUImageTwoInputFilterU pInitwithfragmentshaderfromstringBm:4] ? 1 : 0;
ret += [BMGPUImageTwoInputFilterU pInitwithvertexshaderfromstringlFragmentshaderfromstringBm:57] ? 1 : 0;
ret += [BMGPUImageTwoInputFilterU einitializeAttributesBm:44] ? 1 : 0;
ret += [BMGPUImageTwoInputFilterU RdisableFirstFrameCheckBm:94] ? 1 : 0;
ret += [BMGPUImageTwoInputFilterU MdisableSecondFrameCheckBm:62] ? 1 : 0;
ret += [BMGPUImageTwoInputFilterU jRendertotexturewithverticesTTexturecoordinatesBm:33] ? 1 : 0;
ret += [BMGPUImageTwoInputFilterU XnextAvailableTextureIndexBm:32] ? 1 : 0;
ret += [BMGPUImageTwoInputFilterU fSetinputframebuffercAtindexBm:10] ? 1 : 0;
ret += [BMGPUImageTwoInputFilterU uSetinputsizeDAtindexBm:34] ? 1 : 0;
ret += [BMGPUImageTwoInputFilterU fSetinputrotationQAtindexBm:52] ? 1 : 0;
ret += [BMGPUImageTwoInputFilterU NRotatedsizeFForindexBm:73] ? 1 : 0;
ret += [BMGPUImageTwoInputFilterU NNewframereadyattimezAtindexBm:97] ? 1 : 0;
ret += [BMDGActivityIndicatorViewD BInitwithcoderbmBm:30] ? 1 : 0;
ret += [BMDGActivityIndicatorViewD YInitwithtypebmBm:7] ? 1 : 0;
ret += [BMDGActivityIndicatorViewD wInitwithtypetintcolorbmBm:98] ? 1 : 0;
ret += [BMDGActivityIndicatorViewD VInitwithtypetintcolorsizebmBm:60] ? 1 : 0;
ret += [BMDGActivityIndicatorViewD wCommoninitbmBm:82] ? 1 : 0;
ret += [BMDGActivityIndicatorViewD qSetupanimationbmBm:22] ? 1 : 0;
ret += [BMDGActivityIndicatorViewD HStartanimatingbmBm:96] ? 1 : 0;
ret += [BMDGActivityIndicatorViewD bStopanimatingbmBm:17] ? 1 : 0;
ret += [BMDGActivityIndicatorViewD GSettypebmBm:27] ? 1 : 0;
ret += [BMDGActivityIndicatorViewD oSetsizebmBm:26] ? 1 : 0;
ret += [BMDGActivityIndicatorViewD lSettintcolorbmBm:12] ? 1 : 0;
ret += [BMDGActivityIndicatorViewD fActivityindicatoranimationforanimationtypebmBm:65] ? 1 : 0;
ret += [BMDGActivityIndicatorViewD tLayoutsubviewsbmBm:34] ? 1 : 0;
ret += [BMDGActivityIndicatorViewD lIntrinsiccontentsizebmBm:6] ? 1 : 0;
ret += [BMGPUImageHardLightBlendFilterX FInitbmBm:97] ? 1 : 0;
ret += [BMTOCropToolbarO gInitwithframebmBm:51] ? 1 : 0;
ret += [BMTOCropToolbarO LSetupbmBm:56] ? 1 : 0;
ret += [BMTOCropToolbarO oLayoutsubviewsbmBm:3] ? 1 : 0;
ret += [BMTOCropToolbarO ELayouttoolbarbuttonswithsamebuttonsizeincontainerrecthorizontallybmBm:35] ? 1 : 0;
ret += [BMTOCropToolbarO SButtontappedbmBm:31] ? 1 : 0;
ret += [BMTOCropToolbarO qClampbuttonframebmBm:89] ? 1 : 0;
ret += [BMTOCropToolbarO gSetclampbuttonhiddenbmBm:48] ? 1 : 0;
ret += [BMTOCropToolbarO ySetclampbuttonglowingbmBm:57] ? 1 : 0;
ret += [BMTOCropToolbarO dSetrotatecounterclockwisebuttonhiddenbmBm:80] ? 1 : 0;
ret += [BMTOCropToolbarO YResetbuttonenabledbmBm:50] ? 1 : 0;
ret += [BMTOCropToolbarO MSetresetbuttonenabledbmBm:60] ? 1 : 0;
ret += [BMTOCropToolbarO TDonebuttonframebmBm:72] ? 1 : 0;
ret += [BMTOCropToolbarO bSetcanceltextbuttontitlebmBm:24] ? 1 : 0;
ret += [BMTOCropToolbarO qSetdonetextbuttontitlebmBm:82] ? 1 : 0;
ret += [BMTOCropToolbarO XDoneimagebmBm:83] ? 1 : 0;
ret += [BMTOCropToolbarO VCancelimagebmBm:0] ? 1 : 0;
ret += [BMTOCropToolbarO vRotateccwimagebmBm:49] ? 1 : 0;
ret += [BMTOCropToolbarO tRotatecwimagebmBm:12] ? 1 : 0;
ret += [BMTOCropToolbarO PResetimagebmBm:55] ? 1 : 0;
ret += [BMTOCropToolbarO BClampimagebmBm:15] ? 1 : 0;
ret += [BMTOCropToolbarO ESetrotateclockwisebuttonhiddenbmBm:25] ? 1 : 0;
ret += [BMTOCropToolbarO nRotatebuttonbmBm:6] ? 1 : 0;
ret += [BMTOCropToolbarO YSetstatusbarheightinsetbmBm:25] ? 1 : 0;
ret += [BMGPUImageTextureOutputy FInitbmBm:61] ? 1 : 0;
ret += [BMGPUImageTextureOutputy bDonewithtexturebmBm:28] ? 1 : 0;
ret += [BMGPUImageTextureOutputy fNewframereadyattimeatindexbmBm:35] ? 1 : 0;
ret += [BMGPUImageTextureOutputy nNextavailabletextureindexbmBm:11] ? 1 : 0;
ret += [BMGPUImageTextureOutputy ZSetinputframebufferatindexbmBm:1] ? 1 : 0;
ret += [BMGPUImageTextureOutputy MSetinputrotationatindexbmBm:38] ? 1 : 0;
ret += [BMGPUImageTextureOutputy ISetinputsizeatindexbmBm:22] ? 1 : 0;
ret += [BMGPUImageTextureOutputy dMaximumoutputsizebmBm:57] ? 1 : 0;
ret += [BMGPUImageTextureOutputy YEndprocessingbmBm:34] ? 1 : 0;
ret += [BMGPUImageTextureOutputy GShouldignoreupdatestothistargetbmBm:85] ? 1 : 0;
ret += [BMGPUImageTextureOutputy uWantsmonochromeinputbmBm:9] ? 1 : 0;
ret += [BMGPUImageTextureOutputy oSetcurrentlyreceivingmonochromeinputbmBm:7] ? 1 : 0;
ret += [BMRACSignalI UDonextBm:96] ? 1 : 0;
ret += [BMRACSignalI FDoerrorBm:31] ? 1 : 0;
ret += [BMRACSignalI LDocompletedBm:57] ? 1 : 0;
ret += [BMRACSignalI LThrottleBm:48] ? 1 : 0;
ret += [BMRACSignalI PThrottleDValuespassingtestBm:68] ? 1 : 0;
ret += [BMRACSignalI eDelayBm:17] ? 1 : 0;
ret += [BMRACSignalI YrepeatBm:95] ? 1 : 0;
ret += [BMRACSignalI mCatchBm:97] ? 1 : 0;
ret += [BMRACSignalI cCatchtoBm:52] ? 1 : 0;
ret += [BMRACSignalI RTryBm:27] ? 1 : 0;
ret += [BMRACSignalI MTryBm:78] ? 1 : 0;
ret += [BMRACSignalI FTrymapBm:49] ? 1 : 0;
ret += [BMRACSignalI JInitiallyBm:4] ? 1 : 0;
ret += [BMRACSignalI pFinallyBm:66] ? 1 : 0;
ret += [BMRACSignalI RBufferwithtimeXOnschedulerBm:42] ? 1 : 0;
ret += [BMRACSignalI WcollectBm:88] ? 1 : 0;
ret += [BMRACSignalI PTakelastBm:74] ? 1 : 0;
ret += [BMRACSignalI bCombinelatestwithBm:39] ? 1 : 0;
ret += [BMRACSignalI tCombinelatestBm:29] ? 1 : 0;
ret += [BMRACSignalI nCombinelatestiReduceBm:4] ? 1 : 0;
ret += [BMRACSignalI HMergeBm:27] ? 1 : 0;
ret += [BMRACSignalI mMergeBm:68] ? 1 : 0;
ret += [BMRACSignalI cFlattenBm:7] ? 1 : 0;
ret += [BMRACSignalI mThenBm:60] ? 1 : 0;
ret += [BMRACSignalI vconcatBm:84] ? 1 : 0;
ret += [BMRACSignalI gAggregatewithstartfactoryOReduceBm:58] ? 1 : 0;
ret += [BMRACSignalI FAggregatewithstartsReduceBm:71] ? 1 : 0;
ret += [BMRACSignalI qAggregatewithstartWReducewithindexBm:89] ? 1 : 0;
ret += [BMRACSignalI tSetkeypathqOnobjectBm:23] ? 1 : 0;
ret += [BMRACSignalI hSetkeypathyOnobjectuNilvalueBm:79] ? 1 : 0;
ret += [BMRACSignalI pIntervalkOnschedulerBm:45] ? 1 : 0;
ret += [BMRACSignalI sIntervalGOnschedulerFWithleewayBm:35] ? 1 : 0;
ret += [BMRACSignalI gTakeuntilBm:94] ? 1 : 0;
ret += [BMRACSignalI YTakeuntilreplacementBm:58] ? 1 : 0;
ret += [BMRACSignalI DswitchToLatestBm:8] ? 1 : 0;
ret += [BMRACSignalI jSwitchxCasesYDefaultBm:76] ? 1 : 0;
ret += [BMRACSignalI IIfyThenhElseBm:7] ? 1 : 0;
ret += [BMRACSignalI OfirstBm:86] ? 1 : 0;
ret += [BMRACSignalI qFirstordefaultBm:10] ? 1 : 0;
ret += [BMRACSignalI SFirstordefaultfSuccessGErrorBm:65] ? 1 : 0;
ret += [BMRACSignalI QWaituntilcompletedBm:62] ? 1 : 0;
ret += [BMRACSignalI VDeferBm:93] ? 1 : 0;
ret += [BMRACSignalI LtoArrayBm:13] ? 1 : 0;
ret += [BMRACSignalI osequenceBm:78] ? 1 : 0;
ret += [BMRACSignalI UpublishBm:72] ? 1 : 0;
ret += [BMRACSignalI WMulticastBm:14] ? 1 : 0;
ret += [BMRACSignalI KreplayBm:59] ? 1 : 0;
ret += [BMRACSignalI rreplayLastBm:22] ? 1 : 0;
ret += [BMRACSignalI creplayLazilyBm:37] ? 1 : 0;
ret += [BMRACSignalI kTimeoutZOnschedulerBm:27] ? 1 : 0;
ret += [BMRACSignalI gDeliveronBm:70] ? 1 : 0;
ret += [BMRACSignalI vSubscribeonBm:51] ? 1 : 0;
ret += [BMRACSignalI edeliverOnMainThreadBm:3] ? 1 : 0;
ret += [BMRACSignalI XGroupbymTransformBm:7] ? 1 : 0;
ret += [BMRACSignalI nGroupbyBm:2] ? 1 : 0;
ret += [BMRACSignalI lanyBm:57] ? 1 : 0;
ret += [BMRACSignalI BAnyBm:36] ? 1 : 0;
ret += [BMRACSignalI wAllBm:34] ? 1 : 0;
ret += [BMRACSignalI wRetryBm:56] ? 1 : 0;
ret += [BMRACSignalI ZretryBm:6] ? 1 : 0;
ret += [BMRACSignalI XSampleBm:76] ? 1 : 0;
ret += [BMRACSignalI EignoreValuesBm:42] ? 1 : 0;
ret += [BMRACSignalI pmaterializeBm:66] ? 1 : 0;
ret += [BMRACSignalI ZdematerializeBm:1] ? 1 : 0;
ret += [BMRACSignalI AnotBm:67] ? 1 : 0;
ret += [BMRACSignalI PandBm:8] ? 1 : 0;
ret += [BMRACSignalI QorBm:29] ? 1 : 0;
ret += [BMRACSignalI nreduceApplyBm:68] ? 1 : 0;
ret += [BMDGActivityIndicatorTriangleSkewSpinAnimationz uSetupanimationinlayerqWithsizeWTintcolorBm:84] ? 1 : 0;
ret += [BMDGActivityIndicatorDoubleBounceAnimationS TSetupanimationinlayerYWithsizeYTintcolorBm:89] ? 1 : 0;
ret += [BMNSLayoutConstraintB QlayoutRelationDescriptionsByValueBm:99] ? 1 : 0;
ret += [BMNSLayoutConstraintB IlayoutAttributeDescriptionsByValueBm:54] ? 1 : 0;
ret += [BMNSLayoutConstraintB clayoutPriorityDescriptionsByValueBm:78] ? 1 : 0;
ret += [BMNSLayoutConstraintB cDescriptionforobjectBm:33] ? 1 : 0;
ret += [BMNSLayoutConstraintB bdescriptionBm:30] ? 1 : 0;
ret += [BMRACStringSequenceQ KSequencewithstringoffsetbmBm:13] ? 1 : 0;
ret += [BMRACStringSequenceQ FHeadbmBm:19] ? 1 : 0;
ret += [BMRACStringSequenceQ HTailbmBm:56] ? 1 : 0;
ret += [BMRACStringSequenceQ fArraybmBm:3] ? 1 : 0;
ret += [BMRACStringSequenceQ rDescriptionbmBm:24] ? 1 : 0;
ret += [BMNSStringj Drac_descriptionBm:82] ? 1 : 0;
ret += [BMGPUImageThresholdEdgeDetectionFilterp jInitwithfragmentshaderfromstringBm:60] ? 1 : 0;
ret += [BMGPUImageThresholdEdgeDetectionFilterp HinitBm:25] ? 1 : 0;
ret += [BMGPUImageThresholdEdgeDetectionFilterp vSetthresholdBm:83] ? 1 : 0;
ret += [BMRACValueTransformern MallowsReverseTransformationBm:15] ? 1 : 0;
ret += [BMRACValueTransformern HTransformedvalueBm:43] ? 1 : 0;
ret += [BMRACValueTransformern FTransformerwithblockBm:82] ? 1 : 0;
ret += [BMUISliderU LRac_NewvaluechannelwithnilvaluebmBm:17] ? 1 : 0;
ret += [BMRACUnarySequencez EReturnBm:95] ? 1 : 0;
ret += [BMRACUnarySequencez jtailBm:24] ? 1 : 0;
ret += [BMRACUnarySequencez mBindBm:66] ? 1 : 0;
ret += [BMRACUnarySequencez tclassForCoderBm:59] ? 1 : 0;
ret += [BMRACUnarySequencez PInitwithcoderBm:79] ? 1 : 0;
ret += [BMRACUnarySequencez UEncodewithcoderBm:15] ? 1 : 0;
ret += [BMRACUnarySequencez hdescriptionBm:40] ? 1 : 0;
ret += [BMRACUnarySequencez nhashBm:81] ? 1 : 0;
ret += [BMRACUnarySequencez yIsequalBm:81] ? 1 : 0;
ret += [BMGPUImage3x3TextureSamplingFilterx uInitwithvertexshaderfromstringXFragmentshaderfromstringBm:34] ? 1 : 0;
ret += [BMGPUImage3x3TextureSamplingFilterx NInitwithfragmentshaderfromstringBm:9] ? 1 : 0;
ret += [BMGPUImage3x3TextureSamplingFilterx xSetupfilterforsizeBm:49] ? 1 : 0;
ret += [BMGPUImage3x3TextureSamplingFilterx USettexelwidthBm:11] ? 1 : 0;
ret += [BMGPUImage3x3TextureSamplingFilterx sSettexelheightBm:42] ? 1 : 0;
ret += [BMBKMIBaseNavigationCH GviewDidLoadBm:57] ? 1 : 0;
ret += [BMBKMIBaseNavigationCH pPushviewcontrollerLAnimatedBm:1] ? 1 : 0;
ret += [BMBKMIBaseNavigationCH eBKreturnCustomBm:43] ? 1 : 0;
ret += [BMUIButtonQ osharedImageDownloaderBm:21] ? 1 : 0;
ret += [BMUIButtonQ jSetsharedimagedownloaderBm:77] ? 1 : 0;
ret += [BMUIButtonQ eSetimageforstatemWithurlBm:95] ? 1 : 0;
ret += [BMUIButtonQ bSetimageforstateiWithurlNPlaceholderimageBm:91] ? 1 : 0;
ret += [BMUIButtonQ PSetimageforstateBWithurlrequestdPlaceholderimagekSuccessmFailureBm:97] ? 1 : 0;
ret += [BMUIButtonQ vSetbackgroundimageforstateJWithurlBm:70] ? 1 : 0;
ret += [BMUIButtonQ ySetbackgroundimageforstateoWithurlvPlaceholderimageBm:4] ? 1 : 0;
ret += [BMUIButtonQ YSetbackgroundimageforstateAWithurlrequestUPlaceholderimagegSuccessoFailureBm:14] ? 1 : 0;
ret += [BMUIButtonQ VCancelimagedownloadtaskforstateBm:50] ? 1 : 0;
ret += [BMUIButtonQ OCancelbackgroundimagedownloadtaskforstateBm:23] ? 1 : 0;
ret += [BMUIButtonQ GIsactivetaskurlequaltourlrequesthForstateBm:56] ? 1 : 0;
ret += [BMUIButtonQ GIsactivebackgroundtaskurlequaltourlrequestcForstateBm:30] ? 1 : 0;
ret += [BMIQBarButtonItemConfigurationL bInitwithbarbuttonsystemitemactionbmBm:58] ? 1 : 0;
ret += [BMIQBarButtonItemConfigurationL lInitwithimageactionbmBm:86] ? 1 : 0;
ret += [BMIQBarButtonItemConfigurationL aInitwithtitleactionbmBm:35] ? 1 : 0;
ret += [BMGPUImageDivideBlendFilterQ WinitBm:78] ? 1 : 0;
ret += [BMRACEventp jisFinishedBm:35] ? 1 : 0;
ret += [BMRACEventp XerrorBm:22] ? 1 : 0;
ret += [BMRACEventp pvalueBm:96] ? 1 : 0;
ret += [BMRACEventp LcompletedEventBm:20] ? 1 : 0;
ret += [BMRACEventp HEventwitherrorBm:48] ? 1 : 0;
ret += [BMRACEventp AEventwithvalueBm:66] ? 1 : 0;
ret += [BMRACEventp FInitwitheventtypeIObjectBm:29] ? 1 : 0;
ret += [BMRACEventp eCopywithzoneBm:19] ? 1 : 0;
ret += [BMRACEventp adescriptionBm:66] ? 1 : 0;
ret += [BMRACEventp vhashBm:75] ? 1 : 0;
ret += [BMRACEventp iIsequalBm:21] ? 1 : 0;
ret += [BMSDLoopProgressViewZ UDrawrectBm:92] ? 1 : 0;
ret += [BMUITableViewHeaderFooterViewF irac_prepareForReuseSignalBm:11] ? 1 : 0;
ret += [BMGPUImageiOSBlurFiltere VinitBm:15] ? 1 : 0;
ret += [BMGPUImageiOSBlurFiltere dSetinputsizeuAtindexBm:88] ? 1 : 0;
ret += [BMGPUImageiOSBlurFiltere mSetblurradiusinpixelsBm:4] ? 1 : 0;
ret += [BMGPUImageiOSBlurFiltere TblurRadiusInPixelsBm:39] ? 1 : 0;
ret += [BMGPUImageiOSBlurFiltere ZSetsaturationBm:56] ? 1 : 0;
ret += [BMGPUImageiOSBlurFiltere ssaturationBm:74] ? 1 : 0;
ret += [BMGPUImageiOSBlurFiltere qSetdownsamplingBm:84] ? 1 : 0;
ret += [BMGPUImageiOSBlurFiltere XSetrangereductionfactorBm:58] ? 1 : 0;
ret += [BMGPUImageiOSBlurFiltere mrangeReductionFactorBm:67] ? 1 : 0;
ret += [BMRACDelegateProxyJ XInitwithprotocolBm:87] ? 1 : 0;
ret += [BMRACDelegateProxyJ LSignalforselectorBm:30] ? 1 : 0;
ret += [BMRACDelegateProxyJ WisProxyBm:30] ? 1 : 0;
ret += [BMRACDelegateProxyJ xForwardinvocationBm:35] ? 1 : 0;
ret += [BMRACDelegateProxyJ vMethodsignatureforselectorBm:29] ? 1 : 0;
ret += [BMRACDelegateProxyJ sRespondstoselectorBm:29] ? 1 : 0;
ret += [BMUIViewP PSnapshotimagebmBm:50] ? 1 : 0;
ret += [BMUIViewP QSnapshotimageafterscreenupdatesbmBm:18] ? 1 : 0;
ret += [BMUIViewP lSnapshotpdfbmBm:67] ? 1 : 0;
ret += [BMUIViewP ISetlayershadowoffsetradiusbmBm:15] ? 1 : 0;
ret += [BMUIViewP wRemoveallsubviewsbmBm:76] ? 1 : 0;
ret += [BMUIViewP SViewcontrollerbmBm:77] ? 1 : 0;
ret += [BMUIViewP eVisiblealphabmBm:91] ? 1 : 0;
ret += [BMUIViewP fConvertpointtovieworwindowbmBm:58] ? 1 : 0;
ret += [BMUIViewP cConvertpointfromvieworwindowbmBm:81] ? 1 : 0;
ret += [BMUIViewP KConvertrecttovieworwindowbmBm:25] ? 1 : 0;
ret += [BMUIViewP yConvertrectfromvieworwindowbmBm:91] ? 1 : 0;
ret += [BMUIViewP XLeftbmBm:15] ? 1 : 0;
ret += [BMUIViewP CSetleftbmBm:83] ? 1 : 0;
ret += [BMUIViewP PTopbmBm:36] ? 1 : 0;
ret += [BMUIViewP USettopbmBm:20] ? 1 : 0;
ret += [BMUIViewP kRightbmBm:92] ? 1 : 0;
ret += [BMUIViewP FSetrightbmBm:98] ? 1 : 0;
ret += [BMUIViewP KBottombmBm:9] ? 1 : 0;
ret += [BMUIViewP lSetbottombmBm:22] ? 1 : 0;
ret += [BMUIViewP uWidthbmBm:79] ? 1 : 0;
ret += [BMUIViewP CSetwidthbmBm:26] ? 1 : 0;
ret += [BMUIViewP zHeightbmBm:11] ? 1 : 0;
ret += [BMUIViewP gSetheightbmBm:17] ? 1 : 0;
ret += [BMUIViewP dCenterxbmBm:12] ? 1 : 0;
ret += [BMUIViewP QSetcenterxbmBm:88] ? 1 : 0;
ret += [BMUIViewP kCenterybmBm:31] ? 1 : 0;
ret += [BMUIViewP PSetcenterybmBm:6] ? 1 : 0;
ret += [BMUIViewP oOriginbmBm:63] ? 1 : 0;
ret += [BMUIViewP KSetoriginbmBm:16] ? 1 : 0;
ret += [BMUIViewP KSizebmBm:31] ? 1 : 0;
ret += [BMUIViewP FSetsizebmBm:41] ? 1 : 0;
ret += [BMUIControlh lRac_SignalforcontroleventsBm:26] ? 1 : 0;
ret += [BMAFJSONResponseSerializera MserializerBm:9] ? 1 : 0;
ret += [BMAFJSONResponseSerializera QSerializerwithreadingoptionsBm:3] ? 1 : 0;
ret += [BMAFJSONResponseSerializera ainitBm:99] ? 1 : 0;
ret += [BMAFJSONResponseSerializera GResponseobjectforresponsedDataBErrorBm:53] ? 1 : 0;
ret += [BMAFJSONResponseSerializera DsupportsSecureCodingBm:11] ? 1 : 0;
ret += [BMAFJSONResponseSerializera IInitwithcoderBm:69] ? 1 : 0;
ret += [BMAFJSONResponseSerializera zEncodewithcoderBm:70] ? 1 : 0;
ret += [BMAFJSONResponseSerializera gCopywithzoneBm:55] ? 1 : 0;
ret += [BMRACCompoundDisposableU ZIsdisposedbmBm:53] ? 1 : 0;
ret += [BMRACCompoundDisposableU pCompounddisposablebmBm:13] ? 1 : 0;
ret += [BMRACCompoundDisposableU ICompounddisposablewithdisposablesbmBm:52] ? 1 : 0;
ret += [BMRACCompoundDisposableU UInitbmBm:1] ? 1 : 0;
ret += [BMRACCompoundDisposableU MInitwithdisposablesbmBm:83] ? 1 : 0;
ret += [BMRACCompoundDisposableU vInitwithblockbmBm:42] ? 1 : 0;
ret += [BMRACCompoundDisposableU dDeallocbmBm:90] ? 1 : 0;
ret += [BMRACCompoundDisposableU qAdddisposablebmBm:48] ? 1 : 0;
ret += [BMRACCompoundDisposableU CRemovedisposablebmBm:65] ? 1 : 0;
ret += [BMRACCompoundDisposableU XDisposebmBm:99] ? 1 : 0;
ret += [BMRACKVOChannelj EcurrentThreadDataBm:49] ? 1 : 0;
ret += [BMRACKVOChannelj uInitwithtargetHKeypathANilvalueBm:1] ? 1 : 0;
ret += [BMRACKVOChannelj qcreateCurrentThreadDataBm:10] ? 1 : 0;
ret += [BMRACKVOChannelj IdestroyCurrentThreadDataBm:3] ? 1 : 0;
ret += [BMUISwitchh Qrac_newOnChannelBm:29] ? 1 : 0;
ret += [BMGPUImageMotionBlurFilterl EinitBm:23] ? 1 : 0;
ret += [BMGPUImageMotionBlurFilterl sSetinputsizeFAtindexBm:79] ? 1 : 0;
ret += [BMGPUImageMotionBlurFilterl hrecalculateTexelOffsetsBm:0] ? 1 : 0;
ret += [BMGPUImageMotionBlurFilterl TSetinputrotationVAtindexBm:78] ? 1 : 0;
ret += [BMGPUImageMotionBlurFilterl PSetblurangleBm:92] ? 1 : 0;
ret += [BMGPUImageMotionBlurFilterl OSetblursizeBm:62] ? 1 : 0;
ret += [BMRACTestSchedulerD rinitBm:6] ? 1 : 0;
ret += [BMRACTestSchedulerD ZdeallocBm:74] ? 1 : 0;
ret += [BMRACTestSchedulerD RstepBm:47] ? 1 : 0;
ret += [BMRACTestSchedulerD HStepBm:91] ? 1 : 0;
ret += [BMRACTestSchedulerD PstepAllBm:92] ? 1 : 0;
ret += [BMRACTestSchedulerD rScheduleBm:12] ? 1 : 0;
ret += [BMRACTestSchedulerD kAfterDScheduleBm:53] ? 1 : 0;
ret += [BMRACTestSchedulerD UAfterHRepeatingeveryIWithleewayhScheduleBm:31] ? 1 : 0;
ret += [BMUIControlL SremoveAllTargetsBm:84] ? 1 : 0;
ret += [BMUIControlL HSettargetpActionnForcontroleventsBm:14] ? 1 : 0;
ret += [BMUIControlL aAddblockforcontroleventsUBlockBm:84] ? 1 : 0;
ret += [BMUIControlL pSetblockforcontroleventsOBlockBm:95] ? 1 : 0;
ret += [BMUIControlL HRemoveallblocksforcontroleventsBm:10] ? 1 : 0;
ret += [BMUIControlL u_yy_allUIControlBlockTargetsBm:51] ? 1 : 0;
ret += [BMGPUImageRawDataOutputB NInitwithimagesizexResultsinbgraformatBm:33] ? 1 : 0;
ret += [BMGPUImageRawDataOutputB KdeallocBm:45] ? 1 : 0;
ret += [BMGPUImageRawDataOutputB mrenderAtInternalSizeBm:5] ? 1 : 0;
ret += [BMGPUImageRawDataOutputB SColoratlocationBm:57] ? 1 : 0;
ret += [BMGPUImageRawDataOutputB lNewframereadyattimeaAtindexBm:30] ? 1 : 0;
ret += [BMGPUImageRawDataOutputB QnextAvailableTextureIndexBm:13] ? 1 : 0;
ret += [BMGPUImageRawDataOutputB aSetinputframebuffersAtindexBm:91] ? 1 : 0;
ret += [BMGPUImageRawDataOutputB dSetinputrotationCAtindexBm:91] ? 1 : 0;
ret += [BMGPUImageRawDataOutputB PSetinputsizeVAtindexBm:69] ? 1 : 0;
ret += [BMGPUImageRawDataOutputB OmaximumOutputSizeBm:15] ? 1 : 0;
ret += [BMGPUImageRawDataOutputB OendProcessingBm:73] ? 1 : 0;
ret += [BMGPUImageRawDataOutputB LshouldIgnoreUpdatesToThisTargetBm:9] ? 1 : 0;
ret += [BMGPUImageRawDataOutputB mwantsMonochromeInputBm:67] ? 1 : 0;
ret += [BMGPUImageRawDataOutputB xSetcurrentlyreceivingmonochromeinputBm:96] ? 1 : 0;
ret += [BMGPUImageRawDataOutputB QrawBytesForImageBm:79] ? 1 : 0;
ret += [BMGPUImageRawDataOutputB LbytesPerRowInOutputBm:66] ? 1 : 0;
ret += [BMGPUImageRawDataOutputB TSetimagesizeBm:23] ? 1 : 0;
ret += [BMGPUImageRawDataOutputB RlockFramebufferForReadingBm:80] ? 1 : 0;
ret += [BMGPUImageRawDataOutputB qunlockFramebufferAfterReadingBm:72] ? 1 : 0;
ret += [BMAFCompoundResponseSerializerc zCompoundserializerwithresponseserializersBm:43] ? 1 : 0;
ret += [BMAFCompoundResponseSerializerc aResponseobjectforresponsemDataaErrorBm:60] ? 1 : 0;
ret += [BMAFCompoundResponseSerializerc IsupportsSecureCodingBm:51] ? 1 : 0;
ret += [BMAFCompoundResponseSerializerc JInitwithcoderBm:0] ? 1 : 0;
ret += [BMAFCompoundResponseSerializerc HEncodewithcoderBm:70] ? 1 : 0;
ret += [BMAFCompoundResponseSerializerc nCopywithzoneBm:75] ? 1 : 0;
ret += [BMGPUImageLowPassFilterA NinitBm:41] ? 1 : 0;
ret += [BMGPUImageLowPassFilterA OSetfilterstrengthBm:92] ? 1 : 0;
ret += [BMGPUImageLowPassFilterA BfilterStrengthBm:30] ? 1 : 0;
ret += [BMGPUImageLowPassFilterA ZAddtargetkAttexturelocationBm:57] ? 1 : 0;
ret += [BMUIGestureRecognizerY mRac_GesturesignalbmBm:75] ? 1 : 0;
ret += [BMUITableViewCellM Orac_prepareForReuseSignalBm:43] ? 1 : 0;
ret += [BMGPUImageChromaKeyFilteru winitBm:62] ? 1 : 0;
ret += [BMGPUImageChromaKeyFilteru gSetcolortoreplaceredwGreenrBlueBm:74] ? 1 : 0;
ret += [BMGPUImageChromaKeyFilteru ASetthresholdsensitivityBm:16] ? 1 : 0;
ret += [BMGPUImageChromaKeyFilteru TSetsmoothingBm:31] ? 1 : 0;
ret += [BMNSArrayG ysortedArrayByTagBm:40] ? 1 : 0;
ret += [BMNSArrayG gsortedArrayByPositionBm:74] ? 1 : 0;
ret += [BMRACIndexSetSequencer fSequencewithindexsetBm:34] ? 1 : 0;
ret += [BMRACIndexSetSequencer cSequencewithindexsetsequenceuOffsetBm:67] ? 1 : 0;
ret += [BMRACIndexSetSequencer vheadBm:41] ? 1 : 0;
ret += [BMRACIndexSetSequencer HtailBm:67] ? 1 : 0;
ret += [BMRACIndexSetSequencer JCountbyenumeratingwithstateOObjectsCCountBm:44] ? 1 : 0;
ret += [BMRACIndexSetSequencer odescriptionBm:27] ? 1 : 0;
ret += [BMGPUImageSolidColorGeneratorY NinitBm:31] ? 1 : 0;
ret += [BMGPUImageSolidColorGeneratorY bRendertotexturewithverticeshTexturecoordinatesBm:72] ? 1 : 0;
ret += [BMGPUImageSolidColorGeneratorY WForceprocessingatsizeBm:96] ? 1 : 0;
ret += [BMGPUImageSolidColorGeneratorY cAddtargetSAttexturelocationBm:92] ? 1 : 0;
ret += [BMGPUImageSolidColorGeneratorY lSetcolorBm:88] ? 1 : 0;
ret += [BMGPUImageSolidColorGeneratorY oSetcolorredVGreenGBlueuAlphaBm:82] ? 1 : 0;
ret += [BMGPUImageSolidColorGeneratorY GSetuseexistingalphaBm:86] ? 1 : 0;
ret += [BMUITableViewHeaderFooterViewH aRac_PrepareforreusesignalbmBm:57] ? 1 : 0;
ret += [BMNSObjecty yRac_ValuesforkeypathobserverbmBm:26] ? 1 : 0;
ret += [BMNSObjecty pRac_ValuesandchangesforkeypathoptionsobserverbmBm:17] ? 1 : 0;
ret += [BMNSArraym dYy_ModelarraywithclasskJsonBm:76] ? 1 : 0;
ret += [BMNSArraym jYy_ModelarraywithclassaArrayBm:59] ? 1 : 0;
ret += [BMUIImagev cGradientcolorimagefromcolorswGradienttypeGImgsizeBm:38] ? 1 : 0;
ret += [BMGPUImageBufferv VinitBm:29] ? 1 : 0;
ret += [BMGPUImageBufferv WdeallocBm:70] ? 1 : 0;
ret += [BMGPUImageBufferv GNewframereadyattimefAtindexBm:42] ? 1 : 0;
ret += [BMGPUImageBufferv DRendertotexturewithverticeswTexturecoordinatesBm:44] ? 1 : 0;
ret += [BMGPUImageBufferv fSetbuffersizeBm:78] ? 1 : 0;
ret += [BMIQKeyboardReturnKeyHandlerC ginitBm:29] ? 1 : 0;
ret += [BMIQKeyboardReturnKeyHandlerC RInitwithviewcontrollerBm:64] ? 1 : 0;
ret += [BMIQKeyboardReturnKeyHandlerC hTextfieldviewcachedinfoBm:56] ? 1 : 0;
ret += [BMIQKeyboardReturnKeyHandlerC QAddresponderfromviewBm:24] ? 1 : 0;
ret += [BMIQKeyboardReturnKeyHandlerC VRemoveresponderfromviewBm:50] ? 1 : 0;
ret += [BMIQKeyboardReturnKeyHandlerC SRemovetextfieldviewBm:51] ? 1 : 0;
ret += [BMIQKeyboardReturnKeyHandlerC OAddtextfieldviewBm:90] ? 1 : 0;
ret += [BMIQKeyboardReturnKeyHandlerC nUpdatereturnkeytypeontextfieldBm:97] ? 1 : 0;
ret += [BMIQKeyboardReturnKeyHandlerC MGotonextresponderorresignBm:43] ? 1 : 0;
ret += [BMIQKeyboardReturnKeyHandlerC ZTextfieldshouldbegineditingBm:60] ? 1 : 0;
ret += [BMIQKeyboardReturnKeyHandlerC mTextfielddidbegineditingBm:23] ? 1 : 0;
ret += [BMIQKeyboardReturnKeyHandlerC JTextfieldshouldendeditingBm:99] ? 1 : 0;
ret += [BMIQKeyboardReturnKeyHandlerC yTextfielddidendeditingBm:3] ? 1 : 0;
ret += [BMIQKeyboardReturnKeyHandlerC nTextfielddidendeditingPReasonBm:13] ? 1 : 0;
ret += [BMIQKeyboardReturnKeyHandlerC dTextfieldvShouldchangecharactersinrangeeReplacementstringBm:55] ? 1 : 0;
ret += [BMIQKeyboardReturnKeyHandlerC FTextfieldshouldclearBm:86] ? 1 : 0;
ret += [BMIQKeyboardReturnKeyHandlerC HTextfieldshouldreturnBm:94] ? 1 : 0;
ret += [BMIQKeyboardReturnKeyHandlerC kTextviewshouldbegineditingBm:27] ? 1 : 0;
ret += [BMIQKeyboardReturnKeyHandlerC uTextviewshouldendeditingBm:84] ? 1 : 0;
ret += [BMIQKeyboardReturnKeyHandlerC VTextviewdidbegineditingBm:97] ? 1 : 0;
ret += [BMIQKeyboardReturnKeyHandlerC oTextviewdidendeditingBm:43] ? 1 : 0;
ret += [BMIQKeyboardReturnKeyHandlerC YTextviewxShouldchangetextinrangegReplacementtextBm:82] ? 1 : 0;
ret += [BMIQKeyboardReturnKeyHandlerC YTextviewdidchangeBm:44] ? 1 : 0;
ret += [BMIQKeyboardReturnKeyHandlerC hTextviewdidchangeselectionBm:74] ? 1 : 0;
ret += [BMIQKeyboardReturnKeyHandlerC HTextviewoShouldinteractwithurlNInrangeCInteractionBm:81] ? 1 : 0;
ret += [BMIQKeyboardReturnKeyHandlerC rTextviewBShouldinteractwithtextattachmentZInrangefInteractionBm:21] ? 1 : 0;
ret += [BMIQKeyboardReturnKeyHandlerC OTextviewcShouldinteractwithurlAInrangeBm:58] ? 1 : 0;
ret += [BMIQKeyboardReturnKeyHandlerC KTextviewiShouldinteractwithtextattachmentiInrangeBm:46] ? 1 : 0;
ret += [BMIQKeyboardReturnKeyHandlerC odeallocBm:23] ? 1 : 0;
ret += [BMRACStreamJ OInitbmBm:0] ? 1 : 0;
ret += [BMRACStreamJ GEmptybmBm:56] ? 1 : 0;
ret += [BMRACStreamJ SBindbmBm:67] ? 1 : 0;
ret += [BMRACStreamJ yReturnbmBm:4] ? 1 : 0;
ret += [BMRACStreamJ nConcatbmBm:98] ? 1 : 0;
ret += [BMRACStreamJ BZipwithbmBm:85] ? 1 : 0;
ret += [BMRACStreamJ LSetnamewithformatbmBm:71] ? 1 : 0;
ret += [BMRACDynamicSequencex TSequencewithheadblocksTailblockBm:18] ? 1 : 0;
ret += [BMRACDynamicSequencex vSequencewithlazydependencyxHeadblockJTailblockBm:28] ? 1 : 0;
ret += [BMRACDynamicSequencex HdeallocBm:14] ? 1 : 0;
ret += [BMRACDynamicSequencex VheadBm:51] ? 1 : 0;
ret += [BMRACDynamicSequencex mtailBm:7] ? 1 : 0;
ret += [BMRACDynamicSequencex ldescriptionBm:1] ? 1 : 0;
ret += [BMWKWebViewa UsessionManagerBm:7] ? 1 : 0;
ret += [BMWKWebViewa LSetsessionmanagerBm:59] ? 1 : 0;
ret += [BMWKWebViewa yresponseSerializerBm:65] ? 1 : 0;
ret += [BMWKWebViewa SSetresponseserializerBm:65] ? 1 : 0;
ret += [BMWKWebViewa OLoadrequestRNavigationmProgressNSuccesskFailureBm:96] ? 1 : 0;
ret += [BMWKWebViewa KLoadrequestRNavigationuMimetypeRTextencodingnameUProgressjSuccessKFailureBm:55] ? 1 : 0;
ret += [BMDGActivityIndicatorFiveDotsAnimationv uSetupanimationinlayerCWithsizeqTintcolorBm:42] ? 1 : 0;
ret += [BMGPUImageHarrisCornerDetectionFiltere FInitbmBm:91] ? 1 : 0;
ret += [BMGPUImageHarrisCornerDetectionFiltere BInitwithcornerdetectionfragmentshaderbmBm:77] ? 1 : 0;
ret += [BMGPUImageHarrisCornerDetectionFiltere YDeallocbmBm:36] ? 1 : 0;
ret += [BMGPUImageHarrisCornerDetectionFiltere KExtractcornerlocationsfromimageatframetimebmBm:9] ? 1 : 0;
ret += [BMGPUImageHarrisCornerDetectionFiltere lWantsmonochromeinputbmBm:80] ? 1 : 0;
ret += [BMGPUImageHarrisCornerDetectionFiltere gSetblurradiusinpixelsbmBm:2] ? 1 : 0;
ret += [BMGPUImageHarrisCornerDetectionFiltere BBlurradiusinpixelsbmBm:81] ? 1 : 0;
ret += [BMGPUImageHarrisCornerDetectionFiltere tSetsensitivitybmBm:58] ? 1 : 0;
ret += [BMGPUImageHarrisCornerDetectionFiltere sSetthresholdbmBm:80] ? 1 : 0;
ret += [BMGPUImageHarrisCornerDetectionFiltere DThresholdbmBm:67] ? 1 : 0;
ret += [BMGPUImageExclusionBlendFilterS xinitBm:27] ? 1 : 0;
ret += [BMGPUImageOverlayBlendFilterH minitBm:79] ? 1 : 0;
ret += [BMDGActivityIndicatorLineScalePartyAnimationT SSetupanimationinlayerYWithsizeKTintcolorBm:40] ? 1 : 0;
ret += [BMDGActivityIndicatorRotatingTrigonAnimationr KSetupanimationinlayerQWithsizeeTintcolorBm:96] ? 1 : 0;
ret += [BMGPUImageRawDataInputo SInitwithbytesySizeBm:43] ? 1 : 0;
ret += [BMGPUImageRawDataInputo FInitwithbytesFSizeqPixelformatBm:77] ? 1 : 0;
ret += [BMGPUImageRawDataInputo PInitwithbytesgSizecPixelformatETypeBm:50] ? 1 : 0;
ret += [BMGPUImageRawDataInputo KdeallocBm:77] ? 1 : 0;
ret += [BMGPUImageRawDataInputo bUploadbytesBm:17] ? 1 : 0;
ret += [BMGPUImageRawDataInputo gUpdatedatafrombytescSizeBm:60] ? 1 : 0;
ret += [BMGPUImageRawDataInputo fprocessDataBm:61] ? 1 : 0;
ret += [BMGPUImageRawDataInputo uProcessdatafortimestampBm:68] ? 1 : 0;
ret += [BMGPUImageRawDataInputo DoutputImageSizeBm:48] ? 1 : 0;
ret += [BMGPUImageFalseColorFilterG SinitBm:67] ? 1 : 0;
ret += [BMGPUImageFalseColorFilterG CSetfirstcolorBm:13] ? 1 : 0;
ret += [BMGPUImageFalseColorFilterG TSetsecondcolorBm:95] ? 1 : 0;
ret += [BMGPUImageFalseColorFilterG OSetfirstcolorredZGreenfBlueBm:95] ? 1 : 0;
ret += [BMGPUImageFalseColorFilterG PSetsecondcolorredeGreenRBlueBm:91] ? 1 : 0;
ret += [BMTOCroppedImageAttributesR RInitwithcroppedframeangleoriginalimagesizebmBm:92] ? 1 : 0;
ret += [BMGPUImagePixellateFilterj cinitBm:62] ? 1 : 0;
ret += [BMGPUImagePixellateFilterj YInitwithfragmentshaderfromstringBm:37] ? 1 : 0;
ret += [BMGPUImagePixellateFilterj UadjustAspectRatioBm:75] ? 1 : 0;
ret += [BMGPUImagePixellateFilterj hSetinputrotationZAtindexBm:87] ? 1 : 0;
ret += [BMGPUImagePixellateFilterj oForceprocessingatsizeBm:97] ? 1 : 0;
ret += [BMGPUImagePixellateFilterj ySetinputsizepAtindexBm:46] ? 1 : 0;
ret += [BMGPUImagePixellateFilterj eSetfractionalwidthofapixelBm:57] ? 1 : 0;
ret += [BMGPUImagePixellateFilterj jSetaspectratioBm:49] ? 1 : 0;
ret += [BMGPUImageBulgeDistortionFilterF XInitbmBm:52] ? 1 : 0;
ret += [BMGPUImageBulgeDistortionFilterF RAdjustaspectratiobmBm:51] ? 1 : 0;
ret += [BMGPUImageBulgeDistortionFilterF oForceprocessingatsizebmBm:22] ? 1 : 0;
ret += [BMGPUImageBulgeDistortionFilterF vSetinputsizeatindexbmBm:35] ? 1 : 0;
ret += [BMGPUImageBulgeDistortionFilterF lSetaspectratiobmBm:95] ? 1 : 0;
ret += [BMGPUImageBulgeDistortionFilterF uSetinputrotationatindexbmBm:23] ? 1 : 0;
ret += [BMGPUImageBulgeDistortionFilterF pSetradiusbmBm:60] ? 1 : 0;
ret += [BMGPUImageBulgeDistortionFilterF CSetscalebmBm:32] ? 1 : 0;
ret += [BMGPUImageBulgeDistortionFilterF TSetcenterbmBm:39] ? 1 : 0;
ret += [BMDGActivityIndicatorThreeDotsAnimationE ASetupanimationinlayeryWithsizepTintcolorBm:29] ? 1 : 0;
ret += [BMGPUImageWhiteBalanceFilterf MinitBm:24] ? 1 : 0;
ret += [BMGPUImageWhiteBalanceFilterf fSettemperatureBm:60] ? 1 : 0;
ret += [BMGPUImageWhiteBalanceFilterf DSettintBm:36] ? 1 : 0;
ret += [BMGPUImageAverageColorx NinitBm:65] ? 1 : 0;
ret += [BMGPUImageAverageColorx OdeallocBm:73] ? 1 : 0;
ret += [BMGPUImageAverageColorx ARendertotexturewithverticesBTexturecoordinatesBm:14] ? 1 : 0;
ret += [BMGPUImageAverageColorx NSetinputrotationdAtindexBm:10] ? 1 : 0;
ret += [BMGPUImageAverageColorx aExtractaveragecoloratframetimeBm:57] ? 1 : 0;
ret += [BMGPUImageFilterm OInitwithvertexshaderfromstringnFragmentshaderfromstringBm:52] ? 1 : 0;
ret += [BMGPUImageFilterm hInitwithfragmentshaderfromstringBm:28] ? 1 : 0;
ret += [BMGPUImageFilterm NInitwithfragmentshaderfromfileBm:36] ? 1 : 0;
ret += [BMGPUImageFilterm WinitBm:67] ? 1 : 0;
ret += [BMGPUImageFilterm RinitializeAttributesBm:37] ? 1 : 0;
ret += [BMGPUImageFilterm QSetupfilterforsizeBm:27] ? 1 : 0;
ret += [BMGPUImageFilterm edeallocBm:82] ? 1 : 0;
ret += [BMGPUImageFilterm EuseNextFrameForImageCaptureBm:60] ? 1 : 0;
ret += [BMGPUImageFilterm cnewCGImageFromCurrentlyProcessedOutputBm:57] ? 1 : 0;
ret += [BMGPUImageFilterm KsizeOfFBOBm:61] ? 1 : 0;
ret += [BMGPUImageFilterm GTexturecoordinatesforrotationBm:66] ? 1 : 0;
ret += [BMGPUImageFilterm YRendertotexturewithverticesnTexturecoordinatesBm:15] ? 1 : 0;
ret += [BMGPUImageFilterm aInformtargetsaboutnewframeattimeBm:36] ? 1 : 0;
ret += [BMGPUImageFilterm woutputFrameSizeBm:63] ? 1 : 0;
ret += [BMGPUImageFilterm ZSetbackgroundcolorredkGreennBluegAlphaBm:93] ? 1 : 0;
ret += [BMGPUImageFilterm cSetintegerHForuniformnameBm:29] ? 1 : 0;
ret += [BMGPUImageFilterm vSetfloatsForuniformnameBm:98] ? 1 : 0;
ret += [BMGPUImageFilterm ySetsizeyForuniformnameBm:75] ? 1 : 0;
ret += [BMGPUImageFilterm cSetpointmForuniformnameBm:53] ? 1 : 0;
ret += [BMGPUImageFilterm ZSetfloatvec3YForuniformnameBm:95] ? 1 : 0;
ret += [BMGPUImageFilterm VSetfloatvec4aForuniformBm:77] ? 1 : 0;
ret += [BMGPUImageFilterm wSetfloatarrayPLengthpForuniformBm:42] ? 1 : 0;
ret += [BMGPUImageFilterm OSetmatrix3FPForuniformtProgramBm:74] ? 1 : 0;
ret += [BMGPUImageFilterm aSetmatrix4FuForuniformYProgramBm:19] ? 1 : 0;
ret += [BMGPUImageFilterm DSetfloateForuniformgProgramBm:0] ? 1 : 0;
ret += [BMGPUImageFilterm kSetpointKForuniformxProgramBm:65] ? 1 : 0;
ret += [BMGPUImageFilterm YSetsizeHForuniformcProgramBm:60] ? 1 : 0;
ret += [BMGPUImageFilterm oSetvec3dForuniformyProgramBm:90] ? 1 : 0;
ret += [BMGPUImageFilterm SSetvec4uForuniformkProgramBm:80] ? 1 : 0;
ret += [BMGPUImageFilterm NSetfloatarrayXLengthUForuniformpProgramBm:46] ? 1 : 0;
ret += [BMGPUImageFilterm ISetintegervForuniformAProgramBm:7] ? 1 : 0;
ret += [BMGPUImageFilterm ESetandexecuteuniformstatecallbackatindexeForprogrameToblockBm:41] ? 1 : 0;
ret += [BMGPUImageFilterm jSetuniformsforprogramatindexBm:81] ? 1 : 0;
ret += [BMGPUImageFilterm bNewframereadyattimecAtindexBm:32] ? 1 : 0;
ret += [BMGPUImageFilterm AnextAvailableTextureIndexBm:72] ? 1 : 0;
ret += [BMGPUImageFilterm oSetinputframebufferuAtindexBm:90] ? 1 : 0;
ret += [BMGPUImageFilterm TRotatedsizeCForindexBm:32] ? 1 : 0;
ret += [BMGPUImageFilterm uRotatedpointYForrotationBm:23] ? 1 : 0;
ret += [BMGPUImageFilterm eSetinputsizepAtindexBm:20] ? 1 : 0;
ret += [BMGPUImageFilterm SSetinputrotationCAtindexBm:63] ? 1 : 0;
ret += [BMGPUImageFilterm FForceprocessingatsizeBm:75] ? 1 : 0;
ret += [BMGPUImageFilterm lForceprocessingatsizerespectingaspectratioBm:59] ? 1 : 0;
ret += [BMGPUImageFilterm nmaximumOutputSizeBm:37] ? 1 : 0;
ret += [BMGPUImageFilterm ZendProcessingBm:8] ? 1 : 0;
ret += [BMGPUImageFilterm nwantsMonochromeInputBm:79] ? 1 : 0;
ret += [BMTOCropOverlayViewK gInitwithframeBm:12] ? 1 : 0;
ret += [BMTOCropOverlayViewK usetupBm:81] ? 1 : 0;
ret += [BMTOCropOverlayViewK MSetframeBm:38] ? 1 : 0;
ret += [BMTOCropOverlayViewK FdidMoveToSuperviewBm:12] ? 1 : 0;
ret += [BMTOCropOverlayViewK AlayoutLinesBm:71] ? 1 : 0;
ret += [BMTOCropOverlayViewK XSetgridhiddendAnimatedBm:79] ? 1 : 0;
ret += [BMTOCropOverlayViewK BSetdisplayhorizontalgridlinesBm:78] ? 1 : 0;
ret += [BMTOCropOverlayViewK CSetdisplayverticalgridlinesBm:41] ? 1 : 0;
ret += [BMTOCropOverlayViewK ISetgridhiddenBm:75] ? 1 : 0;
ret += [BMTOCropOverlayViewK bcreateNewLineViewBm:66] ? 1 : 0;
ret += [BMGPUImageAddBlendFilterN RinitBm:13] ? 1 : 0;
ret += [BMRACStringSequenceJ QSequencewithstringTOffsetBm:17] ? 1 : 0;
ret += [BMRACStringSequenceJ AheadBm:29] ? 1 : 0;
ret += [BMRACStringSequenceJ btailBm:10] ? 1 : 0;
ret += [BMRACStringSequenceJ jarrayBm:90] ? 1 : 0;
ret += [BMRACStringSequenceJ SdescriptionBm:17] ? 1 : 0;
ret += [BMGPUImageLuminanceRangeFilterz yinitBm:41] ? 1 : 0;
ret += [BMGPUImageLuminanceRangeFilterz aSetrangereductionfactorBm:38] ? 1 : 0;
ret += [BMGPUImageNobleCornerDetectionFilterk wInitbmBm:7] ? 1 : 0;
ret += [BMDGActivityIndicatorBallClipRotateAnimationa eSetupanimationinlayerXWithsizePTintcolorBm:91] ? 1 : 0;
ret += [BMRACSignalx pEmptybmBm:6] ? 1 : 0;
ret += [BMRACSignalx nReturnbmBm:44] ? 1 : 0;
ret += [BMRACSignalx DBindbmBm:83] ? 1 : 0;
ret += [BMRACSignalx iConcatbmBm:41] ? 1 : 0;
ret += [BMRACSignalx lZipwithbmBm:85] ? 1 : 0;
ret += [BMGPUImageSketchFilterZ LinitBm:34] ? 1 : 0;
ret += [BMDGActivityIndicatorLineScalePulseOutRapidAnimationg kSetupanimationinlayerwithsizetintcolorbmBm:13] ? 1 : 0;
ret += [BMRACErrorSignalg NErrorBm:29] ? 1 : 0;
ret += [BMRACErrorSignalg zSubscribeBm:66] ? 1 : 0;
ret += [BMUIViewK dKeyboardtoolbarbmBm:32] ? 1 : 0;
ret += [BMUIViewK FSetshouldhidetoolbarplaceholderbmBm:92] ? 1 : 0;
ret += [BMUIViewK bShouldhidetoolbarplaceholderbmBm:24] ? 1 : 0;
ret += [BMUIViewK BSettoolbarplaceholderbmBm:38] ? 1 : 0;
ret += [BMUIViewK bToolbarplaceholderbmBm:44] ? 1 : 0;
ret += [BMUIViewK RDrawingtoolbarplaceholderbmBm:22] ? 1 : 0;
ret += [BMUIViewK cFlexiblebarbuttonitembmBm:87] ? 1 : 0;
ret += [BMUIViewK oAddkeyboardtoolbarwithtargettitletextrightbarbuttonconfigurationpreviousbarbuttonconfigurationnextbarbuttonconfigurationbmBm:31] ? 1 : 0;
ret += [BMUIViewK qAddrightbuttononkeyboardwithtexttargetactionbmBm:96] ? 1 : 0;
ret += [BMUIViewK OAddrightbuttononkeyboardwithtexttargetactionshouldshowplaceholderbmBm:45] ? 1 : 0;
ret += [BMUIViewK vAddrightbuttononkeyboardwithtexttargetactiontitletextbmBm:79] ? 1 : 0;
ret += [BMUIViewK BAddrightbuttononkeyboardwithimagetargetactionbmBm:26] ? 1 : 0;
ret += [BMUIViewK XAddrightbuttononkeyboardwithimagetargetactionshouldshowplaceholderbmBm:30] ? 1 : 0;
ret += [BMUIViewK ZAddrightbuttononkeyboardwithimagetargetactiontitletextbmBm:53] ? 1 : 0;
ret += [BMUIViewK hAdddoneonkeyboardwithtargetactionbmBm:96] ? 1 : 0;
ret += [BMUIViewK TAdddoneonkeyboardwithtargetactionshouldshowplaceholderbmBm:15] ? 1 : 0;
ret += [BMUIViewK nAdddoneonkeyboardwithtargetactiontitletextbmBm:34] ? 1 : 0;
ret += [BMUIViewK iAddleftrightonkeyboardwithtargetleftbuttontitlerightbuttontitleleftbuttonactionrightbuttonactionbmBm:26] ? 1 : 0;
ret += [BMUIViewK bAddleftrightonkeyboardwithtargetleftbuttontitlerightbuttontitleleftbuttonactionrightbuttonactionshouldshowplaceholderbmBm:37] ? 1 : 0;
ret += [BMUIViewK fAddleftrightonkeyboardwithtargetleftbuttontitlerightbuttontitleleftbuttonactionrightbuttonactiontitletextbmBm:51] ? 1 : 0;
ret += [BMUIViewK cAddcanceldoneonkeyboardwithtargetcancelactiondoneactionbmBm:2] ? 1 : 0;
ret += [BMUIViewK TAddcanceldoneonkeyboardwithtargetcancelactiondoneactionshouldshowplaceholderbmBm:52] ? 1 : 0;
ret += [BMUIViewK QAddcanceldoneonkeyboardwithtargetcancelactiondoneactiontitletextbmBm:75] ? 1 : 0;
ret += [BMUIViewK ZAddpreviousnextdoneonkeyboardwithtargetpreviousactionnextactiondoneactionbmBm:91] ? 1 : 0;
ret += [BMUIViewK eAddpreviousnextdoneonkeyboardwithtargetpreviousactionnextactiondoneactionshouldshowplaceholderbmBm:52] ? 1 : 0;
ret += [BMUIViewK cAddpreviousnextdoneonkeyboardwithtargetpreviousactionnextactiondoneactiontitletextbmBm:97] ? 1 : 0;
ret += [BMUIViewK ZAddpreviousnextrightonkeyboardwithtargetrightbuttonimagepreviousactionnextactionrightbuttonactionbmBm:62] ? 1 : 0;
ret += [BMUIViewK RAddpreviousnextrightonkeyboardwithtargetrightbuttonimagepreviousactionnextactionrightbuttonactionshouldshowplaceholderbmBm:72] ? 1 : 0;
ret += [BMUIViewK dAddpreviousnextrightonkeyboardwithtargetrightbuttonimagepreviousactionnextactionrightbuttonactiontitletextbmBm:61] ? 1 : 0;
ret += [BMUIViewK zAddpreviousnextrightonkeyboardwithtargetrightbuttontitlepreviousactionnextactionrightbuttonactionbmBm:61] ? 1 : 0;
ret += [BMUIViewK fAddpreviousnextrightonkeyboardwithtargetrightbuttontitlepreviousactionnextactionrightbuttonactionshouldshowplaceholderbmBm:99] ? 1 : 0;
ret += [BMUIViewK vAddpreviousnextrightonkeyboardwithtargetrightbuttontitlepreviousactionnextactionrightbuttonactiontitletextbmBm:76] ? 1 : 0;
ret += [BMTOCropViewo PInitwithimageBm:26] ? 1 : 0;
ret += [BMTOCropViewo pInitwithcroppingstyleTImageBm:23] ? 1 : 0;
ret += [BMTOCropViewo TsetupBm:47] ? 1 : 0;
ret += [BMTOCropViewo WperformInitialSetupBm:34] ? 1 : 0;
ret += [BMTOCropViewo vlayoutInitialImageBm:60] ? 1 : 0;
ret += [BMTOCropViewo RprepareforRotationBm:19] ? 1 : 0;
ret += [BMTOCropViewo bperformRelayoutForRotationBm:44] ? 1 : 0;
ret += [BMTOCropViewo JmatchForegroundToBackgroundBm:92] ? 1 : 0;
ret += [BMTOCropViewo QUpdatecropboxframewithgesturepointBm:16] ? 1 : 0;
ret += [BMTOCropViewo rResetlayouttodefaultanimatedBm:95] ? 1 : 0;
ret += [BMTOCropViewo BToggletranslucencyviewvisibleBm:20] ? 1 : 0;
ret += [BMTOCropViewo RUpdatetoimagecropframeBm:37] ? 1 : 0;
ret += [BMTOCropViewo IGridpangesturerecognizedBm:43] ? 1 : 0;
ret += [BMTOCropViewo DLongpressgesturerecognizedBm:0] ? 1 : 0;
ret += [BMTOCropViewo qGesturerecognizershouldbeginBm:6] ? 1 : 0;
ret += [BMTOCropViewo hGesturerecognizerwShouldreceivetouchBm:80] ? 1 : 0;
ret += [BMTOCropViewo hstartResetTimerBm:8] ? 1 : 0;
ret += [BMTOCropViewo AtimerTriggeredBm:14] ? 1 : 0;
ret += [BMTOCropViewo OcancelResetTimerBm:21] ? 1 : 0;
ret += [BMTOCropViewo cCropedgeforpointBm:61] ? 1 : 0;
ret += [BMTOCropViewo CViewforzoominginscrollviewBm:78] ? 1 : 0;
ret += [BMTOCropViewo QScrollviewdidscrollBm:32] ? 1 : 0;
ret += [BMTOCropViewo IScrollviewwillbegindraggingBm:41] ? 1 : 0;
ret += [BMTOCropViewo QScrollviewwillbeginzoomingOWithviewBm:86] ? 1 : 0;
ret += [BMTOCropViewo vScrollviewdidenddeceleratingBm:6] ? 1 : 0;
ret += [BMTOCropViewo KScrollviewdidendzoomingsWithviewlAtscaleBm:89] ? 1 : 0;
ret += [BMTOCropViewo lScrollviewdidzoomBm:87] ? 1 : 0;
ret += [BMTOCropViewo qScrollviewdidenddraggingIWilldecelerateBm:6] ? 1 : 0;
ret += [BMTOCropViewo tSetcropboxresizeenabledBm:93] ? 1 : 0;
ret += [BMTOCropViewo XSetcropboxframeBm:30] ? 1 : 0;
ret += [BMTOCropViewo aSeteditingBm:32] ? 1 : 0;
ret += [BMTOCropViewo rSetsimplerendermodeBm:69] ? 1 : 0;
ret += [BMTOCropViewo McropBoxAspectRatioIsPortraitBm:43] ? 1 : 0;
ret += [BMTOCropViewo iimageCropFrameBm:29] ? 1 : 0;
ret += [BMTOCropViewo ZSetimagecropframeBm:22] ? 1 : 0;
ret += [BMTOCropViewo MSetcroppingviewshiddenBm:49] ? 1 : 0;
ret += [BMTOCropViewo GSetcroppingviewshiddenwAnimatedBm:43] ? 1 : 0;
ret += [BMTOCropViewo GSetbackgroundimageviewhiddengAnimatedBm:62] ? 1 : 0;
ret += [BMTOCropViewo FSetgridoverlayhiddenBm:3] ? 1 : 0;
ret += [BMTOCropViewo ySetgridoverlayhiddenmAnimatedBm:65] ? 1 : 0;
ret += [BMTOCropViewo XimageViewFrameBm:61] ? 1 : 0;
ret += [BMTOCropViewo NSetcanberesetBm:22] ? 1 : 0;
ret += [BMTOCropViewo tSetangleBm:19] ? 1 : 0;
ret += [BMTOCropViewo ostartEditingBm:5] ? 1 : 0;
ret += [BMTOCropViewo lSeteditingiResetcropboxUAnimatedBm:34] ? 1 : 0;
ret += [BMTOCropViewo WMovecroppedcontenttocenteranimatedBm:65] ? 1 : 0;
ret += [BMTOCropViewo BSetsimplerendermodeBAnimatedBm:38] ? 1 : 0;
ret += [BMTOCropViewo GSetaspectratioBm:78] ? 1 : 0;
ret += [BMTOCropViewo tSetaspectratioAAnimatedBm:27] ? 1 : 0;
ret += [BMTOCropViewo mRotateimageninetydegreesanimatedBm:25] ? 1 : 0;
ret += [BMTOCropViewo aRotateimageninetydegreesanimatedBClockwiseBm:60] ? 1 : 0;
ret += [BMTOCropViewo ecaptureStateForImageRotationBm:59] ? 1 : 0;
ret += [BMTOCropViewo echeckForCanResetBm:18] ? 1 : 0;
ret += [BMTOCropViewo mcontentBoundsBm:57] ? 1 : 0;
ret += [BMTOCropViewo wimageSizeBm:45] ? 1 : 0;
ret += [BMTOCropViewo hhasAspectRatioBm:95] ? 1 : 0;
ret += [BMRACFiveTuplel GInitbmBm:21] ? 1 : 0;
ret += [BMRACFiveTuplel LInitwithbackingarraybmBm:8] ? 1 : 0;
ret += [BMRACFiveTuplel ZPackfirstsecondthirdfourthbmBm:95] ? 1 : 0;
ret += [BMRACFiveTuplel iIsequalbmBm:95] ? 1 : 0;
ret += [BMGPUImageKuwaharaFilterD UinitBm:44] ? 1 : 0;
ret += [BMGPUImageKuwaharaFilterD zSetradiusBm:63] ? 1 : 0;
ret += [BMGPUImageAmatorkaFilterz UinitBm:62] ? 1 : 0;
ret += [BMGPUImageSolidColorGeneratorL mInitbmBm:78] ? 1 : 0;
ret += [BMGPUImageSolidColorGeneratorL hRendertotexturewithverticestexturecoordinatesbmBm:16] ? 1 : 0;
ret += [BMGPUImageSolidColorGeneratorL gForceprocessingatsizebmBm:26] ? 1 : 0;
ret += [BMGPUImageSolidColorGeneratorL SAddtargetattexturelocationbmBm:96] ? 1 : 0;
ret += [BMGPUImageSolidColorGeneratorL uSetcolorbmBm:96] ? 1 : 0;
ret += [BMGPUImageSolidColorGeneratorL DSetcolorredgreenbluealphabmBm:36] ? 1 : 0;
ret += [BMGPUImageSolidColorGeneratorL ASetuseexistingalphabmBm:5] ? 1 : 0;
ret += [BMGPUImageMultiplyBlendFiltern UinitBm:76] ? 1 : 0;
ret += [BMGPUImageZoomBlurFilterJ RinitBm:92] ? 1 : 0;
ret += [BMGPUImageZoomBlurFilterJ WSetinputrotationOAtindexBm:2] ? 1 : 0;
ret += [BMGPUImageZoomBlurFilterJ LSetblursizeBm:40] ? 1 : 0;
ret += [BMGPUImageZoomBlurFilterJ cSetblurcenterBm:46] ? 1 : 0;
ret += [BMGPUImagePictureI oInitwithurlBm:56] ? 1 : 0;
ret += [BMGPUImagePictureI HInitwithdataBm:53] ? 1 : 0;
ret += [BMGPUImagePictureI jInitwithimageBm:14] ? 1 : 0;
ret += [BMGPUImagePictureI hInitwithcgimageBm:48] ? 1 : 0;
ret += [BMGPUImagePictureI tInitwithimagemSmoothlyscaleoutputBm:64] ? 1 : 0;
ret += [BMGPUImagePictureI FInitwithcgimageBSmoothlyscaleoutputBm:12] ? 1 : 0;
ret += [BMGPUImagePictureI ideallocBm:54] ? 1 : 0;
ret += [BMGPUImagePictureI cremoveAllTargetsBm:55] ? 1 : 0;
ret += [BMGPUImagePictureI NprocessImageBm:68] ? 1 : 0;
ret += [BMGPUImagePictureI eProcessimagewithcompletionhandlerBm:19] ? 1 : 0;
ret += [BMGPUImagePictureI nProcessimageuptofilterRWithcompletionhandlerBm:62] ? 1 : 0;
ret += [BMGPUImagePictureI QoutputImageSizeBm:31] ? 1 : 0;
ret += [BMGPUImagePictureI VAddtargetlAttexturelocationBm:22] ? 1 : 0;
ret += [BMGPUImageSmoothToonFilterL pinitBm:36] ? 1 : 0;
ret += [BMGPUImageSmoothToonFilterL cSetblurradiusinpixelsBm:8] ? 1 : 0;
ret += [BMGPUImageSmoothToonFilterL tblurRadiusInPixelsBm:95] ? 1 : 0;
ret += [BMGPUImageSmoothToonFilterL zSettexelwidthBm:93] ? 1 : 0;
ret += [BMGPUImageSmoothToonFilterL ntexelWidthBm:93] ? 1 : 0;
ret += [BMGPUImageSmoothToonFilterL qSettexelheightBm:9] ? 1 : 0;
ret += [BMGPUImageSmoothToonFilterL dtexelHeightBm:8] ? 1 : 0;
ret += [BMGPUImageSmoothToonFilterL MSetthresholdBm:75] ? 1 : 0;
ret += [BMGPUImageSmoothToonFilterL UthresholdBm:91] ? 1 : 0;
ret += [BMGPUImageSmoothToonFilterL oSetquantizationlevelsBm:93] ? 1 : 0;
ret += [BMGPUImageSmoothToonFilterL JquantizationLevelsBm:67] ? 1 : 0;
ret += [BMUITextFieldf PRac_TextsignalbmBm:76] ? 1 : 0;
ret += [BMUITextFieldf ORac_NewtextchannelbmBm:17] ? 1 : 0;
ret += [BMUIScreenL YscreenScaleBm:83] ? 1 : 0;
ret += [BMUIScreenL tcurrentBoundsBm:8] ? 1 : 0;
ret += [BMUIScreenL CBoundsfororientationBm:35] ? 1 : 0;
ret += [BMUIScreenL QsizeInPixelBm:52] ? 1 : 0;
ret += [BMUIScreenL ypixelsPerInchBm:30] ? 1 : 0;
ret += [BMMASConstraintY NinitBm:7] ? 1 : 0;
ret += [BMMASConstraintY equalToBm:88] ? 1 : 0;
ret += [BMMASConstraintY mas_equalToBm:94] ? 1 : 0;
ret += [BMMASConstraintY greaterThanOrEqualToBm:18] ? 1 : 0;
ret += [BMMASConstraintY mas_greaterThanOrEqualToBm:95] ? 1 : 0;
ret += [BMMASConstraintY lessThanOrEqualToBm:77] ? 1 : 0;
ret += [BMMASConstraintY mas_lessThanOrEqualToBm:83] ? 1 : 0;
ret += [BMMASConstraintY priorityLowBm:10] ? 1 : 0;
ret += [BMMASConstraintY priorityMediumBm:97] ? 1 : 0;
ret += [BMMASConstraintY priorityHighBm:61] ? 1 : 0;
ret += [BMMASConstraintY insetsBm:76] ? 1 : 0;
ret += [BMMASConstraintY insetBm:34] ? 1 : 0;
ret += [BMMASConstraintY sizeOffsetBm:32] ? 1 : 0;
ret += [BMMASConstraintY centerOffsetBm:76] ? 1 : 0;
ret += [BMMASConstraintY offsetBm:91] ? 1 : 0;
ret += [BMMASConstraintY valueOffsetBm:71] ? 1 : 0;
ret += [BMMASConstraintY mas_offsetBm:83] ? 1 : 0;
ret += [BMMASConstraintY kSetlayoutconstantwithvalueBm:42] ? 1 : 0;
ret += [BMMASConstraintY TwithBm:55] ? 1 : 0;
ret += [BMMASConstraintY YandBm:20] ? 1 : 0;
ret += [BMMASConstraintY TAddconstraintwithlayoutattributeBm:77] ? 1 : 0;
ret += [BMMASConstraintY mleftBm:66] ? 1 : 0;
ret += [BMMASConstraintY dtopBm:0] ? 1 : 0;
ret += [BMMASConstraintY BrightBm:23] ? 1 : 0;
ret += [BMMASConstraintY dbottomBm:69] ? 1 : 0;
ret += [BMMASConstraintY fleadingBm:52] ? 1 : 0;
ret += [BMMASConstraintY VtrailingBm:55] ? 1 : 0;
ret += [BMMASConstraintY TwidthBm:43] ? 1 : 0;
ret += [BMMASConstraintY fheightBm:63] ? 1 : 0;
ret += [BMMASConstraintY zcenterXBm:58] ? 1 : 0;
ret += [BMMASConstraintY ncenterYBm:13] ? 1 : 0;
ret += [BMMASConstraintY PbaselineBm:47] ? 1 : 0;
ret += [BMMASConstraintY UfirstBaselineBm:29] ? 1 : 0;
ret += [BMMASConstraintY blastBaselineBm:52] ? 1 : 0;
ret += [BMMASConstraintY rleftMarginBm:78] ? 1 : 0;
ret += [BMMASConstraintY xrightMarginBm:20] ? 1 : 0;
ret += [BMMASConstraintY XtopMarginBm:13] ? 1 : 0;
ret += [BMMASConstraintY ebottomMarginBm:57] ? 1 : 0;
ret += [BMMASConstraintY UleadingMarginBm:38] ? 1 : 0;
ret += [BMMASConstraintY BtrailingMarginBm:41] ? 1 : 0;
ret += [BMMASConstraintY gcenterXWithinMarginsBm:85] ? 1 : 0;
ret += [BMMASConstraintY WcenterYWithinMarginsBm:94] ? 1 : 0;
ret += [BMMASConstraintY multipliedByBm:11] ? 1 : 0;
ret += [BMMASConstraintY dividedByBm:82] ? 1 : 0;
ret += [BMMASConstraintY priorityBm:56] ? 1 : 0;
ret += [BMMASConstraintY equalToWithRelationBm:93] ? 1 : 0;
ret += [BMMASConstraintY keyBm:80] ? 1 : 0;
ret += [BMMASConstraintY DSetinsetsBm:10] ? 1 : 0;
ret += [BMMASConstraintY gSetinsetBm:96] ? 1 : 0;
ret += [BMMASConstraintY uSetsizeoffsetBm:65] ? 1 : 0;
ret += [BMMASConstraintY lSetcenteroffsetBm:14] ? 1 : 0;
ret += [BMMASConstraintY dSetoffsetBm:14] ? 1 : 0;
ret += [BMMASConstraintY manimatorBm:83] ? 1 : 0;
ret += [BMMASConstraintY uactivateBm:53] ? 1 : 0;
ret += [BMMASConstraintY wdeactivateBm:34] ? 1 : 0;
ret += [BMMASConstraintY cinstallBm:1] ? 1 : 0;
ret += [BMMASConstraintY iuninstallBm:3] ? 1 : 0;
ret += [BMNSArrayX lrac_sequenceBm:24] ? 1 : 0;
ret += [BMGPUImagePicturec wReplacetexturewithsubimageBm:71] ? 1 : 0;
ret += [BMGPUImagePicturec PReplacetexturewithsubcgimageBm:8] ? 1 : 0;
ret += [BMGPUImagePicturec wReplacetexturewithsubimageAInrectBm:63] ? 1 : 0;
ret += [BMGPUImagePicturec KReplacetexturewithsubcgimageTInrectBm:89] ? 1 : 0;
ret += [BMNSMutableDictionaryh IDictionarywithplistdataBm:67] ? 1 : 0;
ret += [BMNSMutableDictionaryh RDictionarywithpliststringBm:78] ? 1 : 0;
ret += [BMNSMutableDictionaryh kPopobjectforkeyBm:89] ? 1 : 0;
ret += [BMNSMutableDictionaryh LPopentriesforkeysBm:59] ? 1 : 0;
ret += [BMUIGestureRecognizerL JInitwithactionblockbmBm:76] ? 1 : 0;
ret += [BMUIGestureRecognizerL UAddactionblockbmBm:51] ? 1 : 0;
ret += [BMUIGestureRecognizerL pRemoveallactionblocksbmBm:9] ? 1 : 0;
ret += [BMUIGestureRecognizerL G_Yy_AlluigesturerecognizerblocktargetsbmBm:52] ? 1 : 0;
ret += [BMNSObjectF TArcdebugretainbmBm:12] ? 1 : 0;
ret += [BMNSObjectF GArcdebugreleasebmBm:6] ? 1 : 0;
ret += [BMNSObjectF dArcdebugautoreleasebmBm:88] ? 1 : 0;
ret += [BMNSObjectF oArcdebugretaincountbmBm:88] ? 1 : 0;
ret += [BMNSKeyedUnarchiverx PUnarchiveobjectwithdatacExceptionBm:29] ? 1 : 0;
ret += [BMNSKeyedUnarchiverx ZUnarchiveobjectwithfilepExceptionBm:37] ? 1 : 0;
ret += [BMNSStringQ rrac_keyPathComponentsBm:64] ? 1 : 0;
ret += [BMNSStringQ lrac_keyPathByDeletingLastKeyPathComponentBm:73] ? 1 : 0;
ret += [BMNSStringQ Qrac_keyPathByDeletingFirstKeyPathComponentBm:50] ? 1 : 0;
ret += [BMGPUImageSourceOverBlendFilterP DInitbmBm:57] ? 1 : 0;
ret += [BMGPUImageDirectionalNonMaximumSuppressionFiltere KinitBm:8] ? 1 : 0;
ret += [BMGPUImageDirectionalNonMaximumSuppressionFiltere oSetupfilterforsizeBm:65] ? 1 : 0;
ret += [BMGPUImageDirectionalNonMaximumSuppressionFiltere wSettexelwidthBm:95] ? 1 : 0;
ret += [BMGPUImageDirectionalNonMaximumSuppressionFiltere JSettexelheightBm:74] ? 1 : 0;
ret += [BMGPUImageDirectionalNonMaximumSuppressionFiltere TSetlowerthresholdBm:19] ? 1 : 0;
ret += [BMGPUImageDirectionalNonMaximumSuppressionFiltere XSetupperthresholdBm:76] ? 1 : 0;
ret += [BMGPUImageTwoPassTextureSamplingFilterG qInitwithfirststagevertexshaderfromstringfirststagefragmentshaderfromstringsecondstagevertexshaderfromstringsecondstagefragmentshaderfromstringbmBm:9] ? 1 : 0;
ret += [BMGPUImageTwoPassTextureSamplingFilterG KSetuniformsforprogramatindexbmBm:18] ? 1 : 0;
ret += [BMGPUImageTwoPassTextureSamplingFilterG qSetupfilterforsizebmBm:6] ? 1 : 0;
ret += [BMGPUImageTwoPassTextureSamplingFilterG bSetverticaltexelspacingbmBm:94] ? 1 : 0;
ret += [BMGPUImageTwoPassTextureSamplingFilterG OSethorizontaltexelspacingbmBm:91] ? 1 : 0;
ret += [BMGPUImageSoftLightBlendFilterL KinitBm:64] ? 1 : 0;
ret += [BMDGActivityIndicatorBallScaleMultipleAnimationG TSetupanimationinlayerwWithsizenTintcolorBm:31] ? 1 : 0;
ret += [BMUIImagem VAf_SafeimagewithdataBm:46] ? 1 : 0;
ret += [BMRACTargetQueueSchedulerQ sInitwithnametargetqueuebmBm:54] ? 1 : 0;
ret += [BMUIGestureRecognizerB zrac_gestureSignalBm:66] ? 1 : 0;
ret += [BMGPUImageStretchDistortionFilterg MinitBm:66] ? 1 : 0;
ret += [BMGPUImageStretchDistortionFilterg OSetinputrotationHAtindexBm:20] ? 1 : 0;
ret += [BMGPUImageStretchDistortionFilterg ASetcenterBm:90] ? 1 : 0;
ret += [BMMASViewConstraintC iInitwithfirstviewattributeBm:63] ? 1 : 0;
ret += [BMMASViewConstraintC nCopywithzoneBm:64] ? 1 : 0;
ret += [BMMASViewConstraintC gInstalledconstraintsforviewBm:60] ? 1 : 0;
ret += [BMMASViewConstraintC sSetlayoutconstantBm:1] ? 1 : 0;
ret += [BMMASViewConstraintC zSetlayoutrelationBm:69] ? 1 : 0;
ret += [BMMASViewConstraintC fsupportsActivePropertyBm:91] ? 1 : 0;
ret += [BMMASViewConstraintC KisActiveBm:69] ? 1 : 0;
ret += [BMMASViewConstraintC ChasBeenInstalledBm:92] ? 1 : 0;
ret += [BMMASViewConstraintC BSetsecondviewattributeBm:74] ? 1 : 0;
ret += [BMMASViewConstraintC multipliedByBm:94] ? 1 : 0;
ret += [BMMASViewConstraintC dividedByBm:21] ? 1 : 0;
ret += [BMMASViewConstraintC priorityBm:73] ? 1 : 0;
ret += [BMMASViewConstraintC equalToWithRelationBm:81] ? 1 : 0;
ret += [BMMASViewConstraintC iwithBm:6] ? 1 : 0;
ret += [BMMASViewConstraintC NandBm:91] ? 1 : 0;
ret += [BMMASViewConstraintC LAddconstraintwithlayoutattributeBm:38] ? 1 : 0;
ret += [BMMASViewConstraintC LanimatorBm:38] ? 1 : 0;
ret += [BMMASViewConstraintC keyBm:15] ? 1 : 0;
ret += [BMMASViewConstraintC mSetinsetsBm:21] ? 1 : 0;
ret += [BMMASViewConstraintC eSetinsetBm:92] ? 1 : 0;
ret += [BMMASViewConstraintC aSetoffsetBm:74] ? 1 : 0;
ret += [BMMASViewConstraintC ySetsizeoffsetBm:10] ? 1 : 0;
ret += [BMMASViewConstraintC DSetcenteroffsetBm:86] ? 1 : 0;
ret += [BMMASViewConstraintC KactivateBm:20] ? 1 : 0;
ret += [BMMASViewConstraintC XdeactivateBm:74] ? 1 : 0;
ret += [BMMASViewConstraintC hinstallBm:49] ? 1 : 0;
ret += [BMMASViewConstraintC vLayoutconstraintsimilartoBm:61] ? 1 : 0;
ret += [BMMASViewConstraintC PuninstallBm:66] ? 1 : 0;
ret += [BMGPUImageMotionDetectorQ yinitBm:34] ? 1 : 0;
ret += [BMGPUImageMotionDetectorQ cSetlowpassfilterstrengthBm:14] ? 1 : 0;
ret += [BMGPUImageMotionDetectorQ GlowPassFilterStrengthBm:22] ? 1 : 0;
ret += [BMDGActivityIndicatorBallPulseAnimationd fSetupanimationinlayerwithsizetintcolorbmBm:37] ? 1 : 0;
ret += [BMUIViewO nsd_heightBm:6] ? 1 : 0;
ret += [BMUIViewO uSetsd_HeightBm:58] ? 1 : 0;
ret += [BMUIViewO msd_widthBm:28] ? 1 : 0;
ret += [BMUIViewO rSetsd_WidthBm:17] ? 1 : 0;
ret += [BMUIViewO zsd_yBm:68] ? 1 : 0;
ret += [BMUIViewO gSetsd_YBm:24] ? 1 : 0;
ret += [BMUIViewO Fsd_xBm:95] ? 1 : 0;
ret += [BMUIViewO XSetsd_XBm:74] ? 1 : 0;
ret += [BMGPUImageTwoPassFilterI cInitwithfirststagevertexshaderfromstringfirststagefragmentshaderfromstringsecondstagevertexshaderfromstringsecondstagefragmentshaderfromstringbmBm:57] ? 1 : 0;
ret += [BMGPUImageTwoPassFilterI CInitwithfirststagefragmentshaderfromstringsecondstagefragmentshaderfromstringbmBm:44] ? 1 : 0;
ret += [BMGPUImageTwoPassFilterI nInitializesecondaryattributesbmBm:86] ? 1 : 0;
ret += [BMGPUImageTwoPassFilterI fFramebufferforoutputbmBm:91] ? 1 : 0;
ret += [BMGPUImageTwoPassFilterI rRemoveoutputframebufferbmBm:47] ? 1 : 0;
ret += [BMGPUImageTwoPassFilterI oRendertotexturewithverticestexturecoordinatesbmBm:25] ? 1 : 0;
ret += [BMGPUImageTwoPassFilterI RSetandexecuteuniformstatecallbackatindexforprogramtoblockbmBm:53] ? 1 : 0;
ret += [BMGPUImageTwoPassFilterI pSetuniformsforprogramatindexbmBm:56] ? 1 : 0;
ret += [BMGPUImageCannyEdgeDetectionFilterO dInitbmBm:33] ? 1 : 0;
ret += [BMGPUImageCannyEdgeDetectionFilterO qSetblurradiusinpixelsbmBm:44] ? 1 : 0;
ret += [BMGPUImageCannyEdgeDetectionFilterO jBlurradiusinpixelsbmBm:46] ? 1 : 0;
ret += [BMGPUImageCannyEdgeDetectionFilterO cSetblurtexelspacingmultiplierbmBm:31] ? 1 : 0;
ret += [BMGPUImageCannyEdgeDetectionFilterO sBlurtexelspacingmultiplierbmBm:82] ? 1 : 0;
ret += [BMGPUImageCannyEdgeDetectionFilterO rSettexelwidthbmBm:57] ? 1 : 0;
ret += [BMGPUImageCannyEdgeDetectionFilterO CTexelwidthbmBm:48] ? 1 : 0;
ret += [BMGPUImageCannyEdgeDetectionFilterO XSettexelheightbmBm:88] ? 1 : 0;
ret += [BMGPUImageCannyEdgeDetectionFilterO nTexelheightbmBm:23] ? 1 : 0;
ret += [BMGPUImageCannyEdgeDetectionFilterO pSetupperthresholdbmBm:99] ? 1 : 0;
ret += [BMGPUImageCannyEdgeDetectionFilterO vUpperthresholdbmBm:30] ? 1 : 0;
ret += [BMGPUImageCannyEdgeDetectionFilterO bSetlowerthresholdbmBm:19] ? 1 : 0;
ret += [BMGPUImageCannyEdgeDetectionFilterO yLowerthresholdbmBm:91] ? 1 : 0;
ret += [BMGPUImagePosterizeFilterf PInitbmBm:25] ? 1 : 0;
ret += [BMGPUImagePosterizeFilterf ESetcolorlevelsbmBm:24] ? 1 : 0;
ret += [BMNSNumberS pNumberwithstringBm:18] ? 1 : 0;
ret += [BMRACMulticastConnections eInitwithsourcesignalpSubjectBm:10] ? 1 : 0;
ret += [BMRACMulticastConnections sconnectBm:23] ? 1 : 0;
ret += [BMRACMulticastConnections WautoconnectBm:41] ? 1 : 0;
ret += [BMMKAnnotationViewp Jrac_prepareForReuseSignalBm:31] ? 1 : 0;
ret += [BMIQToolbarq dinitializeBm:14] ? 1 : 0;
ret += [BMIQToolbarq JinitializeBm:40] ? 1 : 0;
ret += [BMIQToolbarq vInitwithframeBm:53] ? 1 : 0;
ret += [BMIQToolbarq lInitwithcoderBm:64] ? 1 : 0;
ret += [BMIQToolbarq TdeallocBm:89] ? 1 : 0;
ret += [BMIQToolbarq dpreviousBarButtonBm:13] ? 1 : 0;
ret += [BMIQToolbarq bnextBarButtonBm:33] ? 1 : 0;
ret += [BMIQToolbarq mtitleBarButtonBm:29] ? 1 : 0;
ret += [BMIQToolbarq OdoneBarButtonBm:12] ? 1 : 0;
ret += [BMIQToolbarq PfixedSpaceBarButtonBm:39] ? 1 : 0;
ret += [BMIQToolbarq ISizethatfitsBm:8] ? 1 : 0;
ret += [BMIQToolbarq nSettintcolorBm:52] ? 1 : 0;
ret += [BMIQToolbarq ylayoutSubviewsBm:15] ? 1 : 0;
ret += [BMIQToolbarq renableInputClicksWhenVisibleBm:78] ? 1 : 0;
ret += [BMGPUImageHoughTransformLineDetectorE qinitBm:46] ? 1 : 0;
ret += [BMGPUImageHoughTransformLineDetectorE udeallocBm:97] ? 1 : 0;
ret += [BMGPUImageHoughTransformLineDetectorE rExtractlineparametersfromimageatframetimeBm:74] ? 1 : 0;
ret += [BMGPUImageHoughTransformLineDetectorE ZwantsMonochromeInputBm:82] ? 1 : 0;
ret += [BMGPUImageHoughTransformLineDetectorE vSetlinedetectionthresholdBm:58] ? 1 : 0;
ret += [BMGPUImageHoughTransformLineDetectorE olineDetectionThresholdBm:62] ? 1 : 0;
ret += [BMGPUImageHoughTransformLineDetectorE vNewframereadyattimecAtindexBm:32] ? 1 : 0;
ret += [BMGPUImageLaplacianFilterO ZinitBm:33] ? 1 : 0;
ret += [BMAFURLSessionManagerN iinitBm:25] ? 1 : 0;
ret += [BMAFURLSessionManagerN HInitwithsessionconfigurationBm:74] ? 1 : 0;
ret += [BMAFURLSessionManagerN TdeallocBm:44] ? 1 : 0;
ret += [BMAFURLSessionManagerN tsessionBm:1] ? 1 : 0;
ret += [BMAFURLSessionManagerN ztaskDescriptionForSessionTasksBm:17] ? 1 : 0;
ret += [BMAFURLSessionManagerN hTaskdidresumeBm:47] ? 1 : 0;
ret += [BMAFURLSessionManagerN eTaskdidsuspendBm:3] ? 1 : 0;
ret += [BMAFURLSessionManagerN UDelegatefortaskBm:17] ? 1 : 0;
ret += [BMAFURLSessionManagerN VSetdelegateEFortaskBm:17] ? 1 : 0;
ret += [BMAFURLSessionManagerN MAdddelegatefordatataskpUploadprogressyDownloadprogressWCompletionhandlerBm:57] ? 1 : 0;
ret += [BMAFURLSessionManagerN XAdddelegateforuploadtaskOProgressACompletionhandlerBm:56] ? 1 : 0;
ret += [BMAFURLSessionManagerN OAdddelegatefordownloadtaskhProgressFDestinationfCompletionhandlerBm:56] ? 1 : 0;
ret += [BMAFURLSessionManagerN uRemovedelegatefortaskBm:33] ? 1 : 0;
ret += [BMAFURLSessionManagerN yTasksforkeypathBm:90] ? 1 : 0;
ret += [BMAFURLSessionManagerN mtasksBm:20] ? 1 : 0;
ret += [BMAFURLSessionManagerN BdataTasksBm:4] ? 1 : 0;
ret += [BMAFURLSessionManagerN UuploadTasksBm:51] ? 1 : 0;
ret += [BMAFURLSessionManagerN SdownloadTasksBm:50] ? 1 : 0;
ret += [BMAFURLSessionManagerN cInvalidatesessioncancelingtasksTResetsessionBm:5] ? 1 : 0;
ret += [BMAFURLSessionManagerN BSetresponseserializerBm:84] ? 1 : 0;
ret += [BMAFURLSessionManagerN LAddnotificationobserverfortaskBm:6] ? 1 : 0;
ret += [BMAFURLSessionManagerN jRemovenotificationobserverfortaskBm:72] ? 1 : 0;
ret += [BMAFURLSessionManagerN EDatataskwithrequestVUploadprogressLDownloadprogressICompletionhandlerBm:61] ? 1 : 0;
ret += [BMAFURLSessionManagerN zUploadtaskwithrequestcFromfileoProgresstCompletionhandlerBm:79] ? 1 : 0;
ret += [BMAFURLSessionManagerN hUploadtaskwithrequestdFromdataSProgressDCompletionhandlerBm:67] ? 1 : 0;
ret += [BMAFURLSessionManagerN BUploadtaskwithstreamedrequestrProgressFCompletionhandlerBm:98] ? 1 : 0;
ret += [BMAFURLSessionManagerN MDownloadtaskwithrequestIProgressPDestinationICompletionhandlerBm:60] ? 1 : 0;
ret += [BMAFURLSessionManagerN bDownloadtaskwithresumedatacProgressqDestinationdCompletionhandlerBm:4] ? 1 : 0;
ret += [BMAFURLSessionManagerN dUploadprogressfortaskBm:87] ? 1 : 0;
ret += [BMAFURLSessionManagerN mDownloadprogressfortaskBm:91] ? 1 : 0;
ret += [BMAFURLSessionManagerN DSetsessiondidbecomeinvalidblockBm:3] ? 1 : 0;
ret += [BMAFURLSessionManagerN ASetsessiondidreceiveauthenticationchallengeblockBm:44] ? 1 : 0;
ret += [BMAFURLSessionManagerN ySetdidfinisheventsforbackgroundurlsessionblockBm:3] ? 1 : 0;
ret += [BMAFURLSessionManagerN oSettaskneednewbodystreamblockBm:7] ? 1 : 0;
ret += [BMAFURLSessionManagerN pSettaskwillperformhttpredirectionblockBm:32] ? 1 : 0;
ret += [BMAFURLSessionManagerN CSettaskdidsendbodydatablockBm:41] ? 1 : 0;
ret += [BMAFURLSessionManagerN pSettaskdidcompleteblockBm:73] ? 1 : 0;
ret += [BMAFURLSessionManagerN DSettaskdidfinishcollectingmetricsblockBm:61] ? 1 : 0;
ret += [BMAFURLSessionManagerN TSetdatataskdidreceiveresponseblockBm:81] ? 1 : 0;
ret += [BMAFURLSessionManagerN aSetdatataskdidbecomedownloadtaskblockBm:89] ? 1 : 0;
ret += [BMAFURLSessionManagerN zSetdatataskdidreceivedatablockBm:96] ? 1 : 0;
ret += [BMAFURLSessionManagerN USetdatataskwillcacheresponseblockBm:8] ? 1 : 0;
ret += [BMAFURLSessionManagerN aSetdownloadtaskdidfinishdownloadingblockBm:97] ? 1 : 0;
ret += [BMAFURLSessionManagerN kSetdownloadtaskdidwritedatablockBm:3] ? 1 : 0;
ret += [BMAFURLSessionManagerN SSetdownloadtaskdidresumeblockBm:37] ? 1 : 0;
ret += [BMAFURLSessionManagerN DdescriptionBm:20] ? 1 : 0;
ret += [BMAFURLSessionManagerN URespondstoselectorBm:28] ? 1 : 0;
ret += [BMAFURLSessionManagerN tUrlsessiondDidbecomeinvalidwitherrorBm:86] ? 1 : 0;
ret += [BMAFURLSessionManagerN qUrlsessionBDidreceivechallengekCompletionhandlerBm:99] ? 1 : 0;
ret += [BMAFURLSessionManagerN wUrlsessionVTaskbWillperformhttpredirectionCNewrequestuCompletionhandlerBm:26] ? 1 : 0;
ret += [BMAFURLSessionManagerN LUrlsessionbTaskuDidreceivechallengeBCompletionhandlerBm:43] ? 1 : 0;
ret += [BMAFURLSessionManagerN hServertrusterrorforservertrustUUrlBm:48] ? 1 : 0;
ret += [BMAFURLSessionManagerN FUrlsessionCTaskzNeednewbodystreamBm:70] ? 1 : 0;
ret += [BMAFURLSessionManagerN jUrlsessionoTaskpDidsendbodydatapTotalbytessentRTotalbytesexpectedtosendBm:4] ? 1 : 0;
ret += [BMAFURLSessionManagerN tUrlsessionqTasktDidcompletewitherrorBm:63] ? 1 : 0;
ret += [BMAFURLSessionManagerN xUrlsessionxTaskBDidfinishcollectingmetricsBm:25] ? 1 : 0;
ret += [BMAFURLSessionManagerN aUrlsessionjDatataskVDidreceiveresponseTCompletionhandlerBm:4] ? 1 : 0;
ret += [BMAFURLSessionManagerN HUrlsessionTDatataskjDidbecomedownloadtaskBm:96] ? 1 : 0;
ret += [BMAFURLSessionManagerN hUrlsessionSDatataskCDidreceivedataBm:63] ? 1 : 0;
ret += [BMAFURLSessionManagerN lUrlsessionIDatataskuWillcacheresponsewCompletionhandlerBm:52] ? 1 : 0;
ret += [BMAFURLSessionManagerN SUrlsessiondidfinisheventsforbackgroundurlsessionBm:61] ? 1 : 0;
ret += [BMAFURLSessionManagerN MUrlsessionpDownloadtaskaDidfinishdownloadingtourlBm:68] ? 1 : 0;
ret += [BMAFURLSessionManagerN GUrlsessionDDownloadtaskIDidwritedataqTotalbyteswrittenUTotalbytesexpectedtowriteBm:81] ? 1 : 0;
ret += [BMAFURLSessionManagerN VUrlsessionfDownloadtasklDidresumeatoffsetVExpectedtotalbytesBm:54] ? 1 : 0;
ret += [BMAFURLSessionManagerN WsupportsSecureCodingBm:80] ? 1 : 0;
ret += [BMAFURLSessionManagerN nInitwithcoderBm:38] ? 1 : 0;
ret += [BMAFURLSessionManagerN zEncodewithcoderBm:56] ? 1 : 0;
ret += [BMAFURLSessionManagerN wCopywithzoneBm:11] ? 1 : 0;
ret += [BMGLProgramI YInitwithvertexshaderstringWFragmentshaderstringBm:76] ? 1 : 0;
ret += [BMGLProgramI YInitwithvertexshaderstringVFragmentshaderfilenameBm:60] ? 1 : 0;
ret += [BMGLProgramI YInitwithvertexshaderfilenameVFragmentshaderfilenameBm:61] ? 1 : 0;
ret += [BMGLProgramI oCompileshaderVTypeMStringBm:48] ? 1 : 0;
ret += [BMGLProgramI SAddattributeBm:31] ? 1 : 0;
ret += [BMGLProgramI FAttributeindexBm:74] ? 1 : 0;
ret += [BMGLProgramI lUniformindexBm:93] ? 1 : 0;
ret += [BMGLProgramI BlinkBm:94] ? 1 : 0;
ret += [BMGLProgramI KuseBm:18] ? 1 : 0;
ret += [BMGLProgramI EvalidateBm:9] ? 1 : 0;
ret += [BMGLProgramI sdeallocBm:25] ? 1 : 0;
ret += [BMRACReturnSignalw nSetnamebmBm:94] ? 1 : 0;
ret += [BMRACReturnSignalw ENamebmBm:42] ? 1 : 0;
ret += [BMRACReturnSignalw QReturnbmBm:32] ? 1 : 0;
ret += [BMRACReturnSignalw ZSubscribebmBm:12] ? 1 : 0;
ret += [BMGPUImageBoxBlurFilterT DVertexshaderforoptimizedblurofradiusgSigmaBm:62] ? 1 : 0;
ret += [BMGPUImageBoxBlurFilterT TFragmentshaderforoptimizedblurofradiusQSigmaBm:49] ? 1 : 0;
ret += [BMGPUImageBoxBlurFilterT oSetupfilterforsizeBm:77] ? 1 : 0;
ret += [BMGPUImageBoxBlurFilterT YinitBm:50] ? 1 : 0;
ret += [BMGPUImageBoxBlurFilterT ISetblurradiusinpixelsBm:28] ? 1 : 0;
ret += [BMYYClassMethodInfoV uInitwithmethodBm:47] ? 1 : 0;
ret += [BMGPUImageShiTomasiFeatureDetectionFilterE SinitBm:96] ? 1 : 0;
ret += [BMUIScrollViewV XscrollToTopBm:29] ? 1 : 0;
ret += [BMUIScrollViewV EscrollToBottomBm:91] ? 1 : 0;
ret += [BMUIScrollViewV vscrollToLeftBm:49] ? 1 : 0;
ret += [BMUIScrollViewV LscrollToRightBm:16] ? 1 : 0;
ret += [BMUIScrollViewV BScrolltotopanimatedBm:90] ? 1 : 0;
ret += [BMUIScrollViewV mScrolltobottomanimatedBm:88] ? 1 : 0;
ret += [BMUIScrollViewV xScrolltoleftanimatedBm:47] ? 1 : 0;
ret += [BMUIScrollViewV AScrolltorightanimatedBm:56] ? 1 : 0;
ret += [BMRACKVOChannelc eObjectforkeyedsubscriptBm:60] ? 1 : 0;
ret += [BMRACKVOChannelc xSetobjectuForkeyedsubscriptBm:93] ? 1 : 0;
ret += [BMGPUImageAlphaBlendFilterC LInitbmBm:84] ? 1 : 0;
ret += [BMGPUImageAlphaBlendFilterC YSetmixbmBm:11] ? 1 : 0;
ret += [BMGPUImageHighPassFilterO AinitBm:46] ? 1 : 0;
ret += [BMGPUImageHighPassFilterO DSetfilterstrengthBm:74] ? 1 : 0;
ret += [BMGPUImageHighPassFilterO pfilterStrengthBm:42] ? 1 : 0;
ret += [BMUIImageQ eImagewithsmallgifdataQScaleBm:71] ? 1 : 0;
ret += [BMUIImageQ NIsanimatedgifdataBm:80] ? 1 : 0;
ret += [BMUIImageQ aIsanimatedgiffileBm:34] ? 1 : 0;
ret += [BMUIImageQ OImagewithpdfBm:51] ? 1 : 0;
ret += [BMUIImageQ ZImagewithpdfNSizeBm:80] ? 1 : 0;
ret += [BMUIImageQ EImagewithemojieSizeBm:15] ? 1 : 0;
ret += [BMUIImageQ P_Yy_ImagewithpdfIResizeaSizeBm:84] ? 1 : 0;
ret += [BMUIImageQ WImagewithcolorBm:34] ? 1 : 0;
ret += [BMUIImageQ NImagewithcolormSizeBm:72] ? 1 : 0;
ret += [BMUIImageQ OImagewithsizeqDrawblockBm:44] ? 1 : 0;
ret += [BMUIImageQ XhasAlphaChannelBm:64] ? 1 : 0;
ret += [BMUIImageQ FDrawinrectCWithcontentmodeVClipstoboundsBm:27] ? 1 : 0;
ret += [BMUIImageQ oImagebyresizetosizeBm:68] ? 1 : 0;
ret += [BMUIImageQ TImagebyresizetosizetContentmodeBm:27] ? 1 : 0;
ret += [BMUIImageQ nImagebycroptorectBm:90] ? 1 : 0;
ret += [BMUIImageQ RImagebyinsetedgeCWithcolorBm:51] ? 1 : 0;
ret += [BMUIImageQ VImagebyroundcornerradiusBm:93] ? 1 : 0;
ret += [BMUIImageQ eImagebyroundcornerradiusSBorderwidthfBordercolorBm:19] ? 1 : 0;
ret += [BMUIImageQ QImagebyroundcornerradiusDCornersVBorderwidthpBordercolorhBorderlinejoinBm:6] ? 1 : 0;
ret += [BMUIImageQ qImagebyrotateRFitsizeBm:78] ? 1 : 0;
ret += [BMUIImageQ M_Yy_FliphorizontalRVerticalBm:62] ? 1 : 0;
ret += [BMUIImageQ LimageByRotateLeft90Bm:32] ? 1 : 0;
ret += [BMUIImageQ cimageByRotateRight90Bm:5] ? 1 : 0;
ret += [BMUIImageQ EimageByRotate180Bm:47] ? 1 : 0;
ret += [BMUIImageQ iimageByFlipVerticalBm:74] ? 1 : 0;
ret += [BMUIImageQ AimageByFlipHorizontalBm:60] ? 1 : 0;
ret += [BMUIImageQ jImagebytintcolorBm:27] ? 1 : 0;
ret += [BMUIImageQ HimageByGrayscaleBm:40] ? 1 : 0;
ret += [BMUIImageQ limageByBlurSoftBm:2] ? 1 : 0;
ret += [BMUIImageQ QimageByBlurLightBm:22] ? 1 : 0;
ret += [BMUIImageQ WimageByBlurExtraLightBm:33] ? 1 : 0;
ret += [BMUIImageQ QimageByBlurDarkBm:52] ? 1 : 0;
ret += [BMUIImageQ LImagebyblurwithtintBm:6] ? 1 : 0;
ret += [BMUIImageQ GImagebyblurradiusSTintcolorwTintmodeYSaturationwMaskimageBm:30] ? 1 : 0;
ret += [BMUIImageQ I_Yy_MergeimagerefHTintcolorZTintblendmodeAMaskimageEOpaqueBm:93] ? 1 : 0;
ret += [BMNSObjectT nRac_LiftselectorwithsignalofargumentsbmBm:46] ? 1 : 0;
ret += [BMNSObjectT hRac_LiftselectorwithsignalsfromarraybmBm:23] ? 1 : 0;
ret += [BMNSObjectT rRac_LiftselectorwithsignalsbmBm:78] ? 1 : 0;
ret += [BMDGActivityIndicatorBallPulseAnimationX OSetupanimationinlayerTWithsizepTintcolorBm:97] ? 1 : 0;
ret += [BMGPUImageiOSBlurFilterf TInitbmBm:35] ? 1 : 0;
ret += [BMGPUImageiOSBlurFilterf RSetinputsizeatindexbmBm:49] ? 1 : 0;
ret += [BMGPUImageiOSBlurFilterf RSetblurradiusinpixelsbmBm:76] ? 1 : 0;
ret += [BMGPUImageiOSBlurFilterf LBlurradiusinpixelsbmBm:41] ? 1 : 0;
ret += [BMGPUImageiOSBlurFilterf HSetsaturationbmBm:24] ? 1 : 0;
ret += [BMGPUImageiOSBlurFilterf DSaturationbmBm:19] ? 1 : 0;
ret += [BMGPUImageiOSBlurFilterf zSetdownsamplingbmBm:60] ? 1 : 0;
ret += [BMGPUImageiOSBlurFilterf VSetrangereductionfactorbmBm:52] ? 1 : 0;
ret += [BMGPUImageiOSBlurFilterf WRangereductionfactorbmBm:38] ? 1 : 0;
ret += [BMRACKVOTrampolineA sInitwithtargetZObserverKKeypathmOptionsyBlockBm:4] ? 1 : 0;
ret += [BMRACKVOTrampolineA bdeallocBm:0] ? 1 : 0;
ret += [BMRACKVOTrampolineA qdisposeBm:16] ? 1 : 0;
ret += [BMRACKVOTrampolineA kObservevalueforkeypathdOfobjectKChangecContextBm:0] ? 1 : 0;
ret += [BMDGActivityIndicatorNineDotsAnimationo sSetupanimationinlayerwithsizetintcolorbmBm:30] ? 1 : 0;
ret += [BMUIButtonx RAf_ImagedownloadreceiptforstatebmBm:90] ? 1 : 0;
ret += [BMUIButtonx wAf_SetimagedownloadreceiptforstatebmBm:42] ? 1 : 0;
ret += [BMUIButtonx MAf_BackgroundimagedownloadreceiptforstatebmBm:22] ? 1 : 0;
ret += [BMUIButtonx tAf_SetbackgroundimagedownloadreceiptforstatebmBm:37] ? 1 : 0;
ret += [BMGPUImageThreeInputFilterN RInitwithfragmentshaderfromstringBm:82] ? 1 : 0;
ret += [BMGPUImageThreeInputFilterN lInitwithvertexshaderfromstringyFragmentshaderfromstringBm:59] ? 1 : 0;
ret += [BMGPUImageThreeInputFilterN CinitializeAttributesBm:63] ? 1 : 0;
ret += [BMGPUImageThreeInputFilterN KdisableThirdFrameCheckBm:42] ? 1 : 0;
ret += [BMGPUImageThreeInputFilterN tRendertotexturewithverticesATexturecoordinatesBm:27] ? 1 : 0;
ret += [BMGPUImageThreeInputFilterN WnextAvailableTextureIndexBm:22] ? 1 : 0;
ret += [BMGPUImageThreeInputFilterN ySetinputframebufferrAtindexBm:36] ? 1 : 0;
ret += [BMGPUImageThreeInputFilterN BSetinputsizeTAtindexBm:73] ? 1 : 0;
ret += [BMGPUImageThreeInputFilterN FSetinputrotationHAtindexBm:16] ? 1 : 0;
ret += [BMGPUImageThreeInputFilterN TRotatedsizeXForindexBm:37] ? 1 : 0;
ret += [BMGPUImageThreeInputFilterN zNewframereadyattimehAtindexBm:85] ? 1 : 0;
ret += [BMUIAlertViewr yrac_delegateProxyBm:93] ? 1 : 0;
ret += [BMUIAlertViewr Lrac_buttonClickedSignalBm:63] ? 1 : 0;
ret += [BMUIAlertViewr Rrac_willDismissSignalBm:43] ? 1 : 0;
ret += [BMUISwitchk xRac_NewonchannelbmBm:91] ? 1 : 0;
ret += [BMAFPropertyListRequestSerializerI oserializerBm:1] ? 1 : 0;
ret += [BMAFPropertyListRequestSerializerI QSerializerwithformatJWriteoptionsBm:81] ? 1 : 0;
ret += [BMAFPropertyListRequestSerializerI sRequestbyserializingrequestfWithparametersWErrorBm:20] ? 1 : 0;
ret += [BMAFPropertyListRequestSerializerI cInitwithcoderBm:58] ? 1 : 0;
ret += [BMAFPropertyListRequestSerializerI wEncodewithcoderBm:71] ? 1 : 0;
ret += [BMAFPropertyListRequestSerializerI DCopywithzoneBm:29] ? 1 : 0;
ret += [BMNSDictionaryy CDictionarywithplistdataBm:15] ? 1 : 0;
ret += [BMNSDictionaryy MDictionarywithpliststringBm:43] ? 1 : 0;
ret += [BMNSDictionaryy bplistDataBm:55] ? 1 : 0;
ret += [BMNSDictionaryy xplistStringBm:36] ? 1 : 0;
ret += [BMNSDictionaryy YallKeysSortedBm:89] ? 1 : 0;
ret += [BMNSDictionaryy jallValuesSortedByKeysBm:85] ? 1 : 0;
ret += [BMNSDictionaryy GContainsobjectforkeyBm:97] ? 1 : 0;
ret += [BMNSDictionaryy DEntriesforkeysBm:77] ? 1 : 0;
ret += [BMNSDictionaryy wjsonStringEncodedBm:65] ? 1 : 0;
ret += [BMNSDictionaryy njsonPrettyStringEncodedBm:58] ? 1 : 0;
ret += [BMNSDictionaryy wDictionarywithxmlBm:33] ? 1 : 0;
ret += [BMNSDictionaryy OBoolvalueforkeyADefaultBm:88] ? 1 : 0;
ret += [BMNSDictionaryy TCharvalueforkeyWDefaultBm:64] ? 1 : 0;
ret += [BMNSDictionaryy OUnsignedcharvalueforkeygDefaultBm:82] ? 1 : 0;
ret += [BMNSDictionaryy lShortvalueforkeyzDefaultBm:0] ? 1 : 0;
ret += [BMNSDictionaryy XUnsignedshortvalueforkeyrDefaultBm:96] ? 1 : 0;
ret += [BMNSDictionaryy RIntvalueforkeyeDefaultBm:27] ? 1 : 0;
ret += [BMNSDictionaryy fUnsignedintvalueforkeywDefaultBm:58] ? 1 : 0;
ret += [BMNSDictionaryy iLongvalueforkeyyDefaultBm:57] ? 1 : 0;
ret += [BMNSDictionaryy dUnsignedlongvalueforkeyKDefaultBm:38] ? 1 : 0;
ret += [BMNSDictionaryy OLonglongvalueforkeybDefaultBm:86] ? 1 : 0;
ret += [BMNSDictionaryy sUnsignedlonglongvalueforkeyjDefaultBm:26] ? 1 : 0;
ret += [BMNSDictionaryy uFloatvalueforkeyEDefaultBm:24] ? 1 : 0;
ret += [BMNSDictionaryy EDoublevalueforkeywDefaultBm:97] ? 1 : 0;
ret += [BMNSDictionaryy GIntegervalueforkeypDefaultBm:68] ? 1 : 0;
ret += [BMNSDictionaryy QUnsignedintegervalueforkeyjDefaultBm:16] ? 1 : 0;
ret += [BMNSDictionaryy JNumbervalueforkeyvDefaultBm:68] ? 1 : 0;
ret += [BMNSDictionaryy lStringvalueforkeyWDefaultBm:49] ? 1 : 0;
ret += [BMGPUImageSoftEleganceFilterb kinitBm:27] ? 1 : 0;
ret += [BMRACQueueSchedulerr kInitwithnamefQueueBm:20] ? 1 : 0;
ret += [BMRACQueueSchedulerr HdeallocBm:47] ? 1 : 0;
ret += [BMRACQueueSchedulerr bWalltimewithdateBm:18] ? 1 : 0;
ret += [BMRACQueueSchedulerr AScheduleBm:47] ? 1 : 0;
ret += [BMRACQueueSchedulerr ZAfterPScheduleBm:74] ? 1 : 0;
ret += [BMRACQueueSchedulerr fAftervRepeatingeveryxWithleewayvScheduleBm:45] ? 1 : 0;
ret += [BMIQTextViewX EinitializeBm:83] ? 1 : 0;
ret += [BMIQTextViewX rdeallocBm:86] ? 1 : 0;
ret += [BMIQTextViewX XinitBm:42] ? 1 : 0;
ret += [BMIQTextViewX cawakeFromNibBm:79] ? 1 : 0;
ret += [BMIQTextViewX erefreshPlaceholderBm:90] ? 1 : 0;
ret += [BMIQTextViewX HSettextBm:62] ? 1 : 0;
ret += [BMIQTextViewX HSetattributedtextBm:59] ? 1 : 0;
ret += [BMIQTextViewX iSetfontBm:21] ? 1 : 0;
ret += [BMIQTextViewX SSettextalignmentBm:18] ? 1 : 0;
ret += [BMIQTextViewX ElayoutSubviewsBm:96] ? 1 : 0;
ret += [BMIQTextViewX aSetplaceholderBm:45] ? 1 : 0;
ret += [BMIQTextViewX BSetattributedplaceholderBm:54] ? 1 : 0;
ret += [BMIQTextViewX FSetplaceholdertextcolorBm:70] ? 1 : 0;
ret += [BMIQTextViewX PplaceholderInsetsBm:64] ? 1 : 0;
ret += [BMIQTextViewX JplaceholderExpectedFrameBm:91] ? 1 : 0;
ret += [BMIQTextViewX bIQ_PlaceholderLabelBm:45] ? 1 : 0;
ret += [BMIQTextViewX jdelegateBm:65] ? 1 : 0;
ret += [BMIQTextViewX BintrinsicContentSizeBm:53] ? 1 : 0;
ret += [BMDGActivityIndicatorBallZigZagDeflectAnimationw CSetupanimationinlayergWithsizejTintcolorBm:60] ? 1 : 0;
ret += [BMTOCropViewControllert KInitwithcroppingstylesImageBm:5] ? 1 : 0;
ret += [BMTOCropViewControllert bInitwithimageBm:23] ? 1 : 0;
ret += [BMTOCropViewControllert IviewDidLoadBm:40] ? 1 : 0;
ret += [BMTOCropViewControllert XViewwillappearBm:70] ? 1 : 0;
ret += [BMTOCropViewControllert KViewdidappearBm:88] ? 1 : 0;
ret += [BMTOCropViewControllert hViewwilldisappearBm:82] ? 1 : 0;
ret += [BMTOCropViewControllert yViewdiddisappearBm:78] ? 1 : 0;
ret += [BMTOCropViewControllert VpreferredStatusBarStyleBm:73] ? 1 : 0;
ret += [BMTOCropViewControllert TprefersStatusBarHiddenBm:29] ? 1 : 0;
ret += [BMTOCropViewControllert JpreferredScreenEdgesDeferringSystemGesturesBm:87] ? 1 : 0;
ret += [BMTOCropViewControllert iFramefortoolbarwithverticallayoutBm:65] ? 1 : 0;
ret += [BMTOCropViewControllert XFrameforcropviewwithverticallayoutBm:20] ? 1 : 0;
ret += [BMTOCropViewControllert sFramefortitlelabelwithsizeBVerticallayoutBm:47] ? 1 : 0;
ret += [BMTOCropViewControllert jadjustCropViewInsetsBm:62] ? 1 : 0;
ret += [BMTOCropViewControllert VadjustToolbarInsetsBm:65] ? 1 : 0;
ret += [BMTOCropViewControllert vviewSafeAreaInsetsDidChangeBm:63] ? 1 : 0;
ret += [BMTOCropViewControllert YviewDidLayoutSubviewsBm:68] ? 1 : 0;
ret += [BMTOCropViewControllert gWillrotatetointerfaceorientationdDurationBm:75] ? 1 : 0;
ret += [BMTOCropViewControllert rWillanimaterotationtointerfaceorientationvDurationBm:98] ? 1 : 0;
ret += [BMTOCropViewControllert xDidrotatefrominterfaceorientationBm:89] ? 1 : 0;
ret += [BMTOCropViewControllert fViewwilltransitiontosizeSWithtransitioncoordinatorBm:46] ? 1 : 0;
ret += [BMTOCropViewControllert UresetCropViewLayoutBm:15] ? 1 : 0;
ret += [BMTOCropViewControllert mshowAspectRatioDialogBm:93] ? 1 : 0;
ret += [BMTOCropViewControllert YActionsheetYDiddismisswithbuttonindexBm:96] ? 1 : 0;
ret += [BMTOCropViewControllert SSetaspectratiopresettAnimatedBm:58] ? 1 : 0;
ret += [BMTOCropViewControllert drotateCropViewClockwiseBm:92] ? 1 : 0;
ret += [BMTOCropViewControllert vrotateCropViewCounterclockwiseBm:19] ? 1 : 0;
ret += [BMTOCropViewControllert WCropviewdidbecomeresettableBm:63] ? 1 : 0;
ret += [BMTOCropViewControllert NCropviewdidbecomenonresettableBm:18] ? 1 : 0;
ret += [BMTOCropViewControllert kPresentanimatedfromparentviewcontrollerMFromviewZFromframeiSetupyCompletionBm:50] ? 1 : 0;
ret += [BMTOCropViewControllert hPresentanimatedfromparentviewcontrollerpFromimageYFromviewjFromframeFAnglefToimageframePSetupGCompletionBm:8] ? 1 : 0;
ret += [BMTOCropViewControllert mDismissanimatedfromparentviewcontrolleroToviewQToframeoSetupCCompletionBm:14] ? 1 : 0;
ret += [BMTOCropViewControllert WDismissanimatedfromparentviewcontrollerHWithcroppedimageZToviewIToframeuSetupmCompletionBm:2] ? 1 : 0;
ret += [BMTOCropViewControllert iAnimationcontrollerforpresentedcontrollerHPresentingcontrollerzSourcecontrollerBm:27] ? 1 : 0;
ret += [BMTOCropViewControllert EAnimationcontrollerfordismissedcontrollerBm:44] ? 1 : 0;
ret += [BMTOCropViewControllert ZcancelButtonTappedBm:55] ? 1 : 0;
ret += [BMTOCropViewControllert tdoneButtonTappedBm:22] ? 1 : 0;
ret += [BMTOCropViewControllert pSettitleBm:83] ? 1 : 0;
ret += [BMTOCropViewControllert RSetdonebuttontitleBm:85] ? 1 : 0;
ret += [BMTOCropViewControllert NSetcancelbuttontitleBm:60] ? 1 : 0;
ret += [BMTOCropViewControllert YcropViewBm:96] ? 1 : 0;
ret += [BMTOCropViewControllert YtoolbarBm:78] ? 1 : 0;
ret += [BMTOCropViewControllert KtitleLabelBm:47] ? 1 : 0;
ret += [BMTOCropViewControllert iSetaspectratiolockenabledBm:15] ? 1 : 0;
ret += [BMTOCropViewControllert ySetaspectratiolockdimensionswapenabledBm:71] ? 1 : 0;
ret += [BMTOCropViewControllert QaspectRatioLockEnabledBm:82] ? 1 : 0;
ret += [BMTOCropViewControllert oSetrotatebuttonshiddenBm:15] ? 1 : 0;
ret += [BMTOCropViewControllert grotateButtonsHiddenBm:47] ? 1 : 0;
ret += [BMTOCropViewControllert BSetrotateclockwisebuttonhiddenBm:55] ? 1 : 0;
ret += [BMTOCropViewControllert JrotateClockwiseButtonHiddenBm:69] ? 1 : 0;
ret += [BMTOCropViewControllert NSetaspectratiopickerbuttonhiddenBm:67] ? 1 : 0;
ret += [BMTOCropViewControllert RaspectRatioPickerButtonHiddenBm:96] ? 1 : 0;
ret += [BMTOCropViewControllert USetresetaspectratioenabledBm:24] ? 1 : 0;
ret += [BMTOCropViewControllert HSetcustomaspectratioBm:5] ? 1 : 0;
ret += [BMTOCropViewControllert CresetAspectRatioEnabledBm:25] ? 1 : 0;
ret += [BMTOCropViewControllert qSetangleBm:41] ? 1 : 0;
ret += [BMTOCropViewControllert oangleBm:90] ? 1 : 0;
ret += [BMTOCropViewControllert XSetimagecropframeBm:83] ? 1 : 0;
ret += [BMTOCropViewControllert yimageCropFrameBm:49] ? 1 : 0;
ret += [BMTOCropViewControllert fverticalLayoutBm:84] ? 1 : 0;
ret += [BMTOCropViewControllert OoverrideStatusBarBm:78] ? 1 : 0;
ret += [BMTOCropViewControllert rstatusBarHiddenBm:3] ? 1 : 0;
ret += [BMTOCropViewControllert UstatusBarHeightBm:24] ? 1 : 0;
ret += [BMTOCropViewControllert UstatusBarSafeInsetsBm:40] ? 1 : 0;
ret += [BMTOCropViewControllert zSetminimumaspectratioBm:86] ? 1 : 0;
ret += [BMTOCropViewControllert VminimumAspectRatioBm:23] ? 1 : 0;
ret += [BMRACEagerSequenceL RReturnBm:26] ? 1 : 0;
ret += [BMRACEagerSequenceL MBindBm:12] ? 1 : 0;
ret += [BMRACEagerSequenceL kConcatBm:34] ? 1 : 0;
ret += [BMRACEagerSequenceL yeagerSequenceBm:28] ? 1 : 0;
ret += [BMRACEagerSequenceL XlazySequenceBm:0] ? 1 : 0;
ret += [BMRACEagerSequenceL HFoldrightwithstartnReduceBm:56] ? 1 : 0;
ret += [BMGPUImageLevelsFilterG EinitBm:26] ? 1 : 0;
ret += [BMGPUImageLevelsFilterG AupdateUniformsBm:63] ? 1 : 0;
ret += [BMGPUImageLevelsFilterG uSetminBGammaEMaxSMinoutqMaxoutBm:99] ? 1 : 0;
ret += [BMGPUImageLevelsFilterG ZSetminJGammaNMaxBm:49] ? 1 : 0;
ret += [BMGPUImageLevelsFilterG uSetredminFGammabMaxFMinoutFMaxoutBm:45] ? 1 : 0;
ret += [BMGPUImageLevelsFilterG YSetredminjGammasMaxBm:35] ? 1 : 0;
ret += [BMGPUImageLevelsFilterG ISetgreenminWGammawMaxPMinoutbMaxoutBm:47] ? 1 : 0;
ret += [BMGPUImageLevelsFilterG GSetgreenminDGammaeMaxBm:71] ? 1 : 0;
ret += [BMGPUImageLevelsFilterG mSetblueminGGammaJMaxSMinoutPMaxoutBm:93] ? 1 : 0;
ret += [BMGPUImageLevelsFilterG jSetblueminBGammabMaxBm:41] ? 1 : 0;
ret += [BMSDBaseProgressViewP MInitwithframeBm:67] ? 1 : 0;
ret += [BMSDBaseProgressViewP ZSetprogressBm:11] ? 1 : 0;
ret += [BMSDBaseProgressViewP iSetcenterprogresstextfWithattributesBm:78] ? 1 : 0;
ret += [BMSDBaseProgressViewP odismissBm:66] ? 1 : 0;
ret += [BMSDBaseProgressViewP ZprogressViewBm:13] ? 1 : 0;
ret += [BMNSNotificationCenterV XPostnotificationonmainthreadBm:9] ? 1 : 0;
ret += [BMNSNotificationCenterV OPostnotificationonmainthreadPWaituntildoneBm:57] ? 1 : 0;
ret += [BMNSNotificationCenterV UPostnotificationonmainthreadwithnameAObjectBm:3] ? 1 : 0;
ret += [BMNSNotificationCenterV qPostnotificationonmainthreadwithnamelObjecteUserinfoBm:35] ? 1 : 0;
ret += [BMNSNotificationCenterV BPostnotificationonmainthreadwithnameBObjectUUserinfonWaituntildoneBm:48] ? 1 : 0;
ret += [BMNSNotificationCenterV A_Yy_PostnotificationBm:43] ? 1 : 0;
ret += [BMNSNotificationCenterV B_Yy_PostnotificationnameBm:72] ? 1 : 0;
ret += [BMGPUImageFilterPipelineO lInitwithconfigurationrInputgOutputBm:90] ? 1 : 0;
ret += [BMGPUImageFilterPipelineO mInitwithconfigurationfileNInputyOutputBm:47] ? 1 : 0;
ret += [BMGPUImageFilterPipelineO Q_ParseconfigurationBm:52] ? 1 : 0;
ret += [BMGPUImageFilterPipelineO rInitwithorderedfiltersrInputzOutputBm:71] ? 1 : 0;
ret += [BMGPUImageFilterPipelineO UAddfilterHAtindexBm:12] ? 1 : 0;
ret += [BMGPUImageFilterPipelineO cAddfilterBm:76] ? 1 : 0;
ret += [BMGPUImageFilterPipelineO jReplacefilteratindexnWithfilterBm:86] ? 1 : 0;
ret += [BMGPUImageFilterPipelineO bRemovefilterBm:75] ? 1 : 0;
ret += [BMGPUImageFilterPipelineO IRemovefilteratindexBm:68] ? 1 : 0;
ret += [BMGPUImageFilterPipelineO yremoveAllFiltersBm:32] ? 1 : 0;
ret += [BMGPUImageFilterPipelineO eReplaceallfiltersBm:25] ? 1 : 0;
ret += [BMGPUImageFilterPipelineO R_refreshFiltersBm:97] ? 1 : 0;
ret += [BMGPUImageFilterPipelineO KcurrentFilteredFrameBm:37] ? 1 : 0;
ret += [BMGPUImageFilterPipelineO FCurrentfilteredframewithorientationBm:56] ? 1 : 0;
ret += [BMGPUImageFilterPipelineO ZnewCGImageFromCurrentFilteredFrameBm:73] ? 1 : 0;
ret += [BMDGActivityIndicatorTripleRingsAnimationl RSetupanimationinlayeruWithsizewTintcolorBm:4] ? 1 : 0;
ret += [BMGPUImageHarrisCornerDetectionFilterH ZinitBm:61] ? 1 : 0;
ret += [BMGPUImageHarrisCornerDetectionFilterH JInitwithcornerdetectionfragmentshaderBm:27] ? 1 : 0;
ret += [BMGPUImageHarrisCornerDetectionFilterH NdeallocBm:90] ? 1 : 0;
ret += [BMGPUImageHarrisCornerDetectionFilterH KExtractcornerlocationsfromimageatframetimeBm:72] ? 1 : 0;
ret += [BMGPUImageHarrisCornerDetectionFilterH wwantsMonochromeInputBm:52] ? 1 : 0;
ret += [BMGPUImageHarrisCornerDetectionFilterH sSetblurradiusinpixelsBm:66] ? 1 : 0;
ret += [BMGPUImageHarrisCornerDetectionFilterH NblurRadiusInPixelsBm:89] ? 1 : 0;
ret += [BMGPUImageHarrisCornerDetectionFilterH jSetsensitivityBm:7] ? 1 : 0;
ret += [BMGPUImageHarrisCornerDetectionFilterH HSetthresholdBm:77] ? 1 : 0;
ret += [BMGPUImageHarrisCornerDetectionFilterH vthresholdBm:86] ? 1 : 0;
ret += [BMIQTitleBarButtonItemb CInitwithtitlebmBm:82] ? 1 : 0;
ret += [BMIQTitleBarButtonItemb jSettitlefontbmBm:43] ? 1 : 0;
ret += [BMIQTitleBarButtonItemb oSettitlebmBm:91] ? 1 : 0;
ret += [BMIQTitleBarButtonItemb fSettitlecolorbmBm:24] ? 1 : 0;
ret += [BMIQTitleBarButtonItemb bSetselectabletitlecolorbmBm:87] ? 1 : 0;
ret += [BMIQTitleBarButtonItemb CSetinvocationbmBm:35] ? 1 : 0;
ret += [BMIQTitleBarButtonItemb xDeallocbmBm:51] ? 1 : 0;
ret += [BMMIIPAPurchaseR wmanagerBm:40] ? 1 : 0;
ret += [BMMIIPAPurchaseR astartManagerBm:99] ? 1 : 0;
ret += [BMMIIPAPurchaseR WstopManagerBm:82] ? 1 : 0;
ret += [BMMIIPAPurchaseR rBuyproductwithproductidrPayresultBm:63] ? 1 : 0;
ret += [BMMIIPAPurchaseR GremoveAllUncompleteTransactionsBeforeNewPurchaseBm:69] ? 1 : 0;
ret += [BMMIIPAPurchaseR ERequestproductinfoBm:16] ? 1 : 0;
ret += [BMMIIPAPurchaseR dProductsrequestYDidreceiveresponseBm:55] ? 1 : 0;
ret += [BMMIIPAPurchaseR SRequestMDidfailwitherrorBm:19] ? 1 : 0;
ret += [BMMIIPAPurchaseR uRequestdidfinishBm:90] ? 1 : 0;
ret += [BMMIIPAPurchaseR LPaymentqueuebUpdatedtransactionsBm:63] ? 1 : 0;
ret += [BMMIIPAPurchaseR lCompletetransactionBm:75] ? 1 : 0;
ret += [BMMIIPAPurchaseR WFailedtransactionBm:70] ? 1 : 0;
ret += [BMMIIPAPurchaseR hRestoretransactionBm:52] ? 1 : 0;
ret += [BMMIIPAPurchaseR mGetandsavereceiptBm:84] ? 1 : 0;
ret += [BMMIIPAPurchaseR xGetplatformamountinfowithorderBm:52] ? 1 : 0;
ret += [BMMIIPAPurchaseR ngetCurrentZoneTimeBm:45] ? 1 : 0;
ret += [BMMIIPAPurchaseR lSendappstorerequestbuywithreceiptRUseridoPaltformorderPTransbWithBm:54] ? 1 : 0;
ret += [BMRACChanneld ZinitBm:92] ? 1 : 0;
ret += [BMRACReplaySubjectc QReplaysubjectwithcapacityBm:77] ? 1 : 0;
ret += [BMRACReplaySubjectc vinitBm:4] ? 1 : 0;
ret += [BMRACReplaySubjectc xInitwithcapacityBm:13] ? 1 : 0;
ret += [BMRACReplaySubjectc vSubscribeBm:47] ? 1 : 0;
ret += [BMRACReplaySubjectc QSendnextBm:12] ? 1 : 0;
ret += [BMRACReplaySubjectc OsendCompletedBm:4] ? 1 : 0;
ret += [BMRACReplaySubjectc QSenderrorBm:34] ? 1 : 0;
ret += [BMRACFourTuplec PInitbmBm:12] ? 1 : 0;
ret += [BMRACFourTuplec IInitwithbackingarraybmBm:42] ? 1 : 0;
ret += [BMRACFourTuplec rTuplebyaddingobjectbmBm:32] ? 1 : 0;
ret += [BMRACFourTuplec bPackfirstsecondthirdbmBm:21] ? 1 : 0;
ret += [BMRACFourTuplec MIsequalbmBm:86] ? 1 : 0;
ret += [BMGPUImageLuminanceThresholdFilterq KinitBm:46] ? 1 : 0;
ret += [BMGPUImageLuminanceThresholdFilterq gSetthresholdBm:96] ? 1 : 0;
ret += [BMDGActivityIndicatorBallClipRotateMultipleAnimationD VSetupanimationinlayerdWithsizeNTintcolorBm:28] ? 1 : 0;
ret += [BMDGActivityIndicatorBallClipRotateMultipleAnimationD UCreateanimationindurationDWithtimingfunctionIReverseBm:70] ? 1 : 0;
ret += [BMGPUImageFramebufferN KInitwithsizekTextureoptionsgOnlytextureBm:91] ? 1 : 0;
ret += [BMGPUImageFramebufferN hInitwithsizebOverriddentextureBm:60] ? 1 : 0;
ret += [BMGPUImageFramebufferN hInitwithsizeBm:53] ? 1 : 0;
ret += [BMGPUImageFramebufferN ZdeallocBm:36] ? 1 : 0;
ret += [BMGPUImageFramebufferN jgenerateTextureBm:92] ? 1 : 0;
ret += [BMGPUImageFramebufferN sgenerateFramebufferBm:22] ? 1 : 0;
ret += [BMGPUImageFramebufferN XdestroyFramebufferBm:2] ? 1 : 0;
ret += [BMGPUImageFramebufferN SactivateFramebufferBm:21] ? 1 : 0;
ret += [BMGPUImageFramebufferN OlockBm:49] ? 1 : 0;
ret += [BMGPUImageFramebufferN gunlockBm:20] ? 1 : 0;
ret += [BMGPUImageFramebufferN GclearAllLocksBm:65] ? 1 : 0;
ret += [BMGPUImageFramebufferN NdisableReferenceCountingBm:36] ? 1 : 0;
ret += [BMGPUImageFramebufferN MenableReferenceCountingBm:76] ? 1 : 0;
ret += [BMGPUImageFramebufferN FnewCGImageFromFramebufferContentsBm:40] ? 1 : 0;
ret += [BMGPUImageFramebufferN arestoreRenderTargetBm:74] ? 1 : 0;
ret += [BMGPUImageFramebufferN qlockForReadingBm:6] ? 1 : 0;
ret += [BMGPUImageFramebufferN NunlockAfterReadingBm:73] ? 1 : 0;
ret += [BMGPUImageFramebufferN gbytesPerRowBm:14] ? 1 : 0;
ret += [BMGPUImageFramebufferN PbyteBufferBm:2] ? 1 : 0;
ret += [BMGPUImageFramebufferN MtextureBm:8] ? 1 : 0;
ret += [BMGPUImageMovieCompositionC YInitwithcompositionUAndvideocompositionYAndaudiomixBm:54] ? 1 : 0;
ret += [BMGPUImageMovieCompositionC jcreateAssetReaderBm:15] ? 1 : 0;
ret += [BMRACSubjectj OsubjectBm:72] ? 1 : 0;
ret += [BMRACSubjectj zinitBm:9] ? 1 : 0;
ret += [BMRACSubjectj WdeallocBm:65] ? 1 : 0;
ret += [BMRACSubjectj fSubscribeBm:54] ? 1 : 0;
ret += [BMRACSubjectj iEnumeratesubscribersusingblockBm:48] ? 1 : 0;
ret += [BMRACSubjectj pSendnextBm:64] ? 1 : 0;
ret += [BMRACSubjectj TSenderrorBm:57] ? 1 : 0;
ret += [BMRACSubjectj GsendCompletedBm:27] ? 1 : 0;
ret += [BMRACSubjectj jDidsubscribewithdisposableBm:13] ? 1 : 0;
ret += [BMGPUImageFASTCornerDetectionFilterq CinitBm:59] ? 1 : 0;
ret += [BMGPUImageFASTCornerDetectionFilterq PInitwithfastdetectorvariantBm:89] ? 1 : 0;
ret += [BMRACSignalSequenceq nSequencewithsignalBm:10] ? 1 : 0;
ret += [BMRACSignalSequenceq oheadBm:20] ? 1 : 0;
ret += [BMRACSignalSequenceq YtailBm:30] ? 1 : 0;
ret += [BMRACSignalSequenceq darrayBm:53] ? 1 : 0;
ret += [BMRACSignalSequenceq kdescriptionBm:43] ? 1 : 0;
ret += [BMRACSignalj OemptyBm:22] ? 1 : 0;
ret += [BMRACSignalj NReturnBm:1] ? 1 : 0;
ret += [BMRACSignalj rBindBm:92] ? 1 : 0;
ret += [BMRACSignalj zConcatBm:33] ? 1 : 0;
ret += [BMRACSignalj hZipwithBm:79] ? 1 : 0;
ret += [BMGPUImageTextureOutputz zinitBm:38] ? 1 : 0;
ret += [BMGPUImageTextureOutputz PdoneWithTextureBm:76] ? 1 : 0;
ret += [BMGPUImageTextureOutputz BNewframereadyattimeVAtindexBm:87] ? 1 : 0;
ret += [BMGPUImageTextureOutputz QnextAvailableTextureIndexBm:40] ? 1 : 0;
ret += [BMGPUImageTextureOutputz sSetinputframebufferJAtindexBm:74] ? 1 : 0;
ret += [BMGPUImageTextureOutputz MSetinputrotationLAtindexBm:3] ? 1 : 0;
ret += [BMGPUImageTextureOutputz VSetinputsizezAtindexBm:5] ? 1 : 0;
ret += [BMGPUImageTextureOutputz hmaximumOutputSizeBm:25] ? 1 : 0;
ret += [BMGPUImageTextureOutputz zendProcessingBm:48] ? 1 : 0;
ret += [BMGPUImageTextureOutputz LshouldIgnoreUpdatesToThisTargetBm:86] ? 1 : 0;
ret += [BMGPUImageTextureOutputz WwantsMonochromeInputBm:59] ? 1 : 0;
ret += [BMGPUImageTextureOutputz oSetcurrentlyreceivingmonochromeinputBm:43] ? 1 : 0;
ret += [BMUIApplicationE xdocumentsURLBm:34] ? 1 : 0;
ret += [BMUIApplicationE gdocumentsPathBm:87] ? 1 : 0;
ret += [BMUIApplicationE pcachesURLBm:45] ? 1 : 0;
ret += [BMUIApplicationE tcachesPathBm:23] ? 1 : 0;
ret += [BMUIApplicationE IlibraryURLBm:37] ? 1 : 0;
ret += [BMUIApplicationE glibraryPathBm:88] ? 1 : 0;
ret += [BMUIApplicationE FisPiratedBm:90] ? 1 : 0;
ret += [BMUIApplicationE f_Yy_FileexistinmainbundleBm:60] ? 1 : 0;
ret += [BMUIApplicationE WappBundleNameBm:49] ? 1 : 0;
ret += [BMUIApplicationE CappBundleIDBm:0] ? 1 : 0;
ret += [BMUIApplicationE EappVersionBm:37] ? 1 : 0;
ret += [BMUIApplicationE lappBuildVersionBm:79] ? 1 : 0;
ret += [BMUIApplicationE uisBeingDebuggedBm:56] ? 1 : 0;
ret += [BMUIApplicationE PmemoryUsageBm:18] ? 1 : 0;
ret += [BMUIApplicationE scpuUsageBm:71] ? 1 : 0;
ret += [BMUIApplicationE y_DelaysetactivityBm:89] ? 1 : 0;
ret += [BMUIApplicationE W_ChangenetworkactivitycountBm:11] ? 1 : 0;
ret += [BMUIApplicationE DincrementNetworkActivityCountBm:54] ? 1 : 0;
ret += [BMUIApplicationE CdecrementNetworkActivityCountBm:71] ? 1 : 0;
ret += [BMUIApplicationE RisAppExtensionBm:16] ? 1 : 0;
ret += [BMUIApplicationE HsharedExtensionApplicationBm:19] ? 1 : 0;
ret += [BMDGActivityIndicatorTwoDotsAnimationQ zSetupanimationinlayerfWithsizeXTintcolorBm:48] ? 1 : 0;
ret += [BMAppDelegateR QApplicationDDidfinishlaunchingwithoptionsBm:87] ? 1 : 0;
ret += [BMAppDelegateR XApplicationwillresignactiveBm:89] ? 1 : 0;
ret += [BMAppDelegateR qApplicationdidenterbackgroundBm:44] ? 1 : 0;
ret += [BMAppDelegateR MApplicationwillenterforegroundBm:31] ? 1 : 0;
ret += [BMAppDelegateR jApplicationdidbecomeactiveBm:98] ? 1 : 0;
ret += [BMAppDelegateR nApplicationwillterminateBm:27] ? 1 : 0;
ret += [BMGPUImageKuwaharaRadius3FilterH YinitBm:64] ? 1 : 0;
ret += [BMUITextViewL Irac_delegateProxyBm:52] ? 1 : 0;
ret += [BMUITextViewL wrac_textSignalBm:68] ? 1 : 0;
ret += [BMGPUImageBulgeDistortionFiltero linitBm:76] ? 1 : 0;
ret += [BMGPUImageBulgeDistortionFiltero xadjustAspectRatioBm:28] ? 1 : 0;
ret += [BMGPUImageBulgeDistortionFiltero MForceprocessingatsizeBm:2] ? 1 : 0;
ret += [BMGPUImageBulgeDistortionFiltero cSetinputsizezAtindexBm:78] ? 1 : 0;
ret += [BMGPUImageBulgeDistortionFiltero LSetaspectratioBm:34] ? 1 : 0;
ret += [BMGPUImageBulgeDistortionFiltero HSetinputrotationfAtindexBm:87] ? 1 : 0;
ret += [BMGPUImageBulgeDistortionFiltero kSetradiusBm:70] ? 1 : 0;
ret += [BMGPUImageBulgeDistortionFiltero ZSetscaleBm:38] ? 1 : 0;
ret += [BMGPUImageBulgeDistortionFiltero vSetcenterBm:11] ? 1 : 0;
ret += [BMGPUImagePixellateFilterC IInitbmBm:25] ? 1 : 0;
ret += [BMGPUImagePixellateFilterC EInitwithfragmentshaderfromstringbmBm:92] ? 1 : 0;
ret += [BMGPUImagePixellateFilterC UAdjustaspectratiobmBm:58] ? 1 : 0;
ret += [BMGPUImagePixellateFilterC KSetinputrotationatindexbmBm:89] ? 1 : 0;
ret += [BMGPUImagePixellateFilterC vForceprocessingatsizebmBm:28] ? 1 : 0;
ret += [BMGPUImagePixellateFilterC TSetinputsizeatindexbmBm:58] ? 1 : 0;
ret += [BMGPUImagePixellateFilterC cSetfractionalwidthofapixelbmBm:12] ? 1 : 0;
ret += [BMGPUImagePixellateFilterC kSetaspectratiobmBm:73] ? 1 : 0;
ret += [BMGPUImagePrewittEdgeDetectionFiltert hinitBm:21] ? 1 : 0;
ret += [BMAFXMLParserResponseSerializerU FserializerBm:62] ? 1 : 0;
ret += [BMAFXMLParserResponseSerializerU JinitBm:5] ? 1 : 0;
ret += [BMAFXMLParserResponseSerializerU iResponseobjectforresponseEDataLErrorBm:27] ? 1 : 0;
ret += [BMRACOneTuplet JInitbmBm:19] ? 1 : 0;
ret += [BMRACOneTuplet JInitwithbackingarraybmBm:83] ? 1 : 0;
ret += [BMRACOneTuplet cTuplebyaddingobjectbmBm:46] ? 1 : 0;
ret += [BMRACOneTuplet rPackbmBm:40] ? 1 : 0;
ret += [BMRACOneTuplet SIsequalbmBm:92] ? 1 : 0;
ret += [BMTADotViewX dinitBm:81] ? 1 : 0;
ret += [BMTADotViewX WInitwithframeBm:39] ? 1 : 0;
ret += [BMTADotViewX jInitwithcoderBm:50] ? 1 : 0;
ret += [BMTADotViewX XinitializationBm:61] ? 1 : 0;
ret += [BMTADotViewX qChangeactivitystateBm:45] ? 1 : 0;
ret += [BMGPUImageCrosshatchFiltert FInitbmBm:60] ? 1 : 0;
ret += [BMGPUImageCrosshatchFiltert mSetcrosshatchspacingbmBm:98] ? 1 : 0;
ret += [BMGPUImageCrosshatchFiltert HSetlinewidthbmBm:0] ? 1 : 0;
ret += [BMMAS_VIEWn OMas_MakeconstraintsBm:19] ? 1 : 0;
ret += [BMMAS_VIEWn RMas_UpdateconstraintsBm:16] ? 1 : 0;
ret += [BMMAS_VIEWn HMas_RemakeconstraintsBm:11] ? 1 : 0;
ret += [BMMAS_VIEWn rmas_leftBm:57] ? 1 : 0;
ret += [BMMAS_VIEWn Xmas_topBm:1] ? 1 : 0;
ret += [BMMAS_VIEWn Pmas_rightBm:64] ? 1 : 0;
ret += [BMMAS_VIEWn Amas_bottomBm:97] ? 1 : 0;
ret += [BMMAS_VIEWn xmas_leadingBm:45] ? 1 : 0;
ret += [BMMAS_VIEWn Vmas_trailingBm:19] ? 1 : 0;
ret += [BMMAS_VIEWn Nmas_widthBm:12] ? 1 : 0;
ret += [BMMAS_VIEWn hmas_heightBm:43] ? 1 : 0;
ret += [BMMAS_VIEWn Smas_centerXBm:37] ? 1 : 0;
ret += [BMMAS_VIEWn Amas_centerYBm:34] ? 1 : 0;
ret += [BMMAS_VIEWn Nmas_baselineBm:80] ? 1 : 0;
ret += [BMMAS_VIEWn mas_attributeBm:67] ? 1 : 0;
ret += [BMMAS_VIEWn Xmas_firstBaselineBm:39] ? 1 : 0;
ret += [BMMAS_VIEWn gmas_lastBaselineBm:54] ? 1 : 0;
ret += [BMMAS_VIEWn Omas_leftMarginBm:53] ? 1 : 0;
ret += [BMMAS_VIEWn emas_rightMarginBm:86] ? 1 : 0;
ret += [BMMAS_VIEWn mmas_topMarginBm:40] ? 1 : 0;
ret += [BMMAS_VIEWn Lmas_bottomMarginBm:64] ? 1 : 0;
ret += [BMMAS_VIEWn bmas_leadingMarginBm:27] ? 1 : 0;
ret += [BMMAS_VIEWn smas_trailingMarginBm:21] ? 1 : 0;
ret += [BMMAS_VIEWn Xmas_centerXWithinMarginsBm:57] ? 1 : 0;
ret += [BMMAS_VIEWn Tmas_centerYWithinMarginsBm:72] ? 1 : 0;
ret += [BMMAS_VIEWn Qmas_safeAreaLayoutGuideBm:51] ? 1 : 0;
ret += [BMMAS_VIEWn emas_safeAreaLayoutGuideTopBm:30] ? 1 : 0;
ret += [BMMAS_VIEWn umas_safeAreaLayoutGuideBottomBm:78] ? 1 : 0;
ret += [BMMAS_VIEWn Mmas_safeAreaLayoutGuideLeftBm:13] ? 1 : 0;
ret += [BMMAS_VIEWn Xmas_safeAreaLayoutGuideRightBm:35] ? 1 : 0;
ret += [BMMAS_VIEWn hmas_keyBm:50] ? 1 : 0;
ret += [BMMAS_VIEWn MSetmas_KeyBm:10] ? 1 : 0;
ret += [BMMAS_VIEWn uMas_ClosestcommonsuperviewBm:6] ? 1 : 0;
ret += [BMGPUImageRGBDilationFilterm EInitwithradiusBm:44] ? 1 : 0;
ret += [BMGPUImageRGBDilationFilterm uinitBm:16] ? 1 : 0;
ret += [BMGPUImageRGBClosingFilterK MinitBm:84] ? 1 : 0;
ret += [BMGPUImageRGBClosingFilterK DInitwithradiusBm:77] ? 1 : 0;
ret += [BMGPUImageMedianFilterN YinitBm:86] ? 1 : 0;
ret += [BMUIProgressViewX Aaf_uploadProgressAnimatedBm:35] ? 1 : 0;
ret += [BMUIProgressViewX LAf_SetuploadprogressanimatedBm:79] ? 1 : 0;
ret += [BMUIProgressViewX haf_downloadProgressAnimatedBm:73] ? 1 : 0;
ret += [BMUIProgressViewX TAf_SetdownloadprogressanimatedBm:95] ? 1 : 0;
ret += [BMUIProgressViewX HSetprogresswithuploadprogressoftaskwAnimatedBm:44] ? 1 : 0;
ret += [BMUIProgressViewX sSetprogresswithdownloadprogressoftaskeAnimatedBm:41] ? 1 : 0;
ret += [BMUIProgressViewX mObservevalueforkeypathXOfobjectTChangefContextBm:4] ? 1 : 0;
ret += [BMAFHTTPResponseSerializerI nserializerBm:20] ? 1 : 0;
ret += [BMAFHTTPResponseSerializerI finitBm:73] ? 1 : 0;
ret += [BMAFHTTPResponseSerializerI VValidateresponseYDatamErrorBm:34] ? 1 : 0;
ret += [BMAFHTTPResponseSerializerI OResponseobjectforresponseiDatacErrorBm:30] ? 1 : 0;
ret += [BMAFHTTPResponseSerializerI rsupportsSecureCodingBm:82] ? 1 : 0;
ret += [BMAFHTTPResponseSerializerI YInitwithcoderBm:97] ? 1 : 0;
ret += [BMAFHTTPResponseSerializerI kEncodewithcoderBm:34] ? 1 : 0;
ret += [BMAFHTTPResponseSerializerI BCopywithzoneBm:25] ? 1 : 0;
ret += [BMGPUImageAdaptiveThresholdFiltery PinitBm:19] ? 1 : 0;
ret += [BMGPUImageAdaptiveThresholdFiltery NSetblurradiusinpixelsBm:85] ? 1 : 0;
ret += [BMGPUImageAdaptiveThresholdFiltery DblurRadiusInPixelsBm:68] ? 1 : 0;
ret += [BMGPUImageMovieWriterP dInitwithmovieurlsizebmBm:64] ? 1 : 0;
ret += [BMGPUImageMovieWriterP pInitwithmovieurlsizefiletypeoutputsettingsbmBm:30] ? 1 : 0;
ret += [BMGPUImageMovieWriterP DDeallocbmBm:21] ? 1 : 0;
ret += [BMGPUImageMovieWriterP vInitializemoviewithoutputsettingsbmBm:4] ? 1 : 0;
ret += [BMGPUImageMovieWriterP zSetencodinglivevideobmBm:74] ? 1 : 0;
ret += [BMGPUImageMovieWriterP pStartrecordingbmBm:79] ? 1 : 0;
ret += [BMGPUImageMovieWriterP EStartrecordinginorientationbmBm:78] ? 1 : 0;
ret += [BMGPUImageMovieWriterP cCancelrecordingbmBm:42] ? 1 : 0;
ret += [BMGPUImageMovieWriterP uFinishrecordingbmBm:29] ? 1 : 0;
ret += [BMGPUImageMovieWriterP EFinishrecordingwithcompletionhandlerbmBm:90] ? 1 : 0;
ret += [BMGPUImageMovieWriterP DProcessaudiobufferbmBm:21] ? 1 : 0;
ret += [BMGPUImageMovieWriterP fEnablesynchronizationcallbacksbmBm:57] ? 1 : 0;
ret += [BMGPUImageMovieWriterP BCreatedatafbobmBm:86] ? 1 : 0;
ret += [BMGPUImageMovieWriterP KDestroydatafbobmBm:0] ? 1 : 0;
ret += [BMGPUImageMovieWriterP WSetfilterfbobmBm:59] ? 1 : 0;
ret += [BMGPUImageMovieWriterP LRenderatinternalsizeusingframebufferbmBm:59] ? 1 : 0;
ret += [BMGPUImageMovieWriterP MNewframereadyattimeatindexbmBm:46] ? 1 : 0;
ret += [BMGPUImageMovieWriterP BNextavailabletextureindexbmBm:71] ? 1 : 0;
ret += [BMGPUImageMovieWriterP eSetinputframebufferatindexbmBm:93] ? 1 : 0;
ret += [BMGPUImageMovieWriterP GSetinputrotationatindexbmBm:6] ? 1 : 0;
ret += [BMGPUImageMovieWriterP RSetinputsizeatindexbmBm:17] ? 1 : 0;
ret += [BMGPUImageMovieWriterP GMaximumoutputsizebmBm:20] ? 1 : 0;
ret += [BMGPUImageMovieWriterP nEndprocessingbmBm:76] ? 1 : 0;
ret += [BMGPUImageMovieWriterP uShouldignoreupdatestothistargetbmBm:18] ? 1 : 0;
ret += [BMGPUImageMovieWriterP CWantsmonochromeinputbmBm:21] ? 1 : 0;
ret += [BMGPUImageMovieWriterP ESetcurrentlyreceivingmonochromeinputbmBm:28] ? 1 : 0;
ret += [BMGPUImageMovieWriterP aSethasaudiotrackbmBm:6] ? 1 : 0;
ret += [BMGPUImageMovieWriterP OSethasaudiotrackaudiosettingsbmBm:59] ? 1 : 0;
ret += [BMGPUImageMovieWriterP NMetadatabmBm:86] ? 1 : 0;
ret += [BMGPUImageMovieWriterP YSetmetadatabmBm:40] ? 1 : 0;
ret += [BMGPUImageMovieWriterP gDurationbmBm:21] ? 1 : 0;
ret += [BMGPUImageMovieWriterP bTransformbmBm:44] ? 1 : 0;
ret += [BMGPUImageMovieWriterP aSettransformbmBm:72] ? 1 : 0;
ret += [BMGPUImageMovieWriterP gAssetwriterbmBm:37] ? 1 : 0;
ret += [BMAFXMLDocumentResponseSerializerj bSerializerbmBm:22] ? 1 : 0;
ret += [BMAFXMLDocumentResponseSerializerj vSerializerwithxmldocumentoptionsbmBm:43] ? 1 : 0;
ret += [BMAFXMLDocumentResponseSerializerj UInitbmBm:37] ? 1 : 0;
ret += [BMAFXMLDocumentResponseSerializerj cResponseobjectforresponsedataerrorbmBm:77] ? 1 : 0;
ret += [BMAFXMLDocumentResponseSerializerj HInitwithcoderbmBm:56] ? 1 : 0;
ret += [BMAFXMLDocumentResponseSerializerj IEncodewithcoderbmBm:14] ? 1 : 0;
ret += [BMAFXMLDocumentResponseSerializerj MCopywithzonebmBm:32] ? 1 : 0;
ret += [BMUIImagePickerControllerS srac_delegateProxyBm:91] ? 1 : 0;
ret += [BMUIImagePickerControllerS Frac_imageSelectedSignalBm:37] ? 1 : 0;
ret += [BMNSObjectp yPerformselectorwithargsBm:98] ? 1 : 0;
ret += [BMNSObjectp fPerformselectorwithargsUAfterdelayBm:36] ? 1 : 0;
ret += [BMNSObjectp cPerformselectorwithargsonmainthreadGWaituntildoneBm:90] ? 1 : 0;
ret += [BMNSObjectp DPerformselectorwithargsTOnthreadcWaituntildoneBm:74] ? 1 : 0;
ret += [BMNSObjectp IPerformselectorwithargsinbackgroundBm:40] ? 1 : 0;
ret += [BMNSObjectp lGetreturnfrominvYWithsigBm:88] ? 1 : 0;
ret += [BMNSObjectp ESetinvbWithsigHAndargsBm:18] ? 1 : 0;
ret += [BMNSObjectp XPerformselectorEAfterdelayBm:96] ? 1 : 0;
ret += [BMNSObjectp eSwizzleinstancemethodAWithBm:47] ? 1 : 0;
ret += [BMNSObjectp jSwizzleclassmethodpWithBm:35] ? 1 : 0;
ret += [BMNSObjectp QSetassociatevalueNWithkeyBm:83] ? 1 : 0;
ret += [BMNSObjectp DSetassociateweakvalueZWithkeyBm:31] ? 1 : 0;
ret += [BMNSObjectp KremoveAssociatedValuesBm:2] ? 1 : 0;
ret += [BMNSObjectp jGetassociatedvalueforkeyBm:38] ? 1 : 0;
ret += [BMNSObjectp cclassNameBm:29] ? 1 : 0;
ret += [BMNSObjectp LclassNameBm:7] ? 1 : 0;
ret += [BMNSObjectp edeepCopyBm:91] ? 1 : 0;
ret += [BMNSObjectp sDeepcopywitharchiverdUnarchiverBm:68] ? 1 : 0;
ret += [BMUIControlO gRac_ChannelforcontroleventssKeynNilvalueBm:38] ? 1 : 0;
ret += [BMDGActivityIndicatorCookieTerminatorAnimationE ySetupanimationinlayerwithsizetintcolorbmBm:2] ? 1 : 0;
ret += [BMYWebDataHandleI WImagenameforbase64HandleBm:7] ? 1 : 0;
ret += [BMYWebDataHandleI YStringforbase64HandleBm:3] ? 1 : 0;
ret += [BMYWebDataHandleI EdocumentPathBm:63] ? 1 : 0;
ret += [BMYWebDataHandleI EDocumentappendpathBm:42] ? 1 : 0;
ret += [BMYWebDataHandleI XDocumentappendpathsBm:63] ? 1 : 0;
ret += [BMYWebDataHandleI LDocumentywebimagefilewithfolderBm:29] ? 1 : 0;
ret += [BMYWebDataHandleI CDocumentywebimagefileappendwithfolderuWithfileBm:40] ? 1 : 0;
ret += [BMYWebDataHandleI XDocumentywebimagefileappendbase64WithfolderQWithfileBm:20] ? 1 : 0;
ret += [BMDGActivityIndicatorBallRotateAnimationh cSetupanimationinlayerpWithsizeVTintcolorBm:4] ? 1 : 0;
ret += [BMMASConstraintMakerL fInitwithviewBm:1] ? 1 : 0;
ret += [BMMASConstraintMakerL sinstallBm:4] ? 1 : 0;
ret += [BMMASConstraintMakerL oConstraintdShouldbereplacedwithconstraintBm:15] ? 1 : 0;
ret += [BMMASConstraintMakerL nConstraintQAddconstraintwithlayoutattributeBm:18] ? 1 : 0;
ret += [BMMASConstraintMakerL nAddconstraintwithattributesBm:2] ? 1 : 0;
ret += [BMMASConstraintMakerL LAddconstraintwithlayoutattributeBm:29] ? 1 : 0;
ret += [BMMASConstraintMakerL VleftBm:76] ? 1 : 0;
ret += [BMMASConstraintMakerL btopBm:72] ? 1 : 0;
ret += [BMMASConstraintMakerL frightBm:97] ? 1 : 0;
ret += [BMMASConstraintMakerL cbottomBm:35] ? 1 : 0;
ret += [BMMASConstraintMakerL HleadingBm:30] ? 1 : 0;
ret += [BMMASConstraintMakerL OtrailingBm:25] ? 1 : 0;
ret += [BMMASConstraintMakerL VwidthBm:79] ? 1 : 0;
ret += [BMMASConstraintMakerL jheightBm:54] ? 1 : 0;
ret += [BMMASConstraintMakerL ycenterXBm:18] ? 1 : 0;
ret += [BMMASConstraintMakerL gcenterYBm:24] ? 1 : 0;
ret += [BMMASConstraintMakerL tbaselineBm:46] ? 1 : 0;
ret += [BMMASConstraintMakerL attributesBm:90] ? 1 : 0;
ret += [BMMASConstraintMakerL ZfirstBaselineBm:2] ? 1 : 0;
ret += [BMMASConstraintMakerL olastBaselineBm:77] ? 1 : 0;
ret += [BMMASConstraintMakerL UleftMarginBm:82] ? 1 : 0;
ret += [BMMASConstraintMakerL UrightMarginBm:95] ? 1 : 0;
ret += [BMMASConstraintMakerL MtopMarginBm:19] ? 1 : 0;
ret += [BMMASConstraintMakerL FbottomMarginBm:83] ? 1 : 0;
ret += [BMMASConstraintMakerL DleadingMarginBm:26] ? 1 : 0;
ret += [BMMASConstraintMakerL ctrailingMarginBm:83] ? 1 : 0;
ret += [BMMASConstraintMakerL jcenterXWithinMarginsBm:90] ? 1 : 0;
ret += [BMMASConstraintMakerL KcenterYWithinMarginsBm:2] ? 1 : 0;
ret += [BMMASConstraintMakerL PedgesBm:50] ? 1 : 0;
ret += [BMMASConstraintMakerL EsizeBm:29] ? 1 : 0;
ret += [BMMASConstraintMakerL YcenterBm:27] ? 1 : 0;
ret += [BMMASConstraintMakerL groupBm:19] ? 1 : 0;
ret += [BMGPUImageHazeFiltern CinitBm:1] ? 1 : 0;
ret += [BMGPUImageHazeFiltern fSetdistanceBm:62] ? 1 : 0;
ret += [BMGPUImageHazeFiltern eSetslopeBm:99] ? 1 : 0;
ret += [BMNSArrayn hYy_ModelarraywithclassjsonbmBm:33] ? 1 : 0;
ret += [BMNSArrayn xYy_ModelarraywithclassarraybmBm:14] ? 1 : 0;
ret += [BMGPUImageHighlightShadowFiltero FinitBm:23] ? 1 : 0;
ret += [BMGPUImageHighlightShadowFiltero lSetshadowsBm:49] ? 1 : 0;
ret += [BMGPUImageHighlightShadowFiltero gSethighlightsBm:13] ? 1 : 0;
ret += [BMDGActivityIndicatorBallGridBeatAnimationu ISetupanimationinlayerUWithsizeCTintcolorBm:27] ? 1 : 0;
ret += [BMDGActivityIndicatorBallGridBeatAnimationu pCreatecirlewithxColorBm:17] ? 1 : 0;
ret += [BMDGActivityIndicatorBallClipRotatePulseAnimationW BSetupanimationinlayerMWithsizePTintcolorBm:66] ? 1 : 0;
ret += [BMUIFonty risBoldBm:46] ? 1 : 0;
ret += [BMUIFonty IisItalicBm:44] ? 1 : 0;
ret += [BMUIFonty QisMonoSpaceBm:89] ? 1 : 0;
ret += [BMUIFonty TisColorGlyphsBm:95] ? 1 : 0;
ret += [BMUIFonty qfontWeightBm:78] ? 1 : 0;
ret += [BMUIFonty BfontWithBoldBm:53] ? 1 : 0;
ret += [BMUIFonty afontWithItalicBm:89] ? 1 : 0;
ret += [BMUIFonty NfontWithBoldItalicBm:72] ? 1 : 0;
ret += [BMUIFonty DfontWithNormalBm:25] ? 1 : 0;
ret += [BMUIFonty jFontwithctfontBm:96] ? 1 : 0;
ret += [BMUIFonty IFontwithcgfontVSizeBm:26] ? 1 : 0;
ret += [BMUIFonty CF_RETURNS_RETAINEDBm:17] ? 1 : 0;
ret += [BMUIFonty CF_RETURNS_RETAINEDBm:28] ? 1 : 0;
ret += [BMUIFonty OLoadfontfrompathBm:53] ? 1 : 0;
ret += [BMUIFonty VUnloadfontfrompathBm:81] ? 1 : 0;
ret += [BMUIFonty dLoadfontfromdataBm:58] ? 1 : 0;
ret += [BMUIFonty qUnloadfontfromdataBm:61] ? 1 : 0;
ret += [BMUIFonty oDatafromfontBm:13] ? 1 : 0;
ret += [BMUIFonty vDatafromcgfontBm:82] ? 1 : 0;
ret += [BMGPUImageViewe wlayerClassBm:39] ? 1 : 0;
ret += [BMGPUImageViewe dInitwithframeBm:80] ? 1 : 0;
ret += [BMGPUImageViewe IInitwithcoderBm:76] ? 1 : 0;
ret += [BMGPUImageViewe OcommonInitBm:55] ? 1 : 0;
ret += [BMGPUImageViewe SlayoutSubviewsBm:54] ? 1 : 0;
ret += [BMGPUImageViewe WdeallocBm:88] ? 1 : 0;
ret += [BMGPUImageViewe xcreateDisplayFramebufferBm:61] ? 1 : 0;
ret += [BMGPUImageViewe YdestroyDisplayFramebufferBm:26] ? 1 : 0;
ret += [BMGPUImageViewe ssetDisplayFramebufferBm:17] ? 1 : 0;
ret += [BMGPUImageViewe ApresentFramebufferBm:67] ? 1 : 0;
ret += [BMGPUImageViewe QrecalculateViewGeometryBm:58] ? 1 : 0;
ret += [BMGPUImageViewe ESetbackgroundcolorredLGreenwBlueAAlphaBm:9] ? 1 : 0;
ret += [BMGPUImageViewe bTexturecoordinatesforrotationBm:51] ? 1 : 0;
ret += [BMGPUImageViewe dNewframereadyattimePAtindexBm:9] ? 1 : 0;
ret += [BMGPUImageViewe hnextAvailableTextureIndexBm:23] ? 1 : 0;
ret += [BMGPUImageViewe RSetinputframebufferzAtindexBm:62] ? 1 : 0;
ret += [BMGPUImageViewe YSetinputrotationtAtindexBm:49] ? 1 : 0;
ret += [BMGPUImageViewe YSetinputsizeBAtindexBm:93] ? 1 : 0;
ret += [BMGPUImageViewe QmaximumOutputSizeBm:48] ? 1 : 0;
ret += [BMGPUImageViewe NendProcessingBm:73] ? 1 : 0;
ret += [BMGPUImageViewe pshouldIgnoreUpdatesToThisTargetBm:83] ? 1 : 0;
ret += [BMGPUImageViewe gwantsMonochromeInputBm:36] ? 1 : 0;
ret += [BMGPUImageViewe ZSetcurrentlyreceivingmonochromeinputBm:36] ? 1 : 0;
ret += [BMGPUImageViewe UsizeInPixelsBm:10] ? 1 : 0;
ret += [BMGPUImageViewe bSetfillmodeBm:34] ? 1 : 0;
ret += [BMNSDatae pmd2StringBm:20] ? 1 : 0;
ret += [BMNSDatae Dmd2DataBm:7] ? 1 : 0;
ret += [BMNSDatae xmd4StringBm:21] ? 1 : 0;
ret += [BMNSDatae Wmd4DataBm:33] ? 1 : 0;
ret += [BMNSDatae qmd5StringBm:88] ? 1 : 0;
ret += [BMNSDatae kmd5DataBm:6] ? 1 : 0;
ret += [BMNSDatae msha1StringBm:29] ? 1 : 0;
ret += [BMNSDatae Psha1DataBm:84] ? 1 : 0;
ret += [BMNSDatae psha224StringBm:84] ? 1 : 0;
ret += [BMNSDatae zsha224DataBm:65] ? 1 : 0;
ret += [BMNSDatae Qsha256StringBm:68] ? 1 : 0;
ret += [BMNSDatae ksha256DataBm:33] ? 1 : 0;
ret += [BMNSDatae gsha384StringBm:46] ? 1 : 0;
ret += [BMNSDatae Msha384DataBm:96] ? 1 : 0;
ret += [BMNSDatae Qsha512StringBm:59] ? 1 : 0;
ret += [BMNSDatae Rsha512DataBm:54] ? 1 : 0;
ret += [BMNSDatae fHmacstringusingalgTWithkeyBm:12] ? 1 : 0;
ret += [BMNSDatae DHmacdatausingalgIWithkeyBm:86] ? 1 : 0;
ret += [BMNSDatae dHmacmd5StringwithkeyBm:34] ? 1 : 0;
ret += [BMNSDatae bHmacmd5DatawithkeyBm:91] ? 1 : 0;
ret += [BMNSDatae LHmacsha1StringwithkeyBm:83] ? 1 : 0;
ret += [BMNSDatae KHmacsha1DatawithkeyBm:0] ? 1 : 0;
ret += [BMNSDatae sHmacsha224StringwithkeyBm:55] ? 1 : 0;
ret += [BMNSDatae jHmacsha224DatawithkeyBm:6] ? 1 : 0;
ret += [BMNSDatae PHmacsha256StringwithkeyBm:97] ? 1 : 0;
ret += [BMNSDatae AHmacsha256DatawithkeyBm:43] ? 1 : 0;
ret += [BMNSDatae rHmacsha384StringwithkeyBm:12] ? 1 : 0;
ret += [BMNSDatae nHmacsha384DatawithkeyBm:3] ? 1 : 0;
ret += [BMNSDatae KHmacsha512StringwithkeyBm:84] ? 1 : 0;
ret += [BMNSDatae DHmacsha512DatawithkeyBm:79] ? 1 : 0;
ret += [BMNSDatae ocrc32StringBm:79] ? 1 : 0;
ret += [BMNSDatae Hcrc32Bm:86] ? 1 : 0;
ret += [BMNSDatae iAes256EncryptwithkeysIvBm:48] ? 1 : 0;
ret += [BMNSDatae pAes256DecryptwithkeyjIvBm:21] ? 1 : 0;
ret += [BMNSDatae lutf8StringBm:92] ? 1 : 0;
ret += [BMNSDatae ihexStringBm:6] ? 1 : 0;
ret += [BMNSDatae fDatawithhexstringBm:76] ? 1 : 0;
ret += [BMNSDatae lbase64EncodedStringBm:17] ? 1 : 0;
ret += [BMNSDatae VDatawithbase64EncodedstringBm:6] ? 1 : 0;
ret += [BMNSDatae JjsonValueDecodedBm:82] ? 1 : 0;
ret += [BMNSDatae LgzipInflateBm:22] ? 1 : 0;
ret += [BMNSDatae igzipDeflateBm:17] ? 1 : 0;
ret += [BMNSDatae GzlibInflateBm:9] ? 1 : 0;
ret += [BMNSDatae vzlibDeflateBm:53] ? 1 : 0;
ret += [BMNSDatae YDatanamedBm:66] ? 1 : 0;
ret += [BMUIDevicen usystemVersionBm:75] ? 1 : 0;
ret += [BMUIDevicen tisPadBm:8] ? 1 : 0;
ret += [BMUIDevicen FisSimulatorBm:23] ? 1 : 0;
ret += [BMUIDevicen gisJailbrokenBm:82] ? 1 : 0;
ret += [BMUIDevicen WcanMakePhoneCallsBm:90] ? 1 : 0;
ret += [BMUIDevicen mIpaddresswithifanameBm:42] ? 1 : 0;
ret += [BMUIDevicen PipAddressWIFIBm:22] ? 1 : 0;
ret += [BMUIDevicen eipAddressCellBm:58] ? 1 : 0;
ret += [BMUIDevicen RGetnetworktrafficbytesBm:92] ? 1 : 0;
ret += [BMUIDevicen vmachineModelBm:93] ? 1 : 0;
ret += [BMUIDevicen ymachineModelNameBm:40] ? 1 : 0;
ret += [BMUIDevicen XsystemUptimeBm:91] ? 1 : 0;
ret += [BMUIDevicen jdiskSpaceBm:39] ? 1 : 0;
ret += [BMUIDevicen AdiskSpaceFreeBm:30] ? 1 : 0;
ret += [BMUIDevicen bdiskSpaceUsedBm:4] ? 1 : 0;
ret += [BMUIDevicen AmemoryTotalBm:71] ? 1 : 0;
ret += [BMUIDevicen mmemoryUsedBm:94] ? 1 : 0;
ret += [BMUIDevicen NmemoryFreeBm:82] ? 1 : 0;
ret += [BMUIDevicen imemoryActiveBm:51] ? 1 : 0;
ret += [BMUIDevicen OmemoryInactiveBm:70] ? 1 : 0;
ret += [BMUIDevicen HmemoryWiredBm:93] ? 1 : 0;
ret += [BMUIDevicen omemoryPurgableBm:36] ? 1 : 0;
ret += [BMUIDevicen qcpuCountBm:46] ? 1 : 0;
ret += [BMUIDevicen XcpuUsageBm:36] ? 1 : 0;
ret += [BMUIDevicen ncpuUsagePerProcessorBm:29] ? 1 : 0;
ret += [BMRACEagerSequenceu DReturnbmBm:97] ? 1 : 0;
ret += [BMRACEagerSequenceu cBindbmBm:47] ? 1 : 0;
ret += [BMRACEagerSequenceu GConcatbmBm:63] ? 1 : 0;
ret += [BMRACEagerSequenceu KEagersequencebmBm:64] ? 1 : 0;
ret += [BMRACEagerSequenceu FLazysequencebmBm:6] ? 1 : 0;
ret += [BMRACEagerSequenceu JFoldrightwithstartreducebmBm:50] ? 1 : 0;
ret += [BMGPUImageSaturationBlendFilterK AinitBm:93] ? 1 : 0;
ret += [BMGPUImageColorInvertFiltern QInitbmBm:5] ? 1 : 0;
ret += [BMRACChannelTerminalp TInitwithvaluesxOtherterminalBm:59] ? 1 : 0;
ret += [BMRACChannelTerminalp kSubscribeBm:78] ? 1 : 0;
ret += [BMRACChannelTerminalp fSendnextBm:61] ? 1 : 0;
ret += [BMRACChannelTerminalp FSenderrorBm:47] ? 1 : 0;
ret += [BMRACChannelTerminalp AsendCompletedBm:87] ? 1 : 0;
ret += [BMRACChannelTerminalp lDidsubscribewithdisposableBm:90] ? 1 : 0;
ret += [BMGPUImageContextx qinitBm:90] ? 1 : 0;
ret += [BMGPUImageContextx BcontextKeyBm:20] ? 1 : 0;
ret += [BMGPUImageContextx WsharedImageProcessingContextBm:47] ? 1 : 0;
ret += [BMGPUImageContextx dsharedContextQueueBm:16] ? 1 : 0;
ret += [BMGPUImageContextx nsharedFramebufferCacheBm:47] ? 1 : 0;
ret += [BMGPUImageContextx YuseImageProcessingContextBm:40] ? 1 : 0;
ret += [BMGPUImageContextx xuseAsCurrentContextBm:49] ? 1 : 0;
ret += [BMGPUImageContextx HSetactiveshaderprogramBm:95] ? 1 : 0;
ret += [BMGPUImageContextx JSetcontextshaderprogramBm:72] ? 1 : 0;
ret += [BMGPUImageContextx GmaximumTextureSizeForThisDeviceBm:47] ? 1 : 0;
ret += [BMGPUImageContextx hmaximumTextureUnitsForThisDeviceBm:26] ? 1 : 0;
ret += [BMGPUImageContextx umaximumVaryingVectorsForThisDeviceBm:66] ? 1 : 0;
ret += [BMGPUImageContextx eDevicesupportsopenglesextensionBm:73] ? 1 : 0;
ret += [BMGPUImageContextx HdeviceSupportsRedTexturesBm:66] ? 1 : 0;
ret += [BMGPUImageContextx vdeviceSupportsFramebufferReadsBm:55] ? 1 : 0;
ret += [BMGPUImageContextx lSizethatfitswithinatextureforsizeBm:67] ? 1 : 0;
ret += [BMGPUImageContextx KpresentBufferForDisplayBm:20] ? 1 : 0;
ret += [BMGPUImageContextx fProgramforvertexshaderstringSFragmentshaderstringBm:61] ? 1 : 0;
ret += [BMGPUImageContextx eUsesharegroupBm:63] ? 1 : 0;
ret += [BMGPUImageContextx DcreateContextBm:91] ? 1 : 0;
ret += [BMGPUImageContextx JsupportsFastTextureUploadBm:89] ? 1 : 0;
ret += [BMGPUImageContextx UcontextBm:88] ? 1 : 0;
ret += [BMGPUImageContextx McoreVideoTextureCacheBm:76] ? 1 : 0;
ret += [BMGPUImageContextx ZframebufferCacheBm:42] ? 1 : 0;
ret += [BMGPUImageGaussianBlurPositionFiltern iInitwithfirststagevertexshaderfromstringfirststagefragmentshaderfromstringsecondstagevertexshaderfromstringsecondstagefragmentshaderfromstringbmBm:75] ? 1 : 0;
ret += [BMGPUImageGaussianBlurPositionFiltern wInitbmBm:22] ? 1 : 0;
ret += [BMGPUImageGaussianBlurPositionFiltern gAdjustaspectratiobmBm:96] ? 1 : 0;
ret += [BMGPUImageGaussianBlurPositionFiltern sForceprocessingatsizebmBm:31] ? 1 : 0;
ret += [BMGPUImageGaussianBlurPositionFiltern fSetinputsizeatindexbmBm:46] ? 1 : 0;
ret += [BMGPUImageGaussianBlurPositionFiltern pSetinputrotationatindexbmBm:88] ? 1 : 0;
ret += [BMGPUImageGaussianBlurPositionFiltern sSetblursizebmBm:68] ? 1 : 0;
ret += [BMGPUImageGaussianBlurPositionFiltern GSetblurcenterbmBm:43] ? 1 : 0;
ret += [BMGPUImageGaussianBlurPositionFiltern mSetblurradiusbmBm:17] ? 1 : 0;
ret += [BMGPUImageGaussianBlurPositionFiltern rSetaspectratiobmBm:17] ? 1 : 0;
ret += [BMGPUImageTransformFilterW QinitBm:5] ? 1 : 0;
ret += [BMGPUImageTransformFilterW ZLoadorthomatrixQLeftrRightbBottomBTopQNearsFarBm:49] ? 1 : 0;
ret += [BMGPUImageTransformFilterW vConvert3DtransformaTomatrixBm:32] ? 1 : 0;
ret += [BMGPUImageTransformFilterW UNewframereadyattimeNAtindexBm:8] ? 1 : 0;
ret += [BMGPUImageTransformFilterW oBm:17] ? 1 : 0;
ret += [BMGPUImageTransformFilterW HSetupfilterforsizeBm:73] ? 1 : 0;
ret += [BMGPUImageTransformFilterW TSetaffinetransformBm:17] ? 1 : 0;
ret += [BMGPUImageTransformFilterW OaffineTransformBm:6] ? 1 : 0;
ret += [BMGPUImageTransformFilterW mSettransform3DBm:36] ? 1 : 0;
ret += [BMGPUImageTransformFilterW BSetignoreaspectratioBm:6] ? 1 : 0;
ret += [BMGPUImageTransformFilterW SSetanchortopleftBm:73] ? 1 : 0;
ret += [BMGPUImageLanczosResamplingFilterz pinitBm:23] ? 1 : 0;
ret += [BMGPUImageLanczosResamplingFilterz nSetinputsizeBAtindexBm:42] ? 1 : 0;
ret += [BMGPUImageLanczosResamplingFilterz OSetupfilterforsizeBm:82] ? 1 : 0;
ret += [BMGPUImageLanczosResamplingFilterz jRendertotexturewithverticeswTexturecoordinatesBm:65] ? 1 : 0;
ret += [BMGPUImageMovieWriterG qInitwithmovieurlKSizeBm:27] ? 1 : 0;
ret += [BMGPUImageMovieWriterG NInitwithmovieurlDSizezFiletypeoOutputsettingsBm:80] ? 1 : 0;
ret += [BMGPUImageMovieWriterG wdeallocBm:92] ? 1 : 0;
ret += [BMGPUImageMovieWriterG YInitializemoviewithoutputsettingsBm:39] ? 1 : 0;
ret += [BMGPUImageMovieWriterG dSetencodinglivevideoBm:93] ? 1 : 0;
ret += [BMGPUImageMovieWriterG WstartRecordingBm:85] ? 1 : 0;
ret += [BMGPUImageMovieWriterG LStartrecordinginorientationBm:90] ? 1 : 0;
ret += [BMGPUImageMovieWriterG qcancelRecordingBm:90] ? 1 : 0;
ret += [BMGPUImageMovieWriterG wfinishRecordingBm:61] ? 1 : 0;
ret += [BMGPUImageMovieWriterG pFinishrecordingwithcompletionhandlerBm:48] ? 1 : 0;
ret += [BMGPUImageMovieWriterG QProcessaudiobufferBm:40] ? 1 : 0;
ret += [BMGPUImageMovieWriterG penableSynchronizationCallbacksBm:0] ? 1 : 0;
ret += [BMGPUImageMovieWriterG kcreateDataFBOBm:57] ? 1 : 0;
ret += [BMGPUImageMovieWriterG idestroyDataFBOBm:53] ? 1 : 0;
ret += [BMGPUImageMovieWriterG osetFilterFBOBm:70] ? 1 : 0;
ret += [BMGPUImageMovieWriterG SRenderatinternalsizeusingframebufferBm:97] ? 1 : 0;
ret += [BMGPUImageMovieWriterG kNewframereadyattimemAtindexBm:21] ? 1 : 0;
ret += [BMGPUImageMovieWriterG znextAvailableTextureIndexBm:39] ? 1 : 0;
ret += [BMGPUImageMovieWriterG DSetinputframebufferPAtindexBm:50] ? 1 : 0;
ret += [BMGPUImageMovieWriterG bSetinputrotationMAtindexBm:93] ? 1 : 0;
ret += [BMGPUImageMovieWriterG bSetinputsizefAtindexBm:0] ? 1 : 0;
ret += [BMGPUImageMovieWriterG mmaximumOutputSizeBm:54] ? 1 : 0;
ret += [BMGPUImageMovieWriterG aendProcessingBm:51] ? 1 : 0;
ret += [BMGPUImageMovieWriterG jshouldIgnoreUpdatesToThisTargetBm:99] ? 1 : 0;
ret += [BMGPUImageMovieWriterG QwantsMonochromeInputBm:89] ? 1 : 0;
ret += [BMGPUImageMovieWriterG qSetcurrentlyreceivingmonochromeinputBm:45] ? 1 : 0;
ret += [BMGPUImageMovieWriterG DSethasaudiotrackBm:6] ? 1 : 0;
ret += [BMGPUImageMovieWriterG bSethasaudiotrackuAudiosettingsBm:80] ? 1 : 0;
ret += [BMGPUImageMovieWriterG KmetaDataBm:33] ? 1 : 0;
ret += [BMGPUImageMovieWriterG ESetmetadataBm:71] ? 1 : 0;
ret += [BMGPUImageMovieWriterG IdurationBm:70] ? 1 : 0;
ret += [BMGPUImageMovieWriterG UtransformBm:79] ? 1 : 0;
ret += [BMGPUImageMovieWriterG PSettransformBm:72] ? 1 : 0;
ret += [BMGPUImageMovieWriterG kassetWriterBm:87] ? 1 : 0;
ret += [BMRACSignalSequenceH OSequencewithsignalbmBm:82] ? 1 : 0;
ret += [BMRACSignalSequenceH OHeadbmBm:87] ? 1 : 0;
ret += [BMRACSignalSequenceH eTailbmBm:12] ? 1 : 0;
ret += [BMRACSignalSequenceH XArraybmBm:75] ? 1 : 0;
ret += [BMRACSignalSequenceH TDescriptionbmBm:20] ? 1 : 0;
ret += [BMNSNotificationCentere DPostnotificationonmainthreadbmBm:56] ? 1 : 0;
ret += [BMNSNotificationCentere HPostnotificationonmainthreadwaituntildonebmBm:94] ? 1 : 0;
ret += [BMNSNotificationCentere lPostnotificationonmainthreadwithnameobjectbmBm:29] ? 1 : 0;
ret += [BMNSNotificationCentere YPostnotificationonmainthreadwithnameobjectuserinfobmBm:83] ? 1 : 0;
ret += [BMNSNotificationCentere CPostnotificationonmainthreadwithnameobjectuserinfowaituntildonebmBm:37] ? 1 : 0;
ret += [BMNSNotificationCentere w_Yy_PostnotificationbmBm:75] ? 1 : 0;
ret += [BMNSNotificationCentere I_Yy_PostnotificationnamebmBm:3] ? 1 : 0;
ret += [BMUIDeviceD GSystemversionbmBm:62] ? 1 : 0;
ret += [BMUIDeviceD NIspadbmBm:59] ? 1 : 0;
ret += [BMUIDeviceD gIssimulatorbmBm:48] ? 1 : 0;
ret += [BMUIDeviceD BIsjailbrokenbmBm:82] ? 1 : 0;
ret += [BMUIDeviceD DCanmakephonecallsbmBm:70] ? 1 : 0;
ret += [BMUIDeviceD XIpaddresswithifanamebmBm:70] ? 1 : 0;
ret += [BMUIDeviceD IIpaddresswifibmBm:1] ? 1 : 0;
ret += [BMUIDeviceD eIpaddresscellbmBm:76] ? 1 : 0;
ret += [BMUIDeviceD yGetnetworktrafficbytesbmBm:26] ? 1 : 0;
ret += [BMUIDeviceD VMachinemodelbmBm:83] ? 1 : 0;
ret += [BMUIDeviceD dMachinemodelnamebmBm:1] ? 1 : 0;
ret += [BMUIDeviceD OSystemuptimebmBm:95] ? 1 : 0;
ret += [BMUIDeviceD RDiskspacebmBm:25] ? 1 : 0;
ret += [BMUIDeviceD cDiskspacefreebmBm:91] ? 1 : 0;
ret += [BMUIDeviceD lDiskspaceusedbmBm:39] ? 1 : 0;
ret += [BMUIDeviceD uMemorytotalbmBm:23] ? 1 : 0;
ret += [BMUIDeviceD OMemoryusedbmBm:16] ? 1 : 0;
ret += [BMUIDeviceD LMemoryfreebmBm:81] ? 1 : 0;
ret += [BMUIDeviceD nMemoryactivebmBm:99] ? 1 : 0;
ret += [BMUIDeviceD vMemoryinactivebmBm:59] ? 1 : 0;
ret += [BMUIDeviceD TMemorywiredbmBm:77] ? 1 : 0;
ret += [BMUIDeviceD IMemorypurgablebmBm:53] ? 1 : 0;
ret += [BMUIDeviceD UCpucountbmBm:44] ? 1 : 0;
ret += [BMUIDeviceD uCpuusagebmBm:63] ? 1 : 0;
ret += [BMUIDeviceD yCpuusageperprocessorbmBm:70] ? 1 : 0;
ret += [BMUIDeviceD SBmBm:61] ? 1 : 0;
ret += [BMDGActivityIndicatorLineScalePulseOutRapidAnimationL FSetupanimationinlayerVWithsizeRTintcolorBm:76] ? 1 : 0;
ret += [BMRACSignals tCreatesignalbmBm:26] ? 1 : 0;
ret += [BMRACSignals bErrorbmBm:19] ? 1 : 0;
ret += [BMRACSignals QNeverbmBm:0] ? 1 : 0;
ret += [BMRACSignals mStarteagerlywithschedulerblockbmBm:67] ? 1 : 0;
ret += [BMRACSignals EStartlazilywithschedulerblockbmBm:68] ? 1 : 0;
ret += [BMRACSignals uDescriptionbmBm:72] ? 1 : 0;
ret += [BMUIBarButtonItemf YSetactionblockBm:69] ? 1 : 0;
ret += [BMUIBarButtonItemf actionBlockBm:96] ? 1 : 0;
ret += [BMGPUImageMaskFilterZ EinitBm:34] ? 1 : 0;
ret += [BMGPUImageMaskFilterZ CRendertotexturewithverticesFTexturecoordinatesBm:82] ? 1 : 0;
ret += [BMAFNetworkActivityIndicatorManagerN QsharedManagerBm:24] ? 1 : 0;
ret += [BMAFNetworkActivityIndicatorManagerN CinitBm:64] ? 1 : 0;
ret += [BMAFNetworkActivityIndicatorManagerN SdeallocBm:69] ? 1 : 0;
ret += [BMAFNetworkActivityIndicatorManagerN hSetenabledBm:23] ? 1 : 0;
ret += [BMAFNetworkActivityIndicatorManagerN WSetnetworkingactivityactionwithblockBm:97] ? 1 : 0;
ret += [BMAFNetworkActivityIndicatorManagerN kisNetworkActivityOccurringBm:59] ? 1 : 0;
ret += [BMAFNetworkActivityIndicatorManagerN DSetnetworkactivityindicatorvisibleBm:94] ? 1 : 0;
ret += [BMAFNetworkActivityIndicatorManagerN DincrementActivityCountBm:98] ? 1 : 0;
ret += [BMAFNetworkActivityIndicatorManagerN rdecrementActivityCountBm:80] ? 1 : 0;
ret += [BMAFNetworkActivityIndicatorManagerN DNetworkrequestdidstartBm:83] ? 1 : 0;
ret += [BMAFNetworkActivityIndicatorManagerN UNetworkrequestdidfinishBm:14] ? 1 : 0;
ret += [BMAFNetworkActivityIndicatorManagerN cSetcurrentstateBm:40] ? 1 : 0;
ret += [BMAFNetworkActivityIndicatorManagerN DupdateCurrentStateForNetworkActivityChangeBm:41] ? 1 : 0;
ret += [BMAFNetworkActivityIndicatorManagerN tstartActivationDelayTimerBm:26] ? 1 : 0;
ret += [BMAFNetworkActivityIndicatorManagerN tactivationDelayTimerFiredBm:57] ? 1 : 0;
ret += [BMAFNetworkActivityIndicatorManagerN sstartCompletionDelayTimerBm:67] ? 1 : 0;
ret += [BMAFNetworkActivityIndicatorManagerN pcompletionDelayTimerFiredBm:78] ? 1 : 0;
ret += [BMAFNetworkActivityIndicatorManagerN ecancelActivationDelayTimerBm:33] ? 1 : 0;
ret += [BMAFNetworkActivityIndicatorManagerN bcancelCompletionDelayTimerBm:72] ? 1 : 0;
ret += [BMUIColori qColorwithhuesaturationlightnessalphabmBm:39] ? 1 : 0;
ret += [BMUIColori lColorwithcyanmagentayellowblackalphabmBm:16] ? 1 : 0;
ret += [BMUIColori gColorwithrgbbmBm:9] ? 1 : 0;
ret += [BMUIColori iColorwithrgbabmBm:52] ? 1 : 0;
ret += [BMUIColori yColorwithrgbalphabmBm:76] ? 1 : 0;
ret += [BMUIColori gRgbvaluebmBm:98] ? 1 : 0;
ret += [BMUIColori iRgbavaluebmBm:41] ? 1 : 0;
ret += [BMUIColori JColorwithhexstringbmBm:92] ? 1 : 0;
ret += [BMUIColori LHexstringbmBm:40] ? 1 : 0;
ret += [BMUIColori JHexstringwithalphabmBm:29] ? 1 : 0;
ret += [BMUIColori RHexstringwithalphabmBm:38] ? 1 : 0;
ret += [BMUIColori KColorbyaddcolorblendmodebmBm:63] ? 1 : 0;
ret += [BMUIColori jColorbychangehuesaturationbrightnessalphabmBm:10] ? 1 : 0;
ret += [BMUIColori LGethuesaturationlightnessalphabmBm:43] ? 1 : 0;
ret += [BMUIColori WGetcyanmagentayellowblackalphabmBm:94] ? 1 : 0;
ret += [BMUIColori cRedbmBm:88] ? 1 : 0;
ret += [BMUIColori DGreenbmBm:45] ? 1 : 0;
ret += [BMUIColori WBluebmBm:27] ? 1 : 0;
ret += [BMUIColori EAlphabmBm:44] ? 1 : 0;
ret += [BMUIColori vHuebmBm:30] ? 1 : 0;
ret += [BMUIColori bSaturationbmBm:1] ? 1 : 0;
ret += [BMUIColori yBrightnessbmBm:36] ? 1 : 0;
ret += [BMUIColori DColorspacemodelbmBm:47] ? 1 : 0;
ret += [BMUIColori ZColorspacestringbmBm:68] ? 1 : 0;
ret += [BMNSFileHandlee nrac_readInBackgroundBm:17] ? 1 : 0;
ret += [BMRACQueueSchedulerA ZInitwithnamequeuebmBm:86] ? 1 : 0;
ret += [BMRACQueueSchedulerA LDeallocbmBm:76] ? 1 : 0;
ret += [BMRACQueueSchedulerA iWalltimewithdatebmBm:66] ? 1 : 0;
ret += [BMRACQueueSchedulerA GSchedulebmBm:4] ? 1 : 0;
ret += [BMRACQueueSchedulerA yAfterschedulebmBm:23] ? 1 : 0;
ret += [BMRACQueueSchedulerA TAfterrepeatingeverywithleewayschedulebmBm:5] ? 1 : 0;
ret += [BMRACImmediateSchedulere YinitBm:7] ? 1 : 0;
ret += [BMRACImmediateSchedulere YScheduleBm:29] ? 1 : 0;
ret += [BMRACImmediateSchedulere dAfterLScheduleBm:93] ? 1 : 0;
ret += [BMRACImmediateSchedulere nAfterQRepeatingeveryqWithleewayMScheduleBm:19] ? 1 : 0;
ret += [BMRACImmediateSchedulere ISchedulerecursiveblockBm:2] ? 1 : 0;
ret += [BMGPUImageXYDerivativeFilterZ xinitBm:26] ? 1 : 0;
ret += [BMGPUImageTwoPassTextureSamplingFilterb DInitwithfirststagevertexshaderfromstringhFirststagefragmentshaderfromstringmSecondstagevertexshaderfromstringmSecondstagefragmentshaderfromstringBm:93] ? 1 : 0;
ret += [BMGPUImageTwoPassTextureSamplingFilterb mSetuniformsforprogramatindexBm:65] ? 1 : 0;
ret += [BMGPUImageTwoPassTextureSamplingFilterb nSetupfilterforsizeBm:27] ? 1 : 0;
ret += [BMGPUImageTwoPassTextureSamplingFilterb TSetverticaltexelspacingBm:75] ? 1 : 0;
ret += [BMGPUImageTwoPassTextureSamplingFilterb KSethorizontaltexelspacingBm:18] ? 1 : 0;
ret += [BMAFAutoPurgingImageCacheQ UinitBm:2] ? 1 : 0;
ret += [BMAFAutoPurgingImageCacheQ lInitwithmemorycapacityYPreferredmemorycapacityBm:13] ? 1 : 0;
ret += [BMAFAutoPurgingImageCacheQ OdeallocBm:48] ? 1 : 0;
ret += [BMAFAutoPurgingImageCacheQ ZmemoryUsageBm:46] ? 1 : 0;
ret += [BMAFAutoPurgingImageCacheQ eAddimageSWithidentifierBm:69] ? 1 : 0;
ret += [BMAFAutoPurgingImageCacheQ zRemoveimagewithidentifierBm:11] ? 1 : 0;
ret += [BMAFAutoPurgingImageCacheQ aremoveAllImagesBm:47] ? 1 : 0;
ret += [BMAFAutoPurgingImageCacheQ TImagewithidentifierBm:91] ? 1 : 0;
ret += [BMAFAutoPurgingImageCacheQ gAddimageVForrequestRWithadditionalidentifierBm:60] ? 1 : 0;
ret += [BMAFAutoPurgingImageCacheQ kRemoveimageforrequestEWithadditionalidentifierBm:0] ? 1 : 0;
ret += [BMAFAutoPurgingImageCacheQ zImageforrequestlWithadditionalidentifierBm:32] ? 1 : 0;
ret += [BMAFAutoPurgingImageCacheQ BImagecachekeyfromurlrequestaWithadditionalidentifierBm:28] ? 1 : 0;
ret += [BMAFAutoPurgingImageCacheQ MShouldcacheimageGForrequestHWithadditionalidentifierBm:70] ? 1 : 0;
ret += [BMUISliderO ORac_NewvaluechannelwithnilvalueBm:19] ? 1 : 0;
ret += [BMAFNetworkReachabilityManagerz vsharedManagerBm:76] ? 1 : 0;
ret += [BMAFNetworkReachabilityManagerz nManagerfordomainBm:90] ? 1 : 0;
ret += [BMAFNetworkReachabilityManagerz fManagerforaddressBm:51] ? 1 : 0;
ret += [BMAFNetworkReachabilityManagerz GmanagerBm:24] ? 1 : 0;
ret += [BMAFNetworkReachabilityManagerz TInitwithreachabilityBm:51] ? 1 : 0;
ret += [BMAFNetworkReachabilityManagerz xinitBm:7] ? 1 : 0;
ret += [BMAFNetworkReachabilityManagerz BdeallocBm:76] ? 1 : 0;
ret += [BMAFNetworkReachabilityManagerz cisReachableBm:70] ? 1 : 0;
ret += [BMAFNetworkReachabilityManagerz FisReachableViaWWANBm:47] ? 1 : 0;
ret += [BMAFNetworkReachabilityManagerz TisReachableViaWiFiBm:88] ? 1 : 0;
ret += [BMAFNetworkReachabilityManagerz PstartMonitoringBm:26] ? 1 : 0;
ret += [BMAFNetworkReachabilityManagerz PstopMonitoringBm:67] ? 1 : 0;
ret += [BMAFNetworkReachabilityManagerz HlocalizedNetworkReachabilityStatusStringBm:99] ? 1 : 0;
ret += [BMAFNetworkReachabilityManagerz DSetreachabilitystatuschangeblockBm:4] ? 1 : 0;
ret += [BMAFNetworkReachabilityManagerz iKeypathsforvaluesaffectingvalueforkeyBm:74] ? 1 : 0;
ret += [BMGPUImageHueBlendFilterS tinitBm:28] ? 1 : 0;
ret += [BMGPUImageSubtractBlendFilterV iinitBm:99] ? 1 : 0;
ret += [BMUIImageb skeyboardLeftImageBm:10] ? 1 : 0;
ret += [BMUIImageb akeyboardRightImageBm:63] ? 1 : 0;
ret += [BMUIImageb vkeyboardUpImageBm:20] ? 1 : 0;
ret += [BMUIImageb vkeyboardDownImageBm:32] ? 1 : 0;
ret += [BMUIImageb ckeyboardPreviousImageBm:28] ? 1 : 0;
ret += [BMUIImageb jkeyboardNextImageBm:35] ? 1 : 0;
ret += [BMIQKeyboardReturnKeyHandlerW aInitbmBm:67] ? 1 : 0;
ret += [BMIQKeyboardReturnKeyHandlerW JInitwithviewcontrollerbmBm:80] ? 1 : 0;
ret += [BMIQKeyboardReturnKeyHandlerW gTextfieldviewcachedinfobmBm:26] ? 1 : 0;
ret += [BMIQKeyboardReturnKeyHandlerW xAddresponderfromviewbmBm:53] ? 1 : 0;
ret += [BMIQKeyboardReturnKeyHandlerW JRemoveresponderfromviewbmBm:68] ? 1 : 0;
ret += [BMIQKeyboardReturnKeyHandlerW pRemovetextfieldviewbmBm:91] ? 1 : 0;
ret += [BMIQKeyboardReturnKeyHandlerW BAddtextfieldviewbmBm:52] ? 1 : 0;
ret += [BMIQKeyboardReturnKeyHandlerW CUpdatereturnkeytypeontextfieldbmBm:62] ? 1 : 0;
ret += [BMIQKeyboardReturnKeyHandlerW hGotonextresponderorresignbmBm:32] ? 1 : 0;
ret += [BMIQKeyboardReturnKeyHandlerW LTextfieldshouldbegineditingbmBm:58] ? 1 : 0;
ret += [BMIQKeyboardReturnKeyHandlerW zTextfielddidbegineditingbmBm:21] ? 1 : 0;
ret += [BMIQKeyboardReturnKeyHandlerW LTextfieldshouldendeditingbmBm:17] ? 1 : 0;
ret += [BMIQKeyboardReturnKeyHandlerW fTextfielddidendeditingbmBm:32] ? 1 : 0;
ret += [BMIQKeyboardReturnKeyHandlerW RTextfielddidendeditingreasonbmBm:34] ? 1 : 0;
ret += [BMIQKeyboardReturnKeyHandlerW wTextfieldshouldchangecharactersinrangereplacementstringbmBm:30] ? 1 : 0;
ret += [BMIQKeyboardReturnKeyHandlerW aTextfieldshouldclearbmBm:42] ? 1 : 0;
ret += [BMIQKeyboardReturnKeyHandlerW TTextfieldshouldreturnbmBm:39] ? 1 : 0;
ret += [BMIQKeyboardReturnKeyHandlerW pTextviewshouldbegineditingbmBm:64] ? 1 : 0;
ret += [BMIQKeyboardReturnKeyHandlerW ZTextviewshouldendeditingbmBm:25] ? 1 : 0;
ret += [BMIQKeyboardReturnKeyHandlerW HTextviewdidbegineditingbmBm:82] ? 1 : 0;
ret += [BMIQKeyboardReturnKeyHandlerW XTextviewdidendeditingbmBm:75] ? 1 : 0;
ret += [BMIQKeyboardReturnKeyHandlerW PTextviewshouldchangetextinrangereplacementtextbmBm:84] ? 1 : 0;
ret += [BMIQKeyboardReturnKeyHandlerW cTextviewdidchangebmBm:33] ? 1 : 0;
ret += [BMIQKeyboardReturnKeyHandlerW ZTextviewdidchangeselectionbmBm:7] ? 1 : 0;
ret += [BMIQKeyboardReturnKeyHandlerW nTextviewshouldinteractwithurlinrangeinteractionbmBm:6] ? 1 : 0;
ret += [BMIQKeyboardReturnKeyHandlerW vTextviewshouldinteractwithtextattachmentinrangeinteractionbmBm:57] ? 1 : 0;
ret += [BMIQKeyboardReturnKeyHandlerW aTextviewshouldinteractwithurlinrangebmBm:99] ? 1 : 0;
ret += [BMIQKeyboardReturnKeyHandlerW rTextviewshouldinteractwithtextattachmentinrangebmBm:84] ? 1 : 0;
ret += [BMIQKeyboardReturnKeyHandlerW bDeallocbmBm:18] ? 1 : 0;
ret += [BMDGActivityIndicatorRotatingSquaresAnimationq NSetupanimationinlayerwithsizetintcolorbmBm:29] ? 1 : 0;
ret += [BMGPUImageTiltShiftFilteri GinitBm:58] ? 1 : 0;
ret += [BMGPUImageTiltShiftFilteri XSetblurradiusinpixelsBm:95] ? 1 : 0;
ret += [BMGPUImageTiltShiftFilteri tblurRadiusInPixelsBm:54] ? 1 : 0;
ret += [BMGPUImageTiltShiftFilteri SSettopfocuslevelBm:32] ? 1 : 0;
ret += [BMGPUImageTiltShiftFilteri GSetbottomfocuslevelBm:28] ? 1 : 0;
ret += [BMGPUImageTiltShiftFilteri USetfocusfalloffrateBm:41] ? 1 : 0;
ret += [BMGPUImagePoissonBlendFiltere HinitBm:72] ? 1 : 0;
ret += [BMGPUImagePoissonBlendFiltere eSetmixBm:65] ? 1 : 0;
ret += [BMGPUImagePoissonBlendFiltere VRendertotexturewithverticeszTexturecoordinatesBm:2] ? 1 : 0;
ret += [BMGPUImageFilterGroupu BinitBm:37] ? 1 : 0;
ret += [BMGPUImageFilterGroupu kAddfilterBm:73] ? 1 : 0;
ret += [BMGPUImageFilterGroupu cFilteratindexBm:23] ? 1 : 0;
ret += [BMGPUImageFilterGroupu YfilterCountBm:99] ? 1 : 0;
ret += [BMGPUImageFilterGroupu quseNextFrameForImageCaptureBm:13] ? 1 : 0;
ret += [BMGPUImageFilterGroupu wnewCGImageFromCurrentlyProcessedOutputBm:41] ? 1 : 0;
ret += [BMGPUImageFilterGroupu wSettargettoignoreforupdatesBm:80] ? 1 : 0;
ret += [BMGPUImageFilterGroupu kAddtargetDAttexturelocationBm:12] ? 1 : 0;
ret += [BMGPUImageFilterGroupu DRemovetargetBm:40] ? 1 : 0;
ret += [BMGPUImageFilterGroupu aremoveAllTargetsBm:40] ? 1 : 0;
ret += [BMGPUImageFilterGroupu YtargetsBm:80] ? 1 : 0;
ret += [BMGPUImageFilterGroupu fSetframeprocessingcompletionblockBm:66] ? 1 : 0;
ret += [BMGPUImageFilterGroupu frameProcessingCompletionBlockBm:28] ? 1 : 0;
ret += [BMGPUImageFilterGroupu QNewframereadyattimeCAtindexBm:49] ? 1 : 0;
ret += [BMGPUImageFilterGroupu ISetinputframebuffermAtindexBm:89] ? 1 : 0;
ret += [BMGPUImageFilterGroupu dnextAvailableTextureIndexBm:6] ? 1 : 0;
ret += [BMGPUImageFilterGroupu RSetinputsizeLAtindexBm:10] ? 1 : 0;
ret += [BMGPUImageFilterGroupu XSetinputrotationsAtindexBm:56] ? 1 : 0;
ret += [BMGPUImageFilterGroupu OForceprocessingatsizeBm:99] ? 1 : 0;
ret += [BMGPUImageFilterGroupu fForceprocessingatsizerespectingaspectratioBm:62] ? 1 : 0;
ret += [BMGPUImageFilterGroupu vmaximumOutputSizeBm:65] ? 1 : 0;
ret += [BMGPUImageFilterGroupu qendProcessingBm:21] ? 1 : 0;
ret += [BMGPUImageFilterGroupu xwantsMonochromeInputBm:48] ? 1 : 0;
ret += [BMGPUImageFilterGroupu qSetcurrentlyreceivingmonochromeinputBm:80] ? 1 : 0;
ret += [BMGPUImageSphereRefractionFiltery linitBm:9] ? 1 : 0;
ret += [BMGPUImageSphereRefractionFiltery jInitwithfragmentshaderfromstringBm:32] ? 1 : 0;
ret += [BMGPUImageSphereRefractionFiltery sSetinputsizeHAtindexBm:13] ? 1 : 0;
ret += [BMGPUImageSphereRefractionFiltery yadjustAspectRatioBm:89] ? 1 : 0;
ret += [BMGPUImageSphereRefractionFiltery zSetinputrotationXAtindexBm:80] ? 1 : 0;
ret += [BMGPUImageSphereRefractionFiltery jForceprocessingatsizeBm:31] ? 1 : 0;
ret += [BMGPUImageSphereRefractionFiltery LSetradiusBm:34] ? 1 : 0;
ret += [BMGPUImageSphereRefractionFiltery FSetcenterBm:13] ? 1 : 0;
ret += [BMGPUImageSphereRefractionFiltery iSetaspectratioBm:73] ? 1 : 0;
ret += [BMGPUImageSphereRefractionFiltery QSetrefractiveindexBm:35] ? 1 : 0;
ret += [BMRACCompoundDisposableK FisDisposedBm:47] ? 1 : 0;
ret += [BMRACCompoundDisposableK VcompoundDisposableBm:29] ? 1 : 0;
ret += [BMRACCompoundDisposableK DCompounddisposablewithdisposablesBm:3] ? 1 : 0;
ret += [BMRACCompoundDisposableK winitBm:95] ? 1 : 0;
ret += [BMRACCompoundDisposableK pInitwithdisposablesBm:95] ? 1 : 0;
ret += [BMRACCompoundDisposableK TInitwithblockBm:1] ? 1 : 0;
ret += [BMRACCompoundDisposableK ydeallocBm:2] ? 1 : 0;
ret += [BMRACCompoundDisposableK dAdddisposableBm:87] ? 1 : 0;
ret += [BMRACCompoundDisposableK qRemovedisposableBm:6] ? 1 : 0;
ret += [BMRACCompoundDisposableK AdisposeBm:88] ? 1 : 0;
ret += [BMUIBezierPathG bBezierpathwithtextJFontBm:33] ? 1 : 0;
ret += [BMGPUImageEmbossFiltert einitBm:60] ? 1 : 0;
ret += [BMGPUImageEmbossFiltert uSetintensityBm:11] ? 1 : 0;
ret += [BMGPUImageLuminosityu dinitBm:76] ? 1 : 0;
ret += [BMGPUImageLuminosityu yinitializeSecondaryAttributesBm:61] ? 1 : 0;
ret += [BMGPUImageLuminosityu pExtractluminosityatframetimeBm:27] ? 1 : 0;
ret += [BMTOCropScrollViewM GTouchesbeganWWitheventBm:33] ? 1 : 0;
ret += [BMTOCropScrollViewM RTouchesendedQWitheventBm:82] ? 1 : 0;
ret += [BMTOCropScrollViewM HTouchescancelledNWitheventBm:59] ? 1 : 0;
ret += [BMIQBarButtonItemConfigurationr IInitwithbarbuttonsystemitemdActionBm:0] ? 1 : 0;
ret += [BMIQBarButtonItemConfigurationr TInitwithimageRActionBm:41] ? 1 : 0;
ret += [BMIQBarButtonItemConfigurationr MInitwithtitlesActionBm:57] ? 1 : 0;
ret += [BMTAAnimatedDotVieww ainitBm:18] ? 1 : 0;
ret += [BMTAAnimatedDotVieww FInitwithframeBm:20] ? 1 : 0;
ret += [BMTAAnimatedDotVieww iInitwithcoderBm:91] ? 1 : 0;
ret += [BMTAAnimatedDotVieww gSetdotcolorBm:64] ? 1 : 0;
ret += [BMTAAnimatedDotVieww JinitializationBm:93] ? 1 : 0;
ret += [BMTAAnimatedDotVieww YChangeactivitystateBm:16] ? 1 : 0;
ret += [BMTAAnimatedDotVieww CanimateToActiveStateBm:25] ? 1 : 0;
ret += [BMTAAnimatedDotVieww vanimateToDeactiveStateBm:78] ? 1 : 0;
ret += [BMUIImageL EKeyboardleftimagebmBm:96] ? 1 : 0;
ret += [BMUIImageL rKeyboardrightimagebmBm:47] ? 1 : 0;
ret += [BMUIImageL ZKeyboardupimagebmBm:67] ? 1 : 0;
ret += [BMUIImageL uKeyboarddownimagebmBm:23] ? 1 : 0;
ret += [BMUIImageL MKeyboardpreviousimagebmBm:38] ? 1 : 0;
ret += [BMUIImageL XKeyboardnextimagebmBm:60] ? 1 : 0;
ret += [BMGPUImageRGBOpeningFilterL RinitBm:37] ? 1 : 0;
ret += [BMGPUImageRGBOpeningFilterL CInitwithradiusBm:81] ? 1 : 0;
ret += [BMGPUImageVideoCameraj ainitBm:29] ? 1 : 0;
ret += [BMGPUImageVideoCameraj UInitwithsessionpresetZCamerapositionBm:4] ? 1 : 0;
ret += [BMGPUImageVideoCameraj vframebufferForOutputBm:48] ? 1 : 0;
ret += [BMGPUImageVideoCameraj EdeallocBm:97] ? 1 : 0;
ret += [BMGPUImageVideoCameraj AaddAudioInputsAndOutputsBm:4] ? 1 : 0;
ret += [BMGPUImageVideoCameraj aremoveAudioInputsAndOutputsBm:63] ? 1 : 0;
ret += [BMGPUImageVideoCameraj wremoveInputsAndOutputsBm:7] ? 1 : 0;
ret += [BMGPUImageVideoCameraj RAddtargetYAttexturelocationBm:86] ? 1 : 0;
ret += [BMGPUImageVideoCameraj LstartCameraCaptureBm:38] ? 1 : 0;
ret += [BMGPUImageVideoCameraj hstopCameraCaptureBm:0] ? 1 : 0;
ret += [BMGPUImageVideoCameraj MpauseCameraCaptureBm:11] ? 1 : 0;
ret += [BMGPUImageVideoCameraj XresumeCameraCaptureBm:79] ? 1 : 0;
ret += [BMGPUImageVideoCameraj ErotateCameraBm:33] ? 1 : 0;
ret += [BMGPUImageVideoCameraj icameraPositionBm:49] ? 1 : 0;
ret += [BMGPUImageVideoCameraj TisBackFacingCameraPresentBm:95] ? 1 : 0;
ret += [BMGPUImageVideoCameraj hisBackFacingCameraPresentBm:49] ? 1 : 0;
ret += [BMGPUImageVideoCameraj JisFrontFacingCameraPresentBm:83] ? 1 : 0;
ret += [BMGPUImageVideoCameraj QisFrontFacingCameraPresentBm:62] ? 1 : 0;
ret += [BMGPUImageVideoCameraj zSetcapturesessionpresetBm:5] ? 1 : 0;
ret += [BMGPUImageVideoCameraj gSetframerateBm:22] ? 1 : 0;
ret += [BMGPUImageVideoCameraj iframeRateBm:25] ? 1 : 0;
ret += [BMGPUImageVideoCameraj nvideoCaptureConnectionBm:58] ? 1 : 0;
ret += [BMGPUImageVideoCameraj CUpdatetargetsforvideocamerausingcachetextureatwidthcHeightLTimeBm:50] ? 1 : 0;
ret += [BMGPUImageVideoCameraj mProcessvideosamplebufferBm:36] ? 1 : 0;
ret += [BMGPUImageVideoCameraj VProcessaudiosamplebufferBm:5] ? 1 : 0;
ret += [BMGPUImageVideoCameraj HconvertYUVToRGBOutputBm:27] ? 1 : 0;
ret += [BMGPUImageVideoCameraj qaverageFrameDurationDuringCaptureBm:66] ? 1 : 0;
ret += [BMGPUImageVideoCameraj xresetBenchmarkAverageBm:1] ? 1 : 0;
ret += [BMGPUImageVideoCameraj JCaptureoutputTDidoutputsamplebufferxFromconnectionBm:65] ? 1 : 0;
ret += [BMGPUImageVideoCameraj ySetaudioencodingtargetBm:27] ? 1 : 0;
ret += [BMGPUImageVideoCameraj UupdateOrientationSendToTargetsBm:22] ? 1 : 0;
ret += [BMGPUImageVideoCameraj QSetoutputimageorientationBm:44] ? 1 : 0;
ret += [BMGPUImageVideoCameraj zSethorizontallymirrorfrontfacingcameraBm:85] ? 1 : 0;
ret += [BMGPUImageVideoCameraj ISethorizontallymirrorrearfacingcameraBm:4] ? 1 : 0;
ret += [BMGPUImageDarkenBlendFilterG FinitBm:56] ? 1 : 0;
ret += [BMMASViewAttributel lInitwithviewlayoutattributebmBm:81] ? 1 : 0;
ret += [BMMASViewAttributel cInitwithviewitemlayoutattributebmBm:67] ? 1 : 0;
ret += [BMMASViewAttributel YIssizeattributebmBm:96] ? 1 : 0;
ret += [BMMASViewAttributel DIsequalbmBm:12] ? 1 : 0;
ret += [BMMASViewAttributel PHashbmBm:4] ? 1 : 0;
ret += [BMUIViewd zkeyboardToolbarBm:32] ? 1 : 0;
ret += [BMUIViewd USetshouldhidetoolbarplaceholderBm:79] ? 1 : 0;
ret += [BMUIViewd MshouldHideToolbarPlaceholderBm:77] ? 1 : 0;
ret += [BMUIViewd iSettoolbarplaceholderBm:99] ? 1 : 0;
ret += [BMUIViewd ktoolbarPlaceholderBm:45] ? 1 : 0;
ret += [BMUIViewd YdrawingToolbarPlaceholderBm:62] ? 1 : 0;
ret += [BMUIViewd nflexibleBarButtonItemBm:81] ? 1 : 0;
ret += [BMUIViewd aAddkeyboardtoolbarwithtargetFTitletextrRightbarbuttonconfigurationpPreviousbarbuttonconfigurationJNextbarbuttonconfigurationBm:72] ? 1 : 0;
ret += [BMUIViewd aAddrightbuttononkeyboardwithtextjTargetWActionBm:25] ? 1 : 0;
ret += [BMUIViewd LAddrightbuttononkeyboardwithtextPTargetdActionwShouldshowplaceholderBm:60] ? 1 : 0;
ret += [BMUIViewd qAddrightbuttononkeyboardwithtextETargetRActionDTitletextBm:15] ? 1 : 0;
ret += [BMUIViewd OAddrightbuttononkeyboardwithimageSTargetQActionBm:40] ? 1 : 0;
ret += [BMUIViewd OAddrightbuttononkeyboardwithimageVTargetzActionuShouldshowplaceholderBm:18] ? 1 : 0;
ret += [BMUIViewd HAddrightbuttononkeyboardwithimageYTargetWActionRTitletextBm:86] ? 1 : 0;
ret += [BMUIViewd EAdddoneonkeyboardwithtargetUActionBm:25] ? 1 : 0;
ret += [BMUIViewd LAdddoneonkeyboardwithtargetwActionlShouldshowplaceholderBm:37] ? 1 : 0;
ret += [BMUIViewd vAdddoneonkeyboardwithtargetSActionBTitletextBm:84] ? 1 : 0;
ret += [BMUIViewd JAddleftrightonkeyboardwithtargetFLeftbuttontitleURightbuttontitlerLeftbuttonactioncRightbuttonactionBm:18] ? 1 : 0;
ret += [BMUIViewd kAddleftrightonkeyboardwithtargetnLeftbuttontitleGRightbuttontitlejLeftbuttonactiongRightbuttonactioneShouldshowplaceholderBm:18] ? 1 : 0;
ret += [BMUIViewd ZAddleftrightonkeyboardwithtargetyLeftbuttontitleaRightbuttontitledLeftbuttonactionpRightbuttonactioniTitletextBm:49] ? 1 : 0;
ret += [BMUIViewd JAddcanceldoneonkeyboardwithtargetOCancelactiongDoneactionBm:40] ? 1 : 0;
ret += [BMUIViewd BAddcanceldoneonkeyboardwithtargetiCancelactionJDoneactionVShouldshowplaceholderBm:95] ? 1 : 0;
ret += [BMUIViewd xAddcanceldoneonkeyboardwithtargetaCancelactionpDoneactionYTitletextBm:16] ? 1 : 0;
ret += [BMUIViewd PAddpreviousnextdoneonkeyboardwithtargetZPreviousactionaNextactionZDoneactionBm:82] ? 1 : 0;
ret += [BMUIViewd aAddpreviousnextdoneonkeyboardwithtargetePreviousactionANextactionmDoneactionPShouldshowplaceholderBm:50] ? 1 : 0;
ret += [BMUIViewd AAddpreviousnextdoneonkeyboardwithtargetbPreviousactionqNextactiondDoneactionETitletextBm:41] ? 1 : 0;
ret += [BMUIViewd KAddpreviousnextrightonkeyboardwithtargetNRightbuttonimagemPreviousactionINextactionERightbuttonactionBm:49] ? 1 : 0;
ret += [BMUIViewd rAddpreviousnextrightonkeyboardwithtargetsRightbuttonimageBPreviousactioneNextactionMRightbuttonactiontShouldshowplaceholderBm:99] ? 1 : 0;
ret += [BMUIViewd MAddpreviousnextrightonkeyboardwithtargetaRightbuttonimagegPreviousactionsNextactionjRightbuttonactiontTitletextBm:94] ? 1 : 0;
ret += [BMUIViewd rAddpreviousnextrightonkeyboardwithtargetHRightbuttontitlemPreviousactionQNextactionwRightbuttonactionBm:98] ? 1 : 0;
ret += [BMUIViewd xAddpreviousnextrightonkeyboardwithtargetbRightbuttontitleNPreviousactionTNextactionMRightbuttonactionBShouldshowplaceholderBm:36] ? 1 : 0;
ret += [BMUIViewd HAddpreviousnextrightonkeyboardwithtargetmRightbuttontitlehPreviousactioncNextactionXRightbuttonactionSTitletextBm:23] ? 1 : 0;
ret += [BMRACSubscriptingAssignmentTrampolineY SInitwithtargettNilvalueBm:18] ? 1 : 0;
ret += [BMRACSubscriptingAssignmentTrampolineY gSetobjectSForkeyedsubscriptBm:6] ? 1 : 0;
ret += [BMUITableViews qPreviousindexpathofindexpathbmBm:70] ? 1 : 0;
ret += [BMGPUImageBilateralFilterc vinitBm:41] ? 1 : 0;
ret += [BMGPUImageBilateralFilterc hSetdistancenormalizationfactorBm:49] ? 1 : 0;
ret += [BMDGActivityIndicatorViewZ XInitwithcoderBm:10] ? 1 : 0;
ret += [BMDGActivityIndicatorViewZ bInitwithtypeBm:61] ? 1 : 0;
ret += [BMDGActivityIndicatorViewZ wInitwithtypeQTintcolorBm:50] ? 1 : 0;
ret += [BMDGActivityIndicatorViewZ oInitwithtypeBTintcolorYSizeBm:29] ? 1 : 0;
ret += [BMDGActivityIndicatorViewZ KcommonInitBm:90] ? 1 : 0;
ret += [BMDGActivityIndicatorViewZ asetupAnimationBm:17] ? 1 : 0;
ret += [BMDGActivityIndicatorViewZ ZstartAnimatingBm:61] ? 1 : 0;
ret += [BMDGActivityIndicatorViewZ JstopAnimatingBm:26] ? 1 : 0;
ret += [BMDGActivityIndicatorViewZ kSettypeBm:63] ? 1 : 0;
ret += [BMDGActivityIndicatorViewZ WSetsizeBm:2] ? 1 : 0;
ret += [BMDGActivityIndicatorViewZ uSettintcolorBm:75] ? 1 : 0;
ret += [BMDGActivityIndicatorViewZ ZActivityindicatoranimationforanimationtypeBm:98] ? 1 : 0;
ret += [BMDGActivityIndicatorViewZ KlayoutSubviewsBm:74] ? 1 : 0;
ret += [BMDGActivityIndicatorViewZ KintrinsicContentSizeBm:57] ? 1 : 0;
ret += [BMNSDataa RRac_ReadcontentsofurlkOptionscSchedulerBm:25] ? 1 : 0;
ret += [BMGPUImageParallelCoordinateLineTransformFilterk UinitBm:20] ? 1 : 0;
ret += [BMGPUImageParallelCoordinateLineTransformFilterk TdeallocBm:56] ? 1 : 0;
ret += [BMGPUImageParallelCoordinateLineTransformFilterk EinitializeAttributesBm:89] ? 1 : 0;
ret += [BMGPUImageParallelCoordinateLineTransformFilterk sgenerateLineCoordinatesBm:99] ? 1 : 0;
ret += [BMGPUImageParallelCoordinateLineTransformFilterk vNewframereadyattimeBAtindexBm:74] ? 1 : 0;
ret += [BMGPUImageParallelCoordinateLineTransformFilterk JRendertotexturewithverticesjTexturecoordinatesBm:91] ? 1 : 0;
ret += [BMGPUImagePolkaDotFilterH pinitBm:95] ? 1 : 0;
ret += [BMGPUImagePolkaDotFilterH SSetdotscalingBm:39] ? 1 : 0;
ret += [BMAFImageDownloadReceipta BInitwithreceiptidrTaskBm:40] ? 1 : 0;
ret += [BMGPUImageMedianFilterW gInitbmBm:77] ? 1 : 0;
ret += [BMGPUImageGlassSphereFilterW aInitbmBm:3] ? 1 : 0;
ret += [BMGPUImageSobelEdgeDetectionFilterR qinitBm:23] ? 1 : 0;
ret += [BMGPUImageSobelEdgeDetectionFilterR QInitwithfragmentshaderfromstringBm:51] ? 1 : 0;
ret += [BMGPUImageSobelEdgeDetectionFilterR DSetupfilterforsizeBm:58] ? 1 : 0;
ret += [BMGPUImageSobelEdgeDetectionFilterR SSetuniformsforprogramatindexBm:53] ? 1 : 0;
ret += [BMGPUImageSobelEdgeDetectionFilterR NwantsMonochromeInputBm:26] ? 1 : 0;
ret += [BMGPUImageSobelEdgeDetectionFilterR uprovidesMonochromeOutputBm:98] ? 1 : 0;
ret += [BMGPUImageSobelEdgeDetectionFilterR sSettexelwidthBm:14] ? 1 : 0;
ret += [BMGPUImageSobelEdgeDetectionFilterR qSettexelheightBm:47] ? 1 : 0;
ret += [BMGPUImageSobelEdgeDetectionFilterR ESetedgestrengthBm:34] ? 1 : 0;
ret += [BMDGActivityIndicatorBallClipRotatePulseAnimationx qSetupanimationinlayerwithsizetintcolorbmBm:76] ? 1 : 0;
ret += [BMUIButtony xRac_CommandbmBm:80] ? 1 : 0;
ret += [BMUIButtony fSetrac_CommandbmBm:99] ? 1 : 0;
ret += [BMUIButtony zRac_HijackactionandtargetifneededbmBm:52] ? 1 : 0;
ret += [BMUIButtony kRac_CommandperformactionbmBm:48] ? 1 : 0;
ret += [BMAFSecurityPolicyZ CCertificatesinbundleBm:15] ? 1 : 0;
ret += [BMAFSecurityPolicyZ IdefaultPolicyBm:94] ? 1 : 0;
ret += [BMAFSecurityPolicyZ bPolicywithpinningmodeBm:96] ? 1 : 0;
ret += [BMAFSecurityPolicyZ JPolicywithpinningmodeYWithpinnedcertificatesBm:97] ? 1 : 0;
ret += [BMAFSecurityPolicyZ OinitBm:92] ? 1 : 0;
ret += [BMAFSecurityPolicyZ zSetpinnedcertificatesBm:47] ? 1 : 0;
ret += [BMAFSecurityPolicyZ oEvaluateservertrustdFordomainBm:87] ? 1 : 0;
ret += [BMAFSecurityPolicyZ EkeyPathsForValuesAffectingPinnedPublicKeysBm:4] ? 1 : 0;
ret += [BMAFSecurityPolicyZ GsupportsSecureCodingBm:27] ? 1 : 0;
ret += [BMAFSecurityPolicyZ uInitwithcoderBm:31] ? 1 : 0;
ret += [BMAFSecurityPolicyZ YEncodewithcoderBm:91] ? 1 : 0;
ret += [BMAFSecurityPolicyZ VCopywithzoneBm:27] ? 1 : 0;
ret += [BMRACFiveTupleU QinitBm:87] ? 1 : 0;
ret += [BMRACFiveTupleU HInitwithbackingarrayBm:60] ? 1 : 0;
ret += [BMRACFiveTupleU XPackVFirstNSecondgThirdHFourthBm:44] ? 1 : 0;
ret += [BMRACFiveTupleU IIsequalBm:77] ? 1 : 0;
ret += [BMRACSubscriptingAssignmentTrampolineo yInitwithtargetnilvaluebmBm:16] ? 1 : 0;
ret += [BMRACSubscriptingAssignmentTrampolineo rSetobjectforkeyedsubscriptbmBm:65] ? 1 : 0;
ret += [BMAFJSONRequestSerializerL IserializerBm:25] ? 1 : 0;
ret += [BMAFJSONRequestSerializerL xSerializerwithwritingoptionsBm:86] ? 1 : 0;
ret += [BMAFJSONRequestSerializerL PRequestbyserializingrequestCWithparameterskErrorBm:24] ? 1 : 0;
ret += [BMAFJSONRequestSerializerL eInitwithcoderBm:37] ? 1 : 0;
ret += [BMAFJSONRequestSerializerL YEncodewithcoderBm:13] ? 1 : 0;
ret += [BMAFJSONRequestSerializerL LCopywithzoneBm:74] ? 1 : 0;
ret += [BMSDCycleScrollViewY aInitwithframeBm:15] ? 1 : 0;
ret += [BMSDCycleScrollViewY pawakeFromNibBm:95] ? 1 : 0;
ret += [BMSDCycleScrollViewY rinitializationBm:54] ? 1 : 0;
ret += [BMSDCycleScrollViewY uCyclescrollviewwithframeyImagenamesgroupBm:65] ? 1 : 0;
ret += [BMSDCycleScrollViewY HCyclescrollviewwithframebShouldinfiniteloopDImagenamesgroupBm:66] ? 1 : 0;
ret += [BMSDCycleScrollViewY zCyclescrollviewwithframeiImageurlstringsgroupBm:66] ? 1 : 0;
ret += [BMSDCycleScrollViewY gCyclescrollviewwithframesDelegateDPlaceholderimageBm:87] ? 1 : 0;
ret += [BMSDCycleScrollViewY FsetupMainViewBm:93] ? 1 : 0;
ret += [BMSDCycleScrollViewY lSetdelegateBm:2] ? 1 : 0;
ret += [BMSDCycleScrollViewY WSetplaceholderimageBm:19] ? 1 : 0;
ret += [BMSDCycleScrollViewY USetpagecontroldotsizeBm:65] ? 1 : 0;
ret += [BMSDCycleScrollViewY ESetshowpagecontrolBm:78] ? 1 : 0;
ret += [BMSDCycleScrollViewY MSetcurrentpagedotcolorBm:71] ? 1 : 0;
ret += [BMSDCycleScrollViewY WSetpagedotcolorBm:2] ? 1 : 0;
ret += [BMSDCycleScrollViewY HSetcurrentpagedotimageBm:42] ? 1 : 0;
ret += [BMSDCycleScrollViewY nSetpagedotimageBm:28] ? 1 : 0;
ret += [BMSDCycleScrollViewY USetcustompagecontroldotimagejIscurrentpagedotBm:15] ? 1 : 0;
ret += [BMSDCycleScrollViewY JSetinfiniteloopBm:71] ? 1 : 0;
ret += [BMSDCycleScrollViewY GSetautoscrollBm:84] ? 1 : 0;
ret += [BMSDCycleScrollViewY GSetscrolldirectionBm:35] ? 1 : 0;
ret += [BMSDCycleScrollViewY aSetautoscrolltimeintervalBm:12] ? 1 : 0;
ret += [BMSDCycleScrollViewY JSetpagecontrolstyleBm:97] ? 1 : 0;
ret += [BMSDCycleScrollViewY CSetimagepathsgroupBm:69] ? 1 : 0;
ret += [BMSDCycleScrollViewY USetimageurlstringsgroupBm:40] ? 1 : 0;
ret += [BMSDCycleScrollViewY ZSetlocalizationimagenamesgroupBm:97] ? 1 : 0;
ret += [BMSDCycleScrollViewY PSettitlesgroupBm:75] ? 1 : 0;
ret += [BMSDCycleScrollViewY VdisableScrollGestureBm:74] ? 1 : 0;
ret += [BMSDCycleScrollViewY rsetupTimerBm:61] ? 1 : 0;
ret += [BMSDCycleScrollViewY yinvalidateTimerBm:66] ? 1 : 0;
ret += [BMSDCycleScrollViewY zsetupPageControlBm:67] ? 1 : 0;
ret += [BMSDCycleScrollViewY RautomaticScrollBm:86] ? 1 : 0;
ret += [BMSDCycleScrollViewY MScrolltoindexBm:60] ? 1 : 0;
ret += [BMSDCycleScrollViewY ocurrentIndexBm:73] ? 1 : 0;
ret += [BMSDCycleScrollViewY xPagecontrolindexwithcurrentcellindexBm:56] ? 1 : 0;
ret += [BMSDCycleScrollViewY oclearCacheBm:94] ? 1 : 0;
ret += [BMSDCycleScrollViewY XclearImagesCacheBm:88] ? 1 : 0;
ret += [BMSDCycleScrollViewY OlayoutSubviewsBm:7] ? 1 : 0;
ret += [BMSDCycleScrollViewY NWillmovetosuperviewBm:87] ? 1 : 0;
ret += [BMSDCycleScrollViewY edeallocBm:78] ? 1 : 0;
ret += [BMSDCycleScrollViewY RadjustWhenControllerViewWillApperaBm:65] ? 1 : 0;
ret += [BMSDCycleScrollViewY WCollectionviewyNumberofitemsinsectionBm:40] ? 1 : 0;
ret += [BMSDCycleScrollViewY RCollectionviewwCellforitematindexpathBm:9] ? 1 : 0;
ret += [BMSDCycleScrollViewY uCollectionviewDDidselectitematindexpathBm:3] ? 1 : 0;
ret += [BMSDCycleScrollViewY WScrollviewdidscrollBm:63] ? 1 : 0;
ret += [BMSDCycleScrollViewY xScrollviewwillbegindraggingBm:93] ? 1 : 0;
ret += [BMSDCycleScrollViewY eScrollviewdidenddraggingSWilldecelerateBm:13] ? 1 : 0;
ret += [BMSDCycleScrollViewY IScrollviewdidenddeceleratingBm:33] ? 1 : 0;
ret += [BMSDCycleScrollViewY oScrollviewdidendscrollinganimationBm:46] ? 1 : 0;
ret += [BMSDCycleScrollViewY dMakescrollviewscrolltoindexBm:47] ? 1 : 0;
ret += [BMNSObjectU Yrac_willDeallocSignalBm:35] ? 1 : 0;
ret += [BMNSObjectU Trac_deallocDisposableBm:21] ? 1 : 0;
ret += [BMTOCropViewv jInitwithimagebmBm:59] ? 1 : 0;
ret += [BMTOCropViewv dInitwithcroppingstyleimagebmBm:38] ? 1 : 0;
ret += [BMTOCropViewv sSetupbmBm:46] ? 1 : 0;
ret += [BMTOCropViewv qPerforminitialsetupbmBm:8] ? 1 : 0;
ret += [BMTOCropViewv pLayoutinitialimagebmBm:23] ? 1 : 0;
ret += [BMTOCropViewv cPrepareforrotationbmBm:83] ? 1 : 0;
ret += [BMTOCropViewv FPerformrelayoutforrotationbmBm:66] ? 1 : 0;
ret += [BMTOCropViewv YMatchforegroundtobackgroundbmBm:47] ? 1 : 0;
ret += [BMTOCropViewv dUpdatecropboxframewithgesturepointbmBm:57] ? 1 : 0;
ret += [BMTOCropViewv LResetlayouttodefaultanimatedbmBm:10] ? 1 : 0;
ret += [BMTOCropViewv UToggletranslucencyviewvisiblebmBm:99] ? 1 : 0;
ret += [BMTOCropViewv yUpdatetoimagecropframebmBm:9] ? 1 : 0;
ret += [BMTOCropViewv XGridpangesturerecognizedbmBm:85] ? 1 : 0;
ret += [BMTOCropViewv lLongpressgesturerecognizedbmBm:13] ? 1 : 0;
ret += [BMTOCropViewv LGesturerecognizershouldbeginbmBm:3] ? 1 : 0;
ret += [BMTOCropViewv iGesturerecognizershouldreceivetouchbmBm:48] ? 1 : 0;
ret += [BMTOCropViewv FStartresettimerbmBm:96] ? 1 : 0;
ret += [BMTOCropViewv zTimertriggeredbmBm:63] ? 1 : 0;
ret += [BMTOCropViewv aCancelresettimerbmBm:72] ? 1 : 0;
ret += [BMTOCropViewv DCropedgeforpointbmBm:23] ? 1 : 0;
ret += [BMTOCropViewv BViewforzoominginscrollviewbmBm:30] ? 1 : 0;
ret += [BMTOCropViewv ZScrollviewdidscrollbmBm:76] ? 1 : 0;
ret += [BMTOCropViewv zScrollviewwillbegindraggingbmBm:44] ? 1 : 0;
ret += [BMTOCropViewv iScrollviewwillbeginzoomingwithviewbmBm:19] ? 1 : 0;
ret += [BMTOCropViewv jScrollviewdidenddeceleratingbmBm:58] ? 1 : 0;
ret += [BMTOCropViewv kScrollviewdidendzoomingwithviewatscalebmBm:65] ? 1 : 0;
ret += [BMTOCropViewv PScrollviewdidzoombmBm:91] ? 1 : 0;
ret += [BMTOCropViewv WScrollviewdidenddraggingwilldeceleratebmBm:56] ? 1 : 0;
ret += [BMTOCropViewv cSetcropboxresizeenabledbmBm:85] ? 1 : 0;
ret += [BMTOCropViewv oSetcropboxframebmBm:26] ? 1 : 0;
ret += [BMTOCropViewv LSeteditingbmBm:23] ? 1 : 0;
ret += [BMTOCropViewv qSetsimplerendermodebmBm:89] ? 1 : 0;
ret += [BMTOCropViewv lCropboxaspectratioisportraitbmBm:24] ? 1 : 0;
ret += [BMTOCropViewv dImagecropframebmBm:65] ? 1 : 0;
ret += [BMTOCropViewv wSetimagecropframebmBm:54] ? 1 : 0;
ret += [BMTOCropViewv dSetcroppingviewshiddenbmBm:68] ? 1 : 0;
ret += [BMTOCropViewv bSetcroppingviewshiddenanimatedbmBm:98] ? 1 : 0;
ret += [BMTOCropViewv vSetbackgroundimageviewhiddenanimatedbmBm:19] ? 1 : 0;
ret += [BMTOCropViewv nSetgridoverlayhiddenbmBm:41] ? 1 : 0;
ret += [BMTOCropViewv dSetgridoverlayhiddenanimatedbmBm:39] ? 1 : 0;
ret += [BMTOCropViewv HImageviewframebmBm:16] ? 1 : 0;
ret += [BMTOCropViewv BSetcanberesetbmBm:69] ? 1 : 0;
ret += [BMTOCropViewv ZSetanglebmBm:92] ? 1 : 0;
ret += [BMTOCropViewv jStarteditingbmBm:97] ? 1 : 0;
ret += [BMTOCropViewv CSeteditingresetcropboxanimatedbmBm:86] ? 1 : 0;
ret += [BMTOCropViewv IMovecroppedcontenttocenteranimatedbmBm:9] ? 1 : 0;
ret += [BMTOCropViewv HSetsimplerendermodeanimatedbmBm:19] ? 1 : 0;
ret += [BMTOCropViewv lSetaspectratiobmBm:6] ? 1 : 0;
ret += [BMTOCropViewv KSetaspectratioanimatedbmBm:80] ? 1 : 0;
ret += [BMTOCropViewv QRotateimageninetydegreesanimatedbmBm:70] ? 1 : 0;
ret += [BMTOCropViewv PRotateimageninetydegreesanimatedclockwisebmBm:57] ? 1 : 0;
ret += [BMTOCropViewv rCapturestateforimagerotationbmBm:93] ? 1 : 0;
ret += [BMTOCropViewv JCheckforcanresetbmBm:10] ? 1 : 0;
ret += [BMTOCropViewv cContentboundsbmBm:24] ? 1 : 0;
ret += [BMTOCropViewv sImagesizebmBm:15] ? 1 : 0;
ret += [BMTOCropViewv KHasaspectratiobmBm:2] ? 1 : 0;
ret += [BMGPUImageSharpenFilterZ QinitBm:97] ? 1 : 0;
ret += [BMGPUImageSharpenFilterZ cSetupfilterforsizeBm:82] ? 1 : 0;
ret += [BMGPUImageSharpenFilterZ tSetsharpnessBm:81] ? 1 : 0;
ret += [BMAFHTTPRequestSerializerq sserializerBm:88] ? 1 : 0;
ret += [BMAFHTTPRequestSerializerq MinitBm:37] ? 1 : 0;
ret += [BMAFHTTPRequestSerializerq LdeallocBm:65] ? 1 : 0;
ret += [BMAFHTTPRequestSerializerq mSetallowscellularaccessBm:93] ? 1 : 0;
ret += [BMAFHTTPRequestSerializerq ASetcachepolicyBm:78] ? 1 : 0;
ret += [BMAFHTTPRequestSerializerq PSethttpshouldhandlecookiesBm:86] ? 1 : 0;
ret += [BMAFHTTPRequestSerializerq ASethttpshouldusepipeliningBm:28] ? 1 : 0;
ret += [BMAFHTTPRequestSerializerq cSetnetworkservicetypeBm:2] ? 1 : 0;
ret += [BMAFHTTPRequestSerializerq hSettimeoutintervalBm:52] ? 1 : 0;
ret += [BMAFHTTPRequestSerializerq fHTTPRequestHeadersBm:90] ? 1 : 0;
ret += [BMAFHTTPRequestSerializerq lSetvalueNForhttpheaderfieldBm:29] ? 1 : 0;
ret += [BMAFHTTPRequestSerializerq eValueforhttpheaderfieldBm:0] ? 1 : 0;
ret += [BMAFHTTPRequestSerializerq pSetauthorizationheaderfieldwithusernameRPasswordBm:91] ? 1 : 0;
ret += [BMAFHTTPRequestSerializerq UclearAuthorizationHeaderBm:43] ? 1 : 0;
ret += [BMAFHTTPRequestSerializerq dSetquerystringserializationwithstyleBm:51] ? 1 : 0;
ret += [BMAFHTTPRequestSerializerq USetquerystringserializationwithblockBm:3] ? 1 : 0;
ret += [BMAFHTTPRequestSerializerq mRequestwithmethodfUrlstringVParametersiErrorBm:60] ? 1 : 0;
ret += [BMAFHTTPRequestSerializerq OMultipartformrequestwithmethodFUrlstringpParametersEConstructingbodywithblockJErrorBm:57] ? 1 : 0;
ret += [BMAFHTTPRequestSerializerq IRequestwithmultipartformrequestJWritingstreamcontentstofileHCompletionhandlerBm:53] ? 1 : 0;
ret += [BMAFHTTPRequestSerializerq fRequestbyserializingrequestgWithparameterstErrorBm:18] ? 1 : 0;
ret += [BMAFHTTPRequestSerializerq GAutomaticallynotifiesobserversforkeyBm:68] ? 1 : 0;
ret += [BMAFHTTPRequestSerializerq RObservevalueforkeypathyOfobjectBChangesContextBm:25] ? 1 : 0;
ret += [BMAFHTTPRequestSerializerq osupportsSecureCodingBm:47] ? 1 : 0;
ret += [BMAFHTTPRequestSerializerq dInitwithcoderBm:5] ? 1 : 0;
ret += [BMAFHTTPRequestSerializerq CEncodewithcoderBm:63] ? 1 : 0;
ret += [BMAFHTTPRequestSerializerq eCopywithzoneBm:51] ? 1 : 0;
ret += [BMGPUImageLinearBurnBlendFilterx ainitBm:48] ? 1 : 0;
ret += [BMUIImageViewP ksharedImageDownloaderBm:59] ? 1 : 0;
ret += [BMUIImageViewP rSetsharedimagedownloaderBm:42] ? 1 : 0;
ret += [BMUIImageViewP uSetimagewithurlBm:26] ? 1 : 0;
ret += [BMUIImageViewP ASetimagewithurlMPlaceholderimageBm:54] ? 1 : 0;
ret += [BMUIImageViewP hSetimagewithurlrequestiPlaceholderimageVSuccessEFailureBm:38] ? 1 : 0;
ret += [BMUIImageViewP NcancelImageDownloadTaskBm:47] ? 1 : 0;
ret += [BMUIImageViewP MclearActiveDownloadInformationBm:97] ? 1 : 0;
ret += [BMUIImageViewP cIsactivetaskurlequaltourlrequestBm:14] ? 1 : 0;
ret += [BMGPUImageSingleComponentGaussianBlurFilterj wVertexshaderforoptimizedblurofradiushSigmaBm:39] ? 1 : 0;
ret += [BMGPUImageSingleComponentGaussianBlurFilterj vFragmentshaderforoptimizedblurofradiusHSigmaBm:53] ? 1 : 0;
ret += [BMGPUImageSourceOverBlendFilteri yinitBm:49] ? 1 : 0;
ret += [BMNSValueO xrac_descriptionBm:44] ? 1 : 0;
ret += [BMUIViewX YViewcontainingcontrollerbmBm:45] ? 1 : 0;
ret += [BMUIViewX CTopmostcontrollerbmBm:62] ? 1 : 0;
ret += [BMUIViewX wParentcontainerviewcontrollerbmBm:70] ? 1 : 0;
ret += [BMUIViewX PSuperviewofclasstypebmBm:70] ? 1 : 0;
ret += [BMUIViewX OSuperviewofclasstypebelowviewbmBm:77] ? 1 : 0;
ret += [BMUIViewX S_IqcanbecomefirstresponderbmBm:65] ? 1 : 0;
ret += [BMUIViewX ARespondersiblingsbmBm:7] ? 1 : 0;
ret += [BMUIViewX eDeepresponderviewsbmBm:71] ? 1 : 0;
ret += [BMUIViewX UConverttransformtoviewbmBm:48] ? 1 : 0;
ret += [BMUIViewX UDepthbmBm:77] ? 1 : 0;
ret += [BMUIViewX TSubhierarchybmBm:98] ? 1 : 0;
ret += [BMUIViewX zSuperhierarchybmBm:74] ? 1 : 0;
ret += [BMUIViewX ADebughierarchybmBm:76] ? 1 : 0;
ret += [BMUIViewX sTextfieldsearchbarbmBm:57] ? 1 : 0;
ret += [BMUIViewX xIsalertviewtextfieldbmBm:68] ? 1 : 0;
ret += [BMNSStringH dRac_DescriptionbmBm:14] ? 1 : 0;
ret += [BMDGActivityIndicatorRotatingSquaresAnimationc jSetupanimationinlayerLWithsizeMTintcolorBm:78] ? 1 : 0;
ret += [BMDGActivityIndicatorLineScalePulseOutAnimationr pSetupanimationinlayerGWithsizeuTintcolorBm:84] ? 1 : 0;
ret += [BMRACOneTupleq HinitBm:53] ? 1 : 0;
ret += [BMRACOneTupleq NInitwithbackingarrayBm:25] ? 1 : 0;
ret += [BMRACOneTupleq yTuplebyaddingobjectBm:37] ? 1 : 0;
ret += [BMRACOneTupleq xPackBm:80] ? 1 : 0;
ret += [BMRACOneTupleq DIsequalBm:23] ? 1 : 0;
ret += [BMYYClassInfoa hInitwithclassBm:96] ? 1 : 0;
ret += [BMYYClassInfoa r_updateBm:89] ? 1 : 0;
ret += [BMYYClassInfoa zsetNeedUpdateBm:36] ? 1 : 0;
ret += [BMYYClassInfoa aneedUpdateBm:87] ? 1 : 0;
ret += [BMYYClassInfoa YClassinfowithclassBm:49] ? 1 : 0;
ret += [BMYYClassInfoa EClassinfowithclassnameBm:97] ? 1 : 0;
ret += [BMMAS_VIEWK Hmas_installedConstraintsBm:76] ? 1 : 0;
ret += [BMSDTransparentPieProgressViewi PInitwithframeBm:47] ? 1 : 0;
ret += [BMSDTransparentPieProgressViewi WDrawrectBm:17] ? 1 : 0;
ret += [BMGPUImageTextureInputN WInitwithtextureCSizeBm:59] ? 1 : 0;
ret += [BMGPUImageTextureInputN mProcesstexturewithframetimeBm:53] ? 1 : 0;
ret += [BMGPUImageCrosshairGeneratorL AinitBm:29] ? 1 : 0;
ret += [BMGPUImageCrosshairGeneratorL YRendercrosshairsfromarrayLCountUFrametimeBm:2] ? 1 : 0;
ret += [BMGPUImageCrosshairGeneratorL pRendertotexturewithverticesXTexturecoordinatesBm:10] ? 1 : 0;
ret += [BMGPUImageCrosshairGeneratorL fSetcrosshairwidthBm:26] ? 1 : 0;
ret += [BMGPUImageCrosshairGeneratorL PSetcrosshaircolorredxGreennBlueBm:42] ? 1 : 0;
ret += [BMGPUImageColorDodgeBlendFilterS cinitBm:2] ? 1 : 0;
ret += [BMNSUserDefaultsU gRac_ChannelterminalforkeybmBm:97] ? 1 : 0;
ret += [BMGPUImageWeakPixelInclusionFilterW GInitbmBm:78] ? 1 : 0;
ret += [BMRACStreamf oFlattenmapBm:37] ? 1 : 0;
ret += [BMRACStreamf jflattenBm:84] ? 1 : 0;
ret += [BMRACStreamf nMapBm:35] ? 1 : 0;
ret += [BMRACStreamf fMapreplaceBm:84] ? 1 : 0;
ret += [BMRACStreamf uCombinepreviouswithstartsReduceBm:99] ? 1 : 0;
ret += [BMRACStreamf LFilterBm:84] ? 1 : 0;
ret += [BMRACStreamf OIgnoreBm:92] ? 1 : 0;
ret += [BMRACStreamf vReduceeachBm:45] ? 1 : 0;
ret += [BMRACStreamf tStartwithBm:84] ? 1 : 0;
ret += [BMRACStreamf pSkipBm:69] ? 1 : 0;
ret += [BMRACStreamf bTakeBm:21] ? 1 : 0;
ret += [BMRACStreamf JJoinaBlockBm:22] ? 1 : 0;
ret += [BMRACStreamf qZipBm:35] ? 1 : 0;
ret += [BMRACStreamf IZipwReduceBm:87] ? 1 : 0;
ret += [BMRACStreamf UConcatBm:3] ? 1 : 0;
ret += [BMRACStreamf UScanwithstartfReduceBm:82] ? 1 : 0;
ret += [BMRACStreamf GScanwithstartoReducewithindexBm:49] ? 1 : 0;
ret += [BMRACStreamf CTakeuntilblockBm:3] ? 1 : 0;
ret += [BMRACStreamf nTakewhileblockBm:62] ? 1 : 0;
ret += [BMRACStreamf aSkipuntilblockBm:25] ? 1 : 0;
ret += [BMRACStreamf ySkipwhileblockBm:77] ? 1 : 0;
ret += [BMRACStreamf GdistinctUntilChangedBm:62] ? 1 : 0;
ret += [BMGPUImageSwirlFilterq GinitBm:98] ? 1 : 0;
ret += [BMGPUImageSwirlFilterq YSetinputrotationqAtindexBm:24] ? 1 : 0;
ret += [BMGPUImageSwirlFilterq qSetradiusBm:63] ? 1 : 0;
ret += [BMGPUImageSwirlFilterq fSetangleBm:69] ? 1 : 0;
ret += [BMGPUImageSwirlFilterq XSetcenterBm:2] ? 1 : 0;
ret += [BMGPUImageClosingFilterS einitBm:67] ? 1 : 0;
ret += [BMGPUImageClosingFilterS RInitwithradiusBm:82] ? 1 : 0;
ret += [BMGPUImageClosingFilterS ASetverticaltexelspacingBm:13] ? 1 : 0;
ret += [BMGPUImageClosingFilterS pSethorizontaltexelspacingBm:29] ? 1 : 0;
ret += [BMWKWebViewM Eaf_URLSessionTaskBm:80] ? 1 : 0;
ret += [BMWKWebViewM FAf_SeturlsessiontaskBm:72] ? 1 : 0;
ret += [BMUIStepperG qRac_NewvaluechannelwithnilvalueBm:90] ? 1 : 0;
ret += [BMDGActivityIndicatorBallScaleRippleAnimationh ASetupanimationinlayerBWithsizeQTintcolorBm:77] ? 1 : 0;
ret += [BMMASCompositeConstraintZ EInitwithchildrenBm:29] ? 1 : 0;
ret += [BMMASCompositeConstraintZ YConstraintjShouldbereplacedwithconstraintBm:35] ? 1 : 0;
ret += [BMMASCompositeConstraintZ kConstraintiAddconstraintwithlayoutattributeBm:20] ? 1 : 0;
ret += [BMMASCompositeConstraintZ multipliedByBm:82] ? 1 : 0;
ret += [BMMASCompositeConstraintZ dividedByBm:17] ? 1 : 0;
ret += [BMMASCompositeConstraintZ priorityBm:14] ? 1 : 0;
ret += [BMMASCompositeConstraintZ equalToWithRelationBm:77] ? 1 : 0;
ret += [BMMASCompositeConstraintZ SAddconstraintwithlayoutattributeBm:83] ? 1 : 0;
ret += [BMMASCompositeConstraintZ fanimatorBm:19] ? 1 : 0;
ret += [BMMASCompositeConstraintZ keyBm:55] ? 1 : 0;
ret += [BMMASCompositeConstraintZ eSetinsetsBm:2] ? 1 : 0;
ret += [BMMASCompositeConstraintZ GSetinsetBm:9] ? 1 : 0;
ret += [BMMASCompositeConstraintZ eSetoffsetBm:82] ? 1 : 0;
ret += [BMMASCompositeConstraintZ VSetsizeoffsetBm:0] ? 1 : 0;
ret += [BMMASCompositeConstraintZ WSetcenteroffsetBm:54] ? 1 : 0;
ret += [BMMASCompositeConstraintZ RactivateBm:36] ? 1 : 0;
ret += [BMMASCompositeConstraintZ hdeactivateBm:22] ? 1 : 0;
ret += [BMMASCompositeConstraintZ FinstallBm:13] ? 1 : 0;
ret += [BMMASCompositeConstraintZ uuninstallBm:16] ? 1 : 0;
ret += [BMGPUImageOutputs kinitBm:42] ? 1 : 0;
ret += [BMGPUImageOutputs qdeallocBm:11] ? 1 : 0;
ret += [BMGPUImageOutputs PSetinputframebufferfortargetPAtindexBm:44] ? 1 : 0;
ret += [BMGPUImageOutputs FframebufferForOutputBm:20] ? 1 : 0;
ret += [BMGPUImageOutputs DremoveOutputFramebufferBm:46] ? 1 : 0;
ret += [BMGPUImageOutputs ZnotifyTargetsAboutNewOutputTextureBm:52] ? 1 : 0;
ret += [BMGPUImageOutputs dtargetsBm:0] ? 1 : 0;
ret += [BMGPUImageOutputs NAddtargetBm:43] ? 1 : 0;
ret += [BMGPUImageOutputs WAddtargetIAttexturelocationBm:80] ? 1 : 0;
ret += [BMGPUImageOutputs lRemovetargetBm:30] ? 1 : 0;
ret += [BMGPUImageOutputs premoveAllTargetsBm:29] ? 1 : 0;
ret += [BMGPUImageOutputs HForceprocessingatsizeBm:68] ? 1 : 0;
ret += [BMGPUImageOutputs JForceprocessingatsizerespectingaspectratioBm:90] ? 1 : 0;
ret += [BMGPUImageOutputs QuseNextFrameForImageCaptureBm:47] ? 1 : 0;
ret += [BMGPUImageOutputs ZnewCGImageFromCurrentlyProcessedOutputBm:80] ? 1 : 0;
ret += [BMGPUImageOutputs YNewcgimagebyfilteringcgimageBm:97] ? 1 : 0;
ret += [BMGPUImageOutputs HprovidesMonochromeOutputBm:71] ? 1 : 0;
ret += [BMGPUImageOutputs NimageFromCurrentFramebufferBm:2] ? 1 : 0;
ret += [BMGPUImageOutputs qImagefromcurrentframebufferwithorientationBm:65] ? 1 : 0;
ret += [BMGPUImageOutputs RImagebyfilteringimageBm:85] ? 1 : 0;
ret += [BMGPUImageOutputs PNewcgimagebyfilteringimageBm:8] ? 1 : 0;
ret += [BMGPUImageOutputs HimageFromCurrentFramebufferBm:95] ? 1 : 0;
ret += [BMGPUImageOutputs JImagefromcurrentframebufferwithorientationBm:34] ? 1 : 0;
ret += [BMGPUImageOutputs RImagebyfilteringimageBm:35] ? 1 : 0;
ret += [BMGPUImageOutputs pNewcgimagebyfilteringimageBm:75] ? 1 : 0;
ret += [BMGPUImageOutputs CSetaudioencodingtargetBm:81] ? 1 : 0;
ret += [BMGPUImageOutputs fSetoutputtextureoptionsBm:0] ? 1 : 0;
ret += [BMNSEnumeratorQ Wrac_sequenceBm:28] ? 1 : 0;
ret += [BMGPUImagePolkaDotFilterP dInitbmBm:57] ? 1 : 0;
ret += [BMGPUImagePolkaDotFilterP lSetdotscalingbmBm:3] ? 1 : 0;
ret += [BMDGActivityIndicatorBallClipRotateMultipleAnimationk cSetupanimationinlayerwithsizetintcolorbmBm:74] ? 1 : 0;
ret += [BMDGActivityIndicatorBallClipRotateMultipleAnimationk fCreateanimationindurationwithtimingfunctionreversebmBm:4] ? 1 : 0;
ret += [BMWKWebViewi hSessionmanagerbmBm:6] ? 1 : 0;
ret += [BMWKWebViewi qSetsessionmanagerbmBm:28] ? 1 : 0;
ret += [BMWKWebViewi jResponseserializerbmBm:17] ? 1 : 0;
ret += [BMWKWebViewi hSetresponseserializerbmBm:73] ? 1 : 0;
ret += [BMWKWebViewi rLoadrequestnavigationprogresssuccessfailurebmBm:77] ? 1 : 0;
ret += [BMWKWebViewi oLoadrequestnavigationmimetypetextencodingnameprogresssuccessfailurebmBm:9] ? 1 : 0;
ret += [BMGPUImageLuminanceRangeFilterg VInitbmBm:20] ? 1 : 0;
ret += [BMGPUImageLuminanceRangeFilterg wSetrangereductionfactorbmBm:56] ? 1 : 0;
ret += [BMRACDynamicSignals ACreatesignalBm:38] ? 1 : 0;
ret += [BMRACDynamicSignals uSubscribeBm:12] ? 1 : 0;
ret += [BMNSIndexSetz jRac_SequencebmBm:53] ? 1 : 0;
ret += [BMGPUImageColorBurnBlendFilterV ainitBm:77] ? 1 : 0;
ret += [BMUIColorU zIntegervaluefromhexstringBm:55] ? 1 : 0;
ret += [BMUIColorU wColorwithhexstringBm:14] ? 1 : 0;
ret += [BMUIColorU UColorwithhexstringgAlphaBm:49] ? 1 : 0;
ret += [BMUIColorU VColorwithgrayscaleBm:75] ? 1 : 0;
ret += [BMGPUImageLookupFilterp finitBm:49] ? 1 : 0;
ret += [BMGPUImageLookupFilterp jSetintensityBm:67] ? 1 : 0;
ret += [BMNSOrderedSetl Wrac_sequenceBm:27] ? 1 : 0;
ret += [BMRACPassthroughSubscriberW AInitwithsubscriberWSignalCDisposableBm:60] ? 1 : 0;
ret += [BMRACPassthroughSubscriberW pSendnextBm:64] ? 1 : 0;
ret += [BMRACPassthroughSubscriberW hSenderrorBm:51] ? 1 : 0;
ret += [BMRACPassthroughSubscriberW ssendCompletedBm:90] ? 1 : 0;
ret += [BMRACPassthroughSubscriberW SDidsubscribewithdisposableBm:42] ? 1 : 0;
ret += [BMGPUImageDifferenceBlendFiltery LinitBm:33] ? 1 : 0;
ret += [BMRACSignalO AlogAllBm:14] ? 1 : 0;
ret += [BMRACSignalO clogNextBm:98] ? 1 : 0;
ret += [BMRACSignalO DlogErrorBm:3] ? 1 : 0;
ret += [BMRACSignalO llogCompletedBm:4] ? 1 : 0;
ret += [BMUIDatePickerO LRac_NewdatechannelwithnilvalueBm:11] ? 1 : 0;
ret += [BMRACEmptySequenceC OemptyBm:75] ? 1 : 0;
ret += [BMRACEmptySequenceC cheadBm:50] ? 1 : 0;
ret += [BMRACEmptySequenceC TtailBm:59] ? 1 : 0;
ret += [BMRACEmptySequenceC RBindQPassingthroughvaluesfromsequenceBm:30] ? 1 : 0;
ret += [BMRACEmptySequenceC tclassForCoderBm:98] ? 1 : 0;
ret += [BMRACEmptySequenceC EInitwithcoderBm:39] ? 1 : 0;
ret += [BMRACEmptySequenceC BEncodewithcoderBm:54] ? 1 : 0;
ret += [BMRACEmptySequenceC YdescriptionBm:14] ? 1 : 0;
ret += [BMRACEmptySequenceC JhashBm:67] ? 1 : 0;
ret += [BMRACEmptySequenceC wIsequalBm:47] ? 1 : 0;
ret += [BMGPUImageRawDataInputg DInitwithbytessizebmBm:2] ? 1 : 0;
ret += [BMGPUImageRawDataInputg QInitwithbytessizepixelformatbmBm:0] ? 1 : 0;
ret += [BMGPUImageRawDataInputg pInitwithbytessizepixelformattypebmBm:18] ? 1 : 0;
ret += [BMGPUImageRawDataInputg oDeallocbmBm:2] ? 1 : 0;
ret += [BMGPUImageRawDataInputg EUploadbytesbmBm:20] ? 1 : 0;
ret += [BMGPUImageRawDataInputg bUpdatedatafrombytessizebmBm:78] ? 1 : 0;
ret += [BMGPUImageRawDataInputg OProcessdatabmBm:31] ? 1 : 0;
ret += [BMGPUImageRawDataInputg BProcessdatafortimestampbmBm:69] ? 1 : 0;
ret += [BMGPUImageRawDataInputg HOutputimagesizebmBm:7] ? 1 : 0;
ret += [BMGPUImageGaussianBlurPositionFilterX xInitwithfirststagevertexshaderfromstringTFirststagefragmentshaderfromstringdSecondstagevertexshaderfromstringCSecondstagefragmentshaderfromstringBm:47] ? 1 : 0;
ret += [BMGPUImageGaussianBlurPositionFilterX EinitBm:87] ? 1 : 0;
ret += [BMGPUImageGaussianBlurPositionFilterX CadjustAspectRatioBm:0] ? 1 : 0;
ret += [BMGPUImageGaussianBlurPositionFilterX ZForceprocessingatsizeBm:18] ? 1 : 0;
ret += [BMGPUImageGaussianBlurPositionFilterX YSetinputsizeUAtindexBm:7] ? 1 : 0;
ret += [BMGPUImageGaussianBlurPositionFilterX uSetinputrotationPAtindexBm:56] ? 1 : 0;
ret += [BMGPUImageGaussianBlurPositionFilterX aSetblursizeBm:14] ? 1 : 0;
ret += [BMGPUImageGaussianBlurPositionFilterX OSetblurcenterBm:4] ? 1 : 0;
ret += [BMGPUImageGaussianBlurPositionFilterX FSetblurradiusBm:48] ? 1 : 0;
ret += [BMGPUImageGaussianBlurPositionFilterX ASetaspectratioBm:21] ? 1 : 0;
ret += [BMNSMutableArrayq FArraywithplistdataBm:36] ? 1 : 0;
ret += [BMNSMutableArrayq bArraywithpliststringBm:5] ? 1 : 0;
ret += [BMNSMutableArrayq wremoveFirstObjectBm:19] ? 1 : 0;
ret += [BMNSMutableArrayq yremoveLastObjectBm:34] ? 1 : 0;
ret += [BMNSMutableArrayq EpopFirstObjectBm:28] ? 1 : 0;
ret += [BMNSMutableArrayq tpopLastObjectBm:2] ? 1 : 0;
ret += [BMNSMutableArrayq tAppendobjectBm:90] ? 1 : 0;
ret += [BMNSMutableArrayq GPrependobjectBm:28] ? 1 : 0;
ret += [BMNSMutableArrayq fAppendobjectsBm:1] ? 1 : 0;
ret += [BMNSMutableArrayq SPrependobjectsBm:71] ? 1 : 0;
ret += [BMNSMutableArrayq pInsertobjectsnAtindexBm:7] ? 1 : 0;
ret += [BMNSMutableArrayq PreverseBm:40] ? 1 : 0;
ret += [BMNSMutableArrayq OshuffleBm:51] ? 1 : 0;
ret += [BMRACTupleUnpackingTrampolineV hTrampolinebmBm:64] ? 1 : 0;
ret += [BMRACTupleUnpackingTrampolineV kSetobjectforkeyedsubscriptbmBm:69] ? 1 : 0;
ret += [BMYWebDownManagerp ainitBm:53] ? 1 : 0;
ret += [BMYWebDownManagerp WDownmanagerfinishblockhandleBm:68] ? 1 : 0;
ret += [BMYWebDownManagerp rDownmanagerprogressblockhandleBm:66] ? 1 : 0;
ret += [BMYWebDownManagerp DStartdownimagepathBm:62] ? 1 : 0;
ret += [BMYWebDownManagerp ZStartdownimageurlBm:89] ? 1 : 0;
ret += [BMYWebDownManagerp GpauseDownBm:46] ? 1 : 0;
ret += [BMYWebDownManagerp BresumeDownBm:20] ? 1 : 0;
ret += [BMYWebDownManagerp NUrlsessionoDownloadtaskFDidfinishdownloadingtourlBm:81] ? 1 : 0;
ret += [BMYWebDownManagerp yUrlsessionXDownloadtaskrDidwritedataATotalbyteswrittenXTotalbytesexpectedtowriteBm:72] ? 1 : 0;
ret += [BMYWebDownManagerp BdocumentPathBm:78] ? 1 : 0;
ret += [BMYWebDownManagerp GimageNameBm:97] ? 1 : 0;
ret += [BMTOCropViewControllerTransitioningR tTransitiondurationBm:43] ? 1 : 0;
ret += [BMTOCropViewControllerTransitioningR wAnimatetransitionBm:73] ? 1 : 0;
ret += [BMTOCropViewControllerTransitioningR JresetBm:63] ? 1 : 0;
ret += [BMGPUImageXYDerivativeFilterf ZInitbmBm:1] ? 1 : 0;
ret += [BMGPUImageToonFilteri jinitBm:13] ? 1 : 0;
ret += [BMGPUImageToonFilteri iSetthresholdBm:86] ? 1 : 0;
ret += [BMGPUImageToonFilteri kSetquantizationlevelsBm:1] ? 1 : 0;
ret += [BMGPUImageLineGeneratorE BinitBm:18] ? 1 : 0;
ret += [BMGPUImageLineGeneratorE qdeallocBm:49] ? 1 : 0;
ret += [BMGPUImageLineGeneratorE YgenerateLineCoordinatesBm:79] ? 1 : 0;
ret += [BMGPUImageLineGeneratorE ARenderlinesfromarrayQCountiFrametimeBm:28] ? 1 : 0;
ret += [BMGPUImageLineGeneratorE sRendertotexturewithverticespTexturecoordinatesBm:85] ? 1 : 0;
ret += [BMGPUImageLineGeneratorE TSetlinewidthBm:87] ? 1 : 0;
ret += [BMGPUImageLineGeneratorE SSetlinecolorredHGreenlBlueBm:18] ? 1 : 0;
ret += [BMGPUImageGammaFilterT rinitBm:25] ? 1 : 0;
ret += [BMGPUImageGammaFilterT SSetgammaBm:76] ? 1 : 0;
ret += [BMDGActivityIndicatorBallBeatAnimationX mSetupanimationinlayerwithsizetintcolorbmBm:21] ? 1 : 0;
ret += [BMGPUImagePolarPixellateFilterl UInitbmBm:92] ? 1 : 0;
ret += [BMGPUImagePolarPixellateFilterl USetinputrotationatindexbmBm:37] ? 1 : 0;
ret += [BMGPUImagePolarPixellateFilterl YSetpixelsizebmBm:47] ? 1 : 0;
ret += [BMGPUImagePolarPixellateFilterl XSetcenterbmBm:59] ? 1 : 0;
ret += [BMNSStringl Yrac_sequenceBm:86] ? 1 : 0;
ret += [BMGPUImageRGBErosionFilterI MInitwithradiusBm:38] ? 1 : 0;
ret += [BMGPUImageRGBErosionFilterI CinitBm:77] ? 1 : 0;
ret += [BMGPUImageFramebufferCachep finitBm:73] ? 1 : 0;
ret += [BMGPUImageFramebufferCachep oHashforsizeTTextureoptionsUOnlytextureBm:61] ? 1 : 0;
ret += [BMGPUImageFramebufferCachep iFetchframebufferforsizekTextureoptionscOnlytextureBm:58] ? 1 : 0;
ret += [BMGPUImageFramebufferCachep iFetchframebufferforsizeJOnlytextureBm:54] ? 1 : 0;
ret += [BMGPUImageFramebufferCachep DReturnframebuffertocacheBm:80] ? 1 : 0;
ret += [BMGPUImageFramebufferCachep NpurgeAllUnassignedFramebuffersBm:75] ? 1 : 0;
ret += [BMGPUImageFramebufferCachep VAddframebuffertoactiveimagecapturelistBm:47] ? 1 : 0;
ret += [BMGPUImageFramebufferCachep PRemoveframebufferfromactiveimagecapturelistBm:32] ? 1 : 0;
ret += [BMGPUImageAlphaBlendFilterl cinitBm:48] ? 1 : 0;
ret += [BMGPUImageAlphaBlendFilterl nSetmixBm:76] ? 1 : 0;
ret += [BMGPUImageThreeInputFilterK qInitwithfragmentshaderfromstringbmBm:76] ? 1 : 0;
ret += [BMGPUImageThreeInputFilterK JInitwithvertexshaderfromstringfragmentshaderfromstringbmBm:86] ? 1 : 0;
ret += [BMGPUImageThreeInputFilterK YInitializeattributesbmBm:78] ? 1 : 0;
ret += [BMGPUImageThreeInputFilterK zDisablethirdframecheckbmBm:90] ? 1 : 0;
ret += [BMGPUImageThreeInputFilterK jRendertotexturewithverticestexturecoordinatesbmBm:68] ? 1 : 0;
ret += [BMGPUImageThreeInputFilterK CNextavailabletextureindexbmBm:84] ? 1 : 0;
ret += [BMGPUImageThreeInputFilterK zSetinputframebufferatindexbmBm:32] ? 1 : 0;
ret += [BMGPUImageThreeInputFilterK qSetinputsizeatindexbmBm:80] ? 1 : 0;
ret += [BMGPUImageThreeInputFilterK PSetinputrotationatindexbmBm:3] ? 1 : 0;
ret += [BMGPUImageThreeInputFilterK HRotatedsizeforindexbmBm:97] ? 1 : 0;
ret += [BMGPUImageThreeInputFilterK NNewframereadyattimeatindexbmBm:55] ? 1 : 0;
ret += [BMGPUImageErosionFiltert BInitwithradiusBm:49] ? 1 : 0;
ret += [BMGPUImageErosionFiltert DinitBm:64] ? 1 : 0;
ret += [BMRACKVOChannelL tCurrentthreaddatabmBm:94] ? 1 : 0;
ret += [BMRACKVOChannelL bInitwithtargetkeypathnilvaluebmBm:77] ? 1 : 0;
ret += [BMRACKVOChannelL aCreatecurrentthreaddatabmBm:21] ? 1 : 0;
ret += [BMRACKVOChannelL lDestroycurrentthreaddatabmBm:62] ? 1 : 0;
ret += [BMUIScreenq SScreenscalebmBm:28] ? 1 : 0;
ret += [BMUIScreenq qCurrentboundsbmBm:81] ? 1 : 0;
ret += [BMUIScreenq qBoundsfororientationbmBm:30] ? 1 : 0;
ret += [BMUIScreenq PSizeinpixelbmBm:46] ? 1 : 0;
ret += [BMUIScreenq bPixelsperinchbmBm:25] ? 1 : 0;
ret += [BMGPUImagePolarPixellateFilterf ginitBm:68] ? 1 : 0;
ret += [BMGPUImagePolarPixellateFilterf vSetinputrotationOAtindexBm:97] ? 1 : 0;
ret += [BMGPUImagePolarPixellateFilterf jSetpixelsizeBm:39] ? 1 : 0;
ret += [BMGPUImagePolarPixellateFilterf USetcenterBm:67] ? 1 : 0;
ret += [BMRACUnitv cdefaultUnitBm:86] ? 1 : 0;
ret += [BMSDRotationLoopProgressViewG oInitwithframeBm:93] ? 1 : 0;
ret += [BMSDRotationLoopProgressViewG rchangeAngleBm:72] ? 1 : 0;
ret += [BMSDRotationLoopProgressViewG xDrawrectBm:1] ? 1 : 0;
ret += [BMRACKVOChannelY OObjectforkeyedsubscriptbmBm:30] ? 1 : 0;
ret += [BMRACKVOChannelY USetobjectforkeyedsubscriptbmBm:61] ? 1 : 0;
ret += [BMGPUImageGrayscaleFilterk IRendertotexturewithverticeskTexturecoordinatesBm:39] ? 1 : 0;
ret += [BMGPUImageGrayscaleFilterk XwantsMonochromeInputBm:21] ? 1 : 0;
ret += [BMGPUImageGrayscaleFilterk HprovidesMonochromeOutputBm:31] ? 1 : 0;
ret += [BMGPUImageGrayscaleFilterk JinitBm:1] ? 1 : 0;
ret += [BMTOActivityCroppedImageProviderZ GInitwithimagecropframeanglecircularbmBm:81] ? 1 : 0;
ret += [BMTOActivityCroppedImageProviderZ ZActivityviewcontrollerplaceholderitembmBm:35] ? 1 : 0;
ret += [BMTOActivityCroppedImageProviderZ cActivityviewcontrolleritemforactivitytypebmBm:88] ? 1 : 0;
ret += [BMTOActivityCroppedImageProviderZ PItembmBm:44] ? 1 : 0;
ret += [BMUIRefreshControll ERac_CommandbmBm:46] ? 1 : 0;
ret += [BMUIRefreshControll sSetrac_CommandbmBm:42] ? 1 : 0;
ret += [BMNSObjectD dRac_ObservekeypathoptionsobserverblockbmBm:55] ? 1 : 0;
ret += [BMRACErrorSignalo YErrorbmBm:75] ? 1 : 0;
ret += [BMRACErrorSignalo eSubscribebmBm:3] ? 1 : 0;
ret += [BMUIActivityIndicatorViewj Waf_notificationObserverBm:96] ? 1 : 0;
ret += [BMUIActivityIndicatorViewj wSetanimatingwithstateoftaskBm:29] ? 1 : 0;
ret += [BMGPUImage3x3ConvolutionFilterb rinitBm:11] ? 1 : 0;
ret += [BMGPUImage3x3ConvolutionFilterb rInitwithfragmentshaderfromstringBm:68] ? 1 : 0;
ret += [BMGPUImage3x3ConvolutionFilterb gSetconvolutionkernelBm:80] ? 1 : 0;
ret += [BMRACGroupedSignalQ ESignalwithkeyBm:65] ? 1 : 0;
ret += [BMGPUImageBufferA fInitbmBm:0] ? 1 : 0;
ret += [BMGPUImageBufferA nDeallocbmBm:61] ? 1 : 0;
ret += [BMGPUImageBufferA zNewframereadyattimeatindexbmBm:75] ? 1 : 0;
ret += [BMGPUImageBufferA sRendertotexturewithverticestexturecoordinatesbmBm:48] ? 1 : 0;
ret += [BMGPUImageBufferA VSetbuffersizebmBm:40] ? 1 : 0;
ret += [BMMISlideVCn NsuperExistNavBm:93] ? 1 : 0;
ret += [BMMISlideVCn ZsuperExistTabBm:90] ? 1 : 0;
ret += [BMMISlideVCn nbottomLineBm:25] ? 1 : 0;
ret += [BMMISlideVCn UmenuHeightBm:20] ? 1 : 0;
ret += [BMMISlideVCn gpageNumberOfItemBm:98] ? 1 : 0;
ret += [BMMISlideVCn HbottomLineWidthBm:4] ? 1 : 0;
ret += [BMMISlideVCn VlabelArysBm:16] ? 1 : 0;
ret += [BMMISlideVCn HinitBm:42] ? 1 : 0;
ret += [BMMISlideVCn TviewDidLoadBm:53] ? 1 : 0;
ret += [BMMISlideVCn HcustomBaseViewBm:73] ? 1 : 0;
ret += [BMMISlideVCn icustomTopViewBm:3] ? 1 : 0;
ret += [BMMISlideVCn FcustomBottomViewBm:91] ? 1 : 0;
ret += [BMMISlideVCn DScrollviewdidenddeceleratingBm:76] ? 1 : 0;
ret += [BMMISlideVCn LItemclicktapBm:56] ? 1 : 0;
ret += [BMMISlideVCn JMotionchangepageBm:30] ? 1 : 0;
ret += [BMMISlideVCn NContentscrolltocenterBm:38] ? 1 : 0;
ret += [BMMISlideVCn wMenuscrolltocenterBm:17] ? 1 : 0;
ret += [BMMISlideVCn XMenuupdatestyleBm:2] ? 1 : 0;
ret += [BMMISlideVCn bMenuupdatebottomlineBm:40] ? 1 : 0;
ret += [BMSDPieLoopProgressViewm jInitwithframeBm:68] ? 1 : 0;
ret += [BMSDPieLoopProgressViewm VDrawrectBm:8] ? 1 : 0;
ret += [BMGPUImageUnsharpMaskFilterQ binitBm:64] ? 1 : 0;
ret += [BMGPUImageUnsharpMaskFilterQ gSetblurradiusinpixelsBm:75] ? 1 : 0;
ret += [BMGPUImageUnsharpMaskFilterQ hblurRadiusInPixelsBm:48] ? 1 : 0;
ret += [BMGPUImageUnsharpMaskFilterQ cSetintensityBm:84] ? 1 : 0;
ret += [BMNSObjectN M_IQDescriptionBm:15] ? 1 : 0;
ret += [BMGPUImageMotionDetectorw uInitbmBm:66] ? 1 : 0;
ret += [BMGPUImageMotionDetectorw SSetlowpassfilterstrengthbmBm:96] ? 1 : 0;
ret += [BMGPUImageMotionDetectorw HLowpassfilterstrengthbmBm:82] ? 1 : 0;
ret += [BMRACSubscriptionSchedulerQ EinitBm:69] ? 1 : 0;
ret += [BMRACSubscriptionSchedulerQ xScheduleBm:95] ? 1 : 0;
ret += [BMRACSubscriptionSchedulerQ PAfterkScheduleBm:86] ? 1 : 0;
ret += [BMRACSubscriptionSchedulerQ xAfteraRepeatingeverykWithleewayeScheduleBm:12] ? 1 : 0;
ret += [BMGPUImageCGAColorspaceFilterM ginitBm:26] ? 1 : 0;
ret += [BMRACKVOProxyy WsharedProxyBm:59] ? 1 : 0;
ret += [BMRACKVOProxyy pinitBm:13] ? 1 : 0;
ret += [BMRACKVOProxyy jAddobserverjForcontextBm:85] ? 1 : 0;
ret += [BMRACKVOProxyy VRemoveobserverwForcontextBm:40] ? 1 : 0;
ret += [BMRACKVOProxyy UObservevalueforkeypathuOfobjectaChangebContextBm:95] ? 1 : 0;
ret += [BMGPUImageVignetteFilterb winitBm:37] ? 1 : 0;
ret += [BMGPUImageVignetteFilterb BSetvignettecenterBm:88] ? 1 : 0;
ret += [BMGPUImageVignetteFilterb XSetvignettecolorBm:26] ? 1 : 0;
ret += [BMGPUImageVignetteFilterb xSetvignettestartBm:16] ? 1 : 0;
ret += [BMGPUImageVignetteFilterb WSetvignetteendBm:65] ? 1 : 0;
ret += [BMRACArraySequenceH ASequencewitharrayxOffsetBm:31] ? 1 : 0;
ret += [BMRACArraySequenceH aheadBm:90] ? 1 : 0;
ret += [BMRACArraySequenceH JtailBm:36] ? 1 : 0;
ret += [BMRACArraySequenceH dCountbyenumeratingwithstatedObjectsjCountBm:9] ? 1 : 0;
ret += [BMRACArraySequenceH sarrayBm:0] ? 1 : 0;
ret += [BMRACArraySequenceH xInitwithcoderBm:71] ? 1 : 0;
ret += [BMRACArraySequenceH yEncodewithcoderBm:99] ? 1 : 0;
ret += [BMRACArraySequenceH DdescriptionBm:61] ? 1 : 0;
ret += [BMGPUImageHardLightBlendFilterK XinitBm:86] ? 1 : 0;
ret += [BMGPUImageHistogramEqualizationFilterS iinitBm:68] ? 1 : 0;
ret += [BMGPUImageHistogramEqualizationFilterS qInitwithhistogramtypeBm:94] ? 1 : 0;
ret += [BMGPUImageHistogramEqualizationFilterS aSetdownsamplingfactorBm:94] ? 1 : 0;
ret += [BMTAPageControlA yinitBm:69] ? 1 : 0;
ret += [BMTAPageControlA jInitwithframeBm:98] ? 1 : 0;
ret += [BMTAPageControlA TInitwithcoderBm:37] ? 1 : 0;
ret += [BMTAPageControlA ZinitializationBm:48] ? 1 : 0;
ret += [BMTAPageControlA cTouchesbeganUWitheventBm:77] ? 1 : 0;
ret += [BMTAPageControlA wsizeToFitBm:30] ? 1 : 0;
ret += [BMTAPageControlA xSizefornumberofpagesBm:12] ? 1 : 0;
ret += [BMTAPageControlA AupdateDotsBm:15] ? 1 : 0;
ret += [BMTAPageControlA wUpdateframeBm:74] ? 1 : 0;
ret += [BMTAPageControlA UUpdatedotframerAtindexBm:64] ? 1 : 0;
ret += [BMTAPageControlA PgenerateDotViewBm:84] ? 1 : 0;
ret += [BMTAPageControlA HChangeactivityuAtindexBm:81] ? 1 : 0;
ret += [BMTAPageControlA oresetDotViewsBm:59] ? 1 : 0;
ret += [BMTAPageControlA OhideForSinglePageBm:10] ? 1 : 0;
ret += [BMTAPageControlA ESetnumberofpagesBm:88] ? 1 : 0;
ret += [BMTAPageControlA JSetspacingbetweendotsBm:12] ? 1 : 0;
ret += [BMTAPageControlA cSetcurrentpageBm:33] ? 1 : 0;
ret += [BMTAPageControlA PSetdotimageBm:7] ? 1 : 0;
ret += [BMTAPageControlA wSetcurrentdotimageBm:36] ? 1 : 0;
ret += [BMTAPageControlA USetdotviewclassBm:80] ? 1 : 0;
ret += [BMTAPageControlA AdotsBm:76] ? 1 : 0;
ret += [BMTAPageControlA UdotSizeBm:65] ? 1 : 0;
ret += [BMGPUImageCrosshatchFilterj FinitBm:64] ? 1 : 0;
ret += [BMGPUImageCrosshatchFilterj iSetcrosshatchspacingBm:63] ? 1 : 0;
ret += [BMGPUImageCrosshatchFilterj oSetlinewidthBm:60] ? 1 : 0;
ret += [BMGPUImageStillCameraq NInitwithsessionpresetyCamerapositionBm:65] ? 1 : 0;
ret += [BMGPUImageStillCameraq ginitBm:88] ? 1 : 0;
ret += [BMGPUImageStillCameraq ZremoveInputsAndOutputsBm:85] ? 1 : 0;
ret += [BMGPUImageStillCameraq cCapturephotoassamplebufferwithcompletionhandlerBm:99] ? 1 : 0;
ret += [BMGPUImageStillCameraq jCapturephotoasimageprocesseduptofilterYWithcompletionhandlerBm:82] ? 1 : 0;
ret += [BMGPUImageStillCameraq UCapturephotoasimageprocesseduptofilterNWithorientationSWithcompletionhandlerBm:66] ? 1 : 0;
ret += [BMGPUImageStillCameraq CCapturephotoasjpegprocesseduptofilterLWithcompletionhandlerBm:85] ? 1 : 0;
ret += [BMGPUImageStillCameraq pCapturephotoasjpegprocesseduptofiltereWithorientationjWithcompletionhandlerBm:23] ? 1 : 0;
ret += [BMGPUImageStillCameraq RCapturephotoaspngprocesseduptofilterWWithcompletionhandlerBm:50] ? 1 : 0;
ret += [BMGPUImageStillCameraq ECapturephotoaspngprocesseduptofilteryWithorientationcWithcompletionhandlerBm:61] ? 1 : 0;
ret += [BMGPUImageStillCameraq nCapturephotoprocesseduptofilterrWithimageongpuhandlerBm:6] ? 1 : 0;
ret += [BMRACSignalp ESubscribeBm:5] ? 1 : 0;
ret += [BMRACSignalp BSubscribenextBm:72] ? 1 : 0;
ret += [BMRACSignalp jSubscribenextvCompletedBm:24] ? 1 : 0;
ret += [BMRACSignalp eSubscribenextUErrormCompletedBm:81] ? 1 : 0;
ret += [BMRACSignalp kSubscribeerrorBm:86] ? 1 : 0;
ret += [BMRACSignalp GSubscribecompletedBm:96] ? 1 : 0;
ret += [BMRACSignalp ASubscribenextZErrorBm:59] ? 1 : 0;
ret += [BMRACSignalp TSubscribeerrorcCompletedBm:77] ? 1 : 0;
ret += [BMGPUImageNormalBlendFilterS HInitbmBm:40] ? 1 : 0;
ret += [BMDGActivityIndicatorBallScaleRippleMultipleAnimations QSetupanimationinlayerpWithsizeNTintcolorBm:66] ? 1 : 0;
ret += [BMNSUserDefaultsN ORac_ChannelterminalforkeyBm:99] ? 1 : 0;
ret += [BMGPUImageLuminanceThresholdFilterk ZInitbmBm:49] ? 1 : 0;
ret += [BMGPUImageLuminanceThresholdFilterk XSetthresholdbmBm:4] ? 1 : 0;
ret += [BMCALayerr YsnapshotImageBm:56] ? 1 : 0;
ret += [BMCALayerr gsnapshotPDFBm:70] ? 1 : 0;
ret += [BMCALayerr NSetlayershadoweOffsetpRadiusBm:94] ? 1 : 0;
ret += [BMCALayerr qremoveAllSublayersBm:7] ? 1 : 0;
ret += [BMCALayerr MleftBm:66] ? 1 : 0;
ret += [BMCALayerr jSetleftBm:93] ? 1 : 0;
ret += [BMCALayerr qtopBm:10] ? 1 : 0;
ret += [BMCALayerr tSettopBm:96] ? 1 : 0;
ret += [BMCALayerr UrightBm:10] ? 1 : 0;
ret += [BMCALayerr ZSetrightBm:30] ? 1 : 0;
ret += [BMCALayerr dbottomBm:84] ? 1 : 0;
ret += [BMCALayerr mSetbottomBm:90] ? 1 : 0;
ret += [BMCALayerr qwidthBm:82] ? 1 : 0;
ret += [BMCALayerr bSetwidthBm:42] ? 1 : 0;
ret += [BMCALayerr KheightBm:96] ? 1 : 0;
ret += [BMCALayerr lSetheightBm:95] ? 1 : 0;
ret += [BMCALayerr VcenterBm:62] ? 1 : 0;
ret += [BMCALayerr fSetcenterBm:95] ? 1 : 0;
ret += [BMCALayerr QcenterXBm:98] ? 1 : 0;
ret += [BMCALayerr PSetcenterxBm:91] ? 1 : 0;
ret += [BMCALayerr jcenterYBm:24] ? 1 : 0;
ret += [BMCALayerr cSetcenteryBm:87] ? 1 : 0;
ret += [BMCALayerr LoriginBm:45] ? 1 : 0;
ret += [BMCALayerr oSetoriginBm:81] ? 1 : 0;
ret += [BMCALayerr uframeSizeBm:54] ? 1 : 0;
ret += [BMCALayerr eSetframesizeBm:10] ? 1 : 0;
ret += [BMCALayerr utransformRotationBm:64] ? 1 : 0;
ret += [BMCALayerr ZSettransformrotationBm:76] ? 1 : 0;
ret += [BMCALayerr OtransformRotationXBm:44] ? 1 : 0;
ret += [BMCALayerr jSettransformrotationxBm:0] ? 1 : 0;
ret += [BMCALayerr jtransformRotationYBm:19] ? 1 : 0;
ret += [BMCALayerr rSettransformrotationyBm:70] ? 1 : 0;
ret += [BMCALayerr ctransformRotationZBm:25] ? 1 : 0;
ret += [BMCALayerr YSettransformrotationzBm:38] ? 1 : 0;
ret += [BMCALayerr RtransformScaleXBm:49] ? 1 : 0;
ret += [BMCALayerr RSettransformscalexBm:4] ? 1 : 0;
ret += [BMCALayerr NtransformScaleYBm:47] ? 1 : 0;
ret += [BMCALayerr xSettransformscaleyBm:74] ? 1 : 0;
ret += [BMCALayerr JtransformScaleZBm:92] ? 1 : 0;
ret += [BMCALayerr MSettransformscalezBm:81] ? 1 : 0;
ret += [BMCALayerr ktransformScaleBm:80] ? 1 : 0;
ret += [BMCALayerr jSettransformscaleBm:96] ? 1 : 0;
ret += [BMCALayerr XtransformTranslationXBm:97] ? 1 : 0;
ret += [BMCALayerr fSettransformtranslationxBm:44] ? 1 : 0;
ret += [BMCALayerr itransformTranslationYBm:38] ? 1 : 0;
ret += [BMCALayerr YSettransformtranslationyBm:41] ? 1 : 0;
ret += [BMCALayerr wtransformTranslationZBm:49] ? 1 : 0;
ret += [BMCALayerr FSettransformtranslationzBm:2] ? 1 : 0;
ret += [BMCALayerr gtransformDepthBm:80] ? 1 : 0;
ret += [BMCALayerr ZSettransformdepthBm:19] ? 1 : 0;
ret += [BMCALayerr acontentModeBm:11] ? 1 : 0;
ret += [BMCALayerr ISetcontentmodeBm:53] ? 1 : 0;
ret += [BMCALayerr uAddfadeanimationwithdurationDCurveBm:68] ? 1 : 0;
ret += [BMCALayerr BremovePreviousFadeAnimationBm:37] ? 1 : 0;
ret += [BMYWebFileManagerQ pshareInstanceBm:49] ? 1 : 0;
ret += [BMYWebFileManagerQ XFolderisexistBm:70] ? 1 : 0;
ret += [BMYWebFileManagerQ PFileisexistBm:0] ? 1 : 0;
ret += [BMYWebFileManagerQ wImagewithurlBm:48] ? 1 : 0;
ret += [BMYWebFileManagerQ lDeleteallcacheswithfolderZProgressJCompleteBm:1] ? 1 : 0;
ret += [BMYWebFileManagerQ sCreatedownfilewithfolderBm:34] ? 1 : 0;
ret += [BMYWebFileManagerQ nfileManagerBm:85] ? 1 : 0;
ret += [BMYWebFileManagerQ fFilesizeatpathBm:69] ? 1 : 0;
ret += [BMYWebFileManagerQ cFoldersizeatpathBm:64] ? 1 : 0;
ret += [BMAFXMLDocumentResponseSerializerZ NserializerBm:86] ? 1 : 0;
ret += [BMAFXMLDocumentResponseSerializerZ pSerializerwithxmldocumentoptionsBm:56] ? 1 : 0;
ret += [BMAFXMLDocumentResponseSerializerZ iinitBm:74] ? 1 : 0;
ret += [BMAFXMLDocumentResponseSerializerZ OResponseobjectforresponseLDataJErrorBm:76] ? 1 : 0;
ret += [BMAFXMLDocumentResponseSerializerZ uInitwithcoderBm:38] ? 1 : 0;
ret += [BMAFXMLDocumentResponseSerializerZ PEncodewithcoderBm:66] ? 1 : 0;
ret += [BMAFXMLDocumentResponseSerializerZ yCopywithzoneBm:2] ? 1 : 0;
ret += [BMGPUImageHistogramGeneratory MinitBm:60] ? 1 : 0;
ret += [BMGPUImageHistogramGeneratory pSetbackgroundcolorredbGreenGBlueDAlphaBm:82] ? 1 : 0;
ret += [BMRACSequenceJ YSequencewithheadblockRTailblockBm:60] ? 1 : 0;
ret += [BMRACSequenceJ cheadBm:8] ? 1 : 0;
ret += [BMRACSequenceJ MtailBm:67] ? 1 : 0;
ret += [BMRACSequenceJ memptyBm:55] ? 1 : 0;
ret += [BMRACSequenceJ HReturnBm:58] ? 1 : 0;
ret += [BMRACSequenceJ KBindBm:44] ? 1 : 0;
ret += [BMRACSequenceJ zBindiPassingthroughvaluesfromsequenceBm:46] ? 1 : 0;
ret += [BMRACSequenceJ yConcatBm:47] ? 1 : 0;
ret += [BMRACSequenceJ fZipwithBm:58] ? 1 : 0;
ret += [BMRACSequenceJ QarrayBm:15] ? 1 : 0;
ret += [BMRACSequenceJ dobjectEnumeratorBm:77] ? 1 : 0;
ret += [BMRACSequenceJ jsignalBm:56] ? 1 : 0;
ret += [BMRACSequenceJ lSignalwithschedulerBm:62] ? 1 : 0;
ret += [BMRACSequenceJ IFoldleftwithstarteReduceBm:95] ? 1 : 0;
ret += [BMRACSequenceJ kFoldrightwithstartiReduceBm:36] ? 1 : 0;
ret += [BMRACSequenceJ hAnyBm:28] ? 1 : 0;
ret += [BMRACSequenceJ AAllBm:79] ? 1 : 0;
ret += [BMRACSequenceJ HObjectpassingtestBm:31] ? 1 : 0;
ret += [BMRACSequenceJ PeagerSequenceBm:34] ? 1 : 0;
ret += [BMRACSequenceJ SlazySequenceBm:17] ? 1 : 0;
ret += [BMRACSequenceJ aCopywithzoneBm:47] ? 1 : 0;
ret += [BMRACSequenceJ gclassForCoderBm:42] ? 1 : 0;
ret += [BMRACSequenceJ FInitwithcoderBm:48] ? 1 : 0;
ret += [BMRACSequenceJ aEncodewithcoderBm:59] ? 1 : 0;
ret += [BMRACSequenceJ fCountbyenumeratingwithstateuObjectsqCountBm:63] ? 1 : 0;
ret += [BMRACSequenceJ VhashBm:82] ? 1 : 0;
ret += [BMRACSequenceJ iIsequalBm:36] ? 1 : 0;
ret += [BMNSDictionarym OYy_ModeldictionarywithclassTJsonBm:28] ? 1 : 0;
ret += [BMNSDictionarym jYy_ModeldictionarywithclasstDictionaryBm:52] ? 1 : 0;
ret += [BMRACTupleg OInitbmBm:42] ? 1 : 0;
ret += [BMRACTupleg pInitwithbackingarraybmBm:97] ? 1 : 0;
ret += [BMRACTupleg KDescriptionbmBm:90] ? 1 : 0;
ret += [BMRACTupleg RIsequalbmBm:40] ? 1 : 0;
ret += [BMRACTupleg fHashbmBm:81] ? 1 : 0;
ret += [BMRACTupleg hCountbyenumeratingwithstateobjectscountbmBm:88] ? 1 : 0;
ret += [BMRACTupleg hCopywithzonebmBm:45] ? 1 : 0;
ret += [BMRACTupleg fInitwithcoderbmBm:52] ? 1 : 0;
ret += [BMRACTupleg KEncodewithcoderbmBm:3] ? 1 : 0;
ret += [BMRACTupleg DTuplewithobjectsfromarraybmBm:28] ? 1 : 0;
ret += [BMRACTupleg lTuplewithobjectsfromarrayconvertnullstonilsbmBm:92] ? 1 : 0;
ret += [BMRACTupleg ATuplewithobjectsbmBm:95] ? 1 : 0;
ret += [BMRACTupleg RObjectatindexbmBm:98] ? 1 : 0;
ret += [BMRACTupleg sAllobjectsbmBm:52] ? 1 : 0;
ret += [BMRACTupleg MTuplebyaddingobjectbmBm:50] ? 1 : 0;
ret += [BMRACTupleg YCountbmBm:67] ? 1 : 0;
ret += [BMRACTupleg UFirstbmBm:84] ? 1 : 0;
ret += [BMRACTupleg qSecondbmBm:27] ? 1 : 0;
ret += [BMRACTupleg aThirdbmBm:28] ? 1 : 0;
ret += [BMRACTupleg GFourthbmBm:30] ? 1 : 0;
ret += [BMRACTupleg lFifthbmBm:17] ? 1 : 0;
ret += [BMRACTupleg ZLastbmBm:53] ? 1 : 0;
ret += [BMGPUImageWeakPixelInclusionFilterH iinitBm:0] ? 1 : 0;
ret += [BMGPUImageLuminosityBlendFilterq EinitBm:49] ? 1 : 0;
ret += [BMDGActivityIndicatorBallTrianglePathAnimationg PSetupanimationinlayeroWithsizemTintcolorBm:84] ? 1 : 0;
ret += [BMDGActivityIndicatorBallTrianglePathAnimationg rCreatecirclewithsizerColorBm:0] ? 1 : 0;
ret += [BMDGActivityIndicatorBallTrianglePathAnimationg EChangeanimationXValuesoDeltaxODeltayBm:18] ? 1 : 0;
ret += [BMDGActivityIndicatorBallTrianglePathAnimationg QTranslatemWithdeltaxDDeltayBm:1] ? 1 : 0;
ret += [BMGPUImageMovieB oInitwithurlbmBm:81] ? 1 : 0;
ret += [BMGPUImageMovieB RInitwithassetbmBm:44] ? 1 : 0;
ret += [BMGPUImageMovieB wInitwithplayeritembmBm:26] ? 1 : 0;
ret += [BMGPUImageMovieB CYuvconversionsetupbmBm:49] ? 1 : 0;
ret += [BMGPUImageMovieB MDeallocbmBm:98] ? 1 : 0;
ret += [BMGPUImageMovieB zEnablesynchronizedencodingusingmoviewriterbmBm:15] ? 1 : 0;
ret += [BMGPUImageMovieB cStartprocessingbmBm:11] ? 1 : 0;
ret += [BMGPUImageMovieB LCreateassetreaderbmBm:1] ? 1 : 0;
ret += [BMGPUImageMovieB OProcessassetbmBm:75] ? 1 : 0;
ret += [BMGPUImageMovieB qProcessplayeritembmBm:42] ? 1 : 0;
ret += [BMGPUImageMovieB eOutputmediadatawillchangebmBm:57] ? 1 : 0;
ret += [BMGPUImageMovieB eDisplaylinkcallbackbmBm:97] ? 1 : 0;
ret += [BMGPUImageMovieB FReadnextvideoframefromoutputbmBm:41] ? 1 : 0;
ret += [BMGPUImageMovieB JReadnextaudiosamplefromoutputbmBm:77] ? 1 : 0;
ret += [BMGPUImageMovieB AProcessmovieframebmBm:57] ? 1 : 0;
ret += [BMGPUImageMovieB vProgressbmBm:84] ? 1 : 0;
ret += [BMGPUImageMovieB RProcessmovieframewithsampletimebmBm:30] ? 1 : 0;
ret += [BMGPUImageMovieB FEndprocessingbmBm:94] ? 1 : 0;
ret += [BMGPUImageMovieB LCancelprocessingbmBm:16] ? 1 : 0;
ret += [BMGPUImageMovieB cConvertyuvtorgboutputbmBm:28] ? 1 : 0;
ret += [BMGPUImageMovieB iAssetreaderbmBm:71] ? 1 : 0;
ret += [BMGPUImageMovieB dAudioencodingisfinishedbmBm:5] ? 1 : 0;
ret += [BMGPUImageMovieB KVideoencodingisfinishedbmBm:47] ? 1 : 0;
ret += [BMGPUImageHSBFilteru hinitBm:86] ? 1 : 0;
ret += [BMGPUImageHSBFilteru qresetBm:68] ? 1 : 0;
ret += [BMGPUImageHSBFilteru ORotatehueBm:28] ? 1 : 0;
ret += [BMGPUImageHSBFilteru ZAdjustsaturationBm:31] ? 1 : 0;
ret += [BMGPUImageHSBFilteru gAdjustbrightnessBm:16] ? 1 : 0;
ret += [BMGPUImageHSBFilteru w_updateColorMatrixBm:72] ? 1 : 0;
ret += [BMGPUImageHSBFilteru 0Bm:51] ? 1 : 0;
ret += [BMUIActionSheetT Orac_delegateProxyBm:49] ? 1 : 0;
ret += [BMUIActionSheetT qrac_buttonClickedSignalBm:48] ? 1 : 0;
ret += [BMGPUImageScreenBlendFilterx DinitBm:88] ? 1 : 0;
ret += [BMRACTuplem aObjectatindexedsubscriptBm:8] ? 1 : 0;
ret += [BMTAAbstractDotViewu oinitBm:36] ? 1 : 0;
ret += [BMTAAbstractDotViewu sChangeactivitystateBm:48] ? 1 : 0;
ret += [BMYYClassIvarInfoi SInitwithivarbmBm:42] ? 1 : 0;
ret += [BMDGActivityIndicatorRotatingSandglassAnimationp cSetupanimationinlayerVWithsizeJTintcolorBm:58] ? 1 : 0;
ret += [BMGPUImageOpeningFilterX FinitBm:16] ? 1 : 0;
ret += [BMGPUImageOpeningFilterX tInitwithradiusBm:34] ? 1 : 0;
ret += [BMGPUImageOpeningFilterX qSetverticaltexelspacingBm:98] ? 1 : 0;
ret += [BMGPUImageOpeningFilterX pSethorizontaltexelspacingBm:61] ? 1 : 0;
ret += [BMGPUImageTwoInputCrossTextureSamplingFilterA FInitwithfragmentshaderfromstringBm:92] ? 1 : 0;
ret += [BMGPUImageTwoInputCrossTextureSamplingFilterA YSetupfilterforsizeBm:94] ? 1 : 0;
ret += [BMGPUImageTwoInputCrossTextureSamplingFilterA vSettexelwidthBm:40] ? 1 : 0;
ret += [BMGPUImageTwoInputCrossTextureSamplingFilterA VSettexelheightBm:6] ? 1 : 0;
ret += [BMGPUImageColorBlendFilterw DinitBm:70] ? 1 : 0;
ret += [BMGPUImageRGBFilterz PinitBm:40] ? 1 : 0;
ret += [BMGPUImageRGBFilterz XSetredBm:89] ? 1 : 0;
ret += [BMGPUImageRGBFilterz DSetgreenBm:85] ? 1 : 0;
ret += [BMGPUImageRGBFilterz mSetblueBm:1] ? 1 : 0;
ret += [BMUITableViewCellT vRac_PrepareforreusesignalbmBm:82] ? 1 : 0;
ret += [BMGPUImagePerlinNoiseFilterN tInitbmBm:85] ? 1 : 0;
ret += [BMGPUImagePerlinNoiseFilterN sSetscalebmBm:72] ? 1 : 0;
ret += [BMGPUImagePerlinNoiseFilterN SSetcolorstartbmBm:20] ? 1 : 0;
ret += [BMGPUImagePerlinNoiseFilterN ySetcolorfinishbmBm:42] ? 1 : 0;
ret += [BMRACTargetQueueSchedulers sInitwithnameJTargetqueueBm:83] ? 1 : 0;
ret += [BMRACTwoTuplee AinitBm:79] ? 1 : 0;
ret += [BMRACTwoTuplee vInitwithbackingarrayBm:73] ? 1 : 0;
ret += [BMRACTwoTuplee LTuplebyaddingobjectBm:86] ? 1 : 0;
ret += [BMRACTwoTuplee vPackYFirstBm:83] ? 1 : 0;
ret += [BMRACTwoTuplee sIsequalBm:66] ? 1 : 0;
ret += [BMUIRefreshControlH Trac_commandBm:46] ? 1 : 0;
ret += [BMUIRefreshControlH sSetrac_CommandBm:56] ? 1 : 0;
ret += [BMNSInvocationI URac_SetargumentNAtindexBm:39] ? 1 : 0;
ret += [BMNSInvocationI CRac_ArgumentatindexBm:62] ? 1 : 0;
ret += [BMNSInvocationI rrac_argumentsTupleBm:79] ? 1 : 0;
ret += [BMNSInvocationI hSetrac_ArgumentstupleBm:97] ? 1 : 0;
ret += [BMNSInvocationI irac_returnValueBm:26] ? 1 : 0;
ret += [BMGPUImageDirectionalSobelEdgeDetectionFilterq ainitBm:21] ? 1 : 0;
ret += [BMRACSignalh rAsynchronousfirstordefaultASuccesswErrorBm:64] ? 1 : 0;
ret += [BMRACSignalh sAsynchronousfirstordefaulteSuccessTErrorWTimeoutBm:46] ? 1 : 0;
ret += [BMRACSignalh oAsynchronouslywaituntilcompletedWTimeoutBm:44] ? 1 : 0;
ret += [BMRACSignalh nAsynchronouslywaituntilcompletedBm:5] ? 1 : 0;
ret += [BMRACDisposablek CIsdisposedbmBm:79] ? 1 : 0;
ret += [BMRACDisposablek QInitbmBm:82] ? 1 : 0;
ret += [BMRACDisposablek CInitwithblockbmBm:34] ? 1 : 0;
ret += [BMRACDisposablek kDisposablewithblockbmBm:10] ? 1 : 0;
ret += [BMRACDisposablek MDeallocbmBm:67] ? 1 : 0;
ret += [BMRACDisposablek YDisposebmBm:78] ? 1 : 0;
ret += [BMRACDisposablek gAsscopeddisposablebmBm:78] ? 1 : 0;
ret += [BMDGActivityIndicatorBallPulseSyncAnimationo LSetupanimationinlayerwithsizetintcolorbmBm:97] ? 1 : 0;
ret += [BMGPUImageJFAVoronoiFilterC qinitBm:12] ? 1 : 0;
ret += [BMGPUImageJFAVoronoiFilterC lSetsizeinpixelsBm:41] ? 1 : 0;
ret += [BMGPUImageJFAVoronoiFilterC CNextpoweroftwoBm:41] ? 1 : 0;
ret += [BMGPUImageJFAVoronoiFilterC hRendertotexturewithverticesLTexturecoordinatesBm:78] ? 1 : 0;
ret += [BMGPUImageHistogramFiltero lInitwithhistogramtypeBm:66] ? 1 : 0;
ret += [BMGPUImageHistogramFiltero LinitBm:1] ? 1 : 0;
ret += [BMGPUImageHistogramFiltero XinitializeSecondaryAttributesBm:95] ? 1 : 0;
ret += [BMGPUImageHistogramFiltero qdeallocBm:29] ? 1 : 0;
ret += [BMGPUImageHistogramFiltero osizeOfFBOBm:6] ? 1 : 0;
ret += [BMGPUImageHistogramFiltero sNewframereadyattimeDAtindexBm:79] ? 1 : 0;
ret += [BMGPUImageHistogramFiltero qoutputFrameSizeBm:19] ? 1 : 0;
ret += [BMGPUImageHistogramFiltero KSetinputsizegAtindexBm:67] ? 1 : 0;
ret += [BMGPUImageHistogramFiltero VSetinputrotationJAtindexBm:85] ? 1 : 0;
ret += [BMGPUImageHistogramFiltero yRendertotexturewithverticesXTexturecoordinatesBm:25] ? 1 : 0;
ret += [BMUITableViewF mUpdatewithblockBm:90] ? 1 : 0;
ret += [BMUITableViewF CScrolltorowuInsectiongAtscrollpositionUAnimatedBm:10] ? 1 : 0;
ret += [BMUITableViewF tInsertrowatindexpathDWithrowanimationBm:21] ? 1 : 0;
ret += [BMUITableViewF kInsertrowFInsectionPWithrowanimationBm:75] ? 1 : 0;
ret += [BMUITableViewF gReloadrowatindexpathlWithrowanimationBm:98] ? 1 : 0;
ret += [BMUITableViewF hReloadrowTInsectionhWithrowanimationBm:68] ? 1 : 0;
ret += [BMUITableViewF ADeleterowatindexpathQWithrowanimationBm:53] ? 1 : 0;
ret += [BMUITableViewF BDeleterowjInsectionzWithrowanimationBm:1] ? 1 : 0;
ret += [BMUITableViewF UInsertsectionDWithrowanimationBm:77] ? 1 : 0;
ret += [BMUITableViewF MDeletesectionkWithrowanimationBm:12] ? 1 : 0;
ret += [BMUITableViewF nReloadsectionCWithrowanimationBm:66] ? 1 : 0;
ret += [BMUITableViewF TClearselectedrowsanimatedBm:31] ? 1 : 0;
ret += [BMGPUImageLightenBlendFilterq xinitBm:93] ? 1 : 0;
ret += [BMUIColorX RColorwithhuezSaturationGLightnessBAlphaBm:69] ? 1 : 0;
ret += [BMUIColorX qColorwithcyanbMagentafYellowjBlackwAlphaBm:51] ? 1 : 0;
ret += [BMUIColorX MColorwithrgbBm:29] ? 1 : 0;
ret += [BMUIColorX FColorwithrgbaBm:88] ? 1 : 0;
ret += [BMUIColorX RColorwithrgbRAlphaBm:0] ? 1 : 0;
ret += [BMUIColorX DrgbValueBm:94] ? 1 : 0;
ret += [BMUIColorX zrgbaValueBm:27] ? 1 : 0;
ret += [BMUIColorX CColorwithhexstringBm:50] ? 1 : 0;
ret += [BMUIColorX bhexStringBm:95] ? 1 : 0;
ret += [BMUIColorX HhexStringWithAlphaBm:31] ? 1 : 0;
ret += [BMUIColorX FHexstringwithalphaBm:67] ? 1 : 0;
ret += [BMUIColorX CColorbyaddcolorkBlendmodeBm:59] ? 1 : 0;
ret += [BMUIColorX vColorbychangehuezSaturationNBrightnessvAlphaBm:46] ? 1 : 0;
ret += [BMUIColorX fGethuekSaturationYLightnesspAlphaBm:43] ? 1 : 0;
ret += [BMUIColorX pGetcyannMagentaPYellowaBlackzAlphaBm:14] ? 1 : 0;
ret += [BMUIColorX KredBm:23] ? 1 : 0;
ret += [BMUIColorX ngreenBm:12] ? 1 : 0;
ret += [BMUIColorX xblueBm:49] ? 1 : 0;
ret += [BMUIColorX SalphaBm:79] ? 1 : 0;
ret += [BMUIColorX DhueBm:95] ? 1 : 0;
ret += [BMUIColorX CsaturationBm:45] ? 1 : 0;
ret += [BMUIColorX ebrightnessBm:98] ? 1 : 0;
ret += [BMUIColorX EcolorSpaceModelBm:2] ? 1 : 0;
ret += [BMUIColorX ScolorSpaceStringBm:46] ? 1 : 0;
ret += [BMGPUImageSaturationFiltere pinitBm:55] ? 1 : 0;
ret += [BMGPUImageSaturationFiltere LSetsaturationBm:74] ? 1 : 0;
ret += [BMGPUImageNonMaximumSuppressionFilterW OinitBm:49] ? 1 : 0;
ret += [BMDGActivityIndicatorLineScaleAnimationV ISetupanimationinlayerwWithsizefTintcolorBm:58] ? 1 : 0;
ret += [BMGPUImageGlassSphereFilterH vinitBm:65] ? 1 : 0;
ret += [BMRACSchedulerk cdescriptionBm:63] ? 1 : 0;
ret += [BMRACSchedulerk KInitwithnameBm:45] ? 1 : 0;
ret += [BMRACSchedulerk iimmediateSchedulerBm:48] ? 1 : 0;
ret += [BMRACSchedulerk TmainThreadSchedulerBm:6] ? 1 : 0;
ret += [BMRACSchedulerk vSchedulerwithpriorityeNameBm:65] ? 1 : 0;
ret += [BMRACSchedulerk jSchedulerwithpriorityBm:63] ? 1 : 0;
ret += [BMRACSchedulerk XschedulerBm:67] ? 1 : 0;
ret += [BMRACSchedulerk esubscriptionSchedulerBm:73] ? 1 : 0;
ret += [BMRACSchedulerk visOnMainThreadBm:35] ? 1 : 0;
ret += [BMRACSchedulerk hcurrentSchedulerBm:99] ? 1 : 0;
ret += [BMRACSchedulerk FScheduleBm:82] ? 1 : 0;
ret += [BMRACSchedulerk FAftermScheduleBm:27] ? 1 : 0;
ret += [BMRACSchedulerk bAfterdelaywScheduleBm:66] ? 1 : 0;
ret += [BMRACSchedulerk oAfterhRepeatingeveryGWithleewayFScheduleBm:45] ? 1 : 0;
ret += [BMRACSchedulerk wSchedulerecursiveblockBm:25] ? 1 : 0;
ret += [BMRACSchedulerk ISchedulerecursiveblockUAddingtodisposableBm:78] ? 1 : 0;
ret += [BMRACSchedulerk iPerformascurrentschedulerBm:85] ? 1 : 0;
ret += [BMRACSerialDisposableN nisDisposedBm:95] ? 1 : 0;
ret += [BMRACSerialDisposableN MdisposableBm:99] ? 1 : 0;
ret += [BMRACSerialDisposableN TSetdisposableBm:41] ? 1 : 0;
ret += [BMRACSerialDisposableN ESerialdisposablewithdisposableBm:92] ? 1 : 0;
ret += [BMRACSerialDisposableN GinitBm:90] ? 1 : 0;
ret += [BMRACSerialDisposableN FInitwithblockBm:48] ? 1 : 0;
ret += [BMRACSerialDisposableN AdeallocBm:82] ? 1 : 0;
ret += [BMRACSerialDisposableN tSwapindisposableBm:48] ? 1 : 0;
ret += [BMRACSerialDisposableN odisposeBm:9] ? 1 : 0;
ret += [BMDGActivityIndicatorCookieTerminatorAnimationc lSetupanimationinlayersWithsizeLTintcolorBm:84] ? 1 : 0;
ret += [BMGPUImageCannyEdgeDetectionFilterQ CinitBm:9] ? 1 : 0;
ret += [BMGPUImageCannyEdgeDetectionFilterQ RSetblurradiusinpixelsBm:12] ? 1 : 0;
ret += [BMGPUImageCannyEdgeDetectionFilterQ lblurRadiusInPixelsBm:79] ? 1 : 0;
ret += [BMGPUImageCannyEdgeDetectionFilterQ BSetblurtexelspacingmultiplierBm:5] ? 1 : 0;
ret += [BMGPUImageCannyEdgeDetectionFilterQ fblurTexelSpacingMultiplierBm:48] ? 1 : 0;
ret += [BMGPUImageCannyEdgeDetectionFilterQ gSettexelwidthBm:96] ? 1 : 0;
ret += [BMGPUImageCannyEdgeDetectionFilterQ ItexelWidthBm:32] ? 1 : 0;
ret += [BMGPUImageCannyEdgeDetectionFilterQ iSettexelheightBm:31] ? 1 : 0;
ret += [BMGPUImageCannyEdgeDetectionFilterQ atexelHeightBm:84] ? 1 : 0;
ret += [BMGPUImageCannyEdgeDetectionFilterQ wSetupperthresholdBm:30] ? 1 : 0;
ret += [BMGPUImageCannyEdgeDetectionFilterQ YupperThresholdBm:58] ? 1 : 0;
ret += [BMGPUImageCannyEdgeDetectionFilterQ vSetlowerthresholdBm:72] ? 1 : 0;
ret += [BMGPUImageCannyEdgeDetectionFilterQ AlowerThresholdBm:2] ? 1 : 0;
ret += [BMGPUImageGaussianBlurFilterr iInitwithfirststagevertexshaderfromstringYFirststagefragmentshaderfromstringVSecondstagevertexshaderfromstringuSecondstagefragmentshaderfromstringBm:78] ? 1 : 0;
ret += [BMGPUImageGaussianBlurFilterr VinitBm:43] ? 1 : 0;
ret += [BMGPUImageGaussianBlurFilterr HVertexshaderforstandardblurofradiussSigmaBm:23] ? 1 : 0;
ret += [BMGPUImageGaussianBlurFilterr iFragmentshaderforstandardblurofradiusfSigmaBm:9] ? 1 : 0;
ret += [BMGPUImageGaussianBlurFilterr bVertexshaderforoptimizedblurofradiusoSigmaBm:73] ? 1 : 0;
ret += [BMGPUImageGaussianBlurFilterr hFragmentshaderforoptimizedblurofradiusfSigmaBm:57] ? 1 : 0;
ret += [BMGPUImageGaussianBlurFilterr kSetupfilterforsizeBm:21] ? 1 : 0;
ret += [BMGPUImageGaussianBlurFilterr DRendertotexturewithverticeskTexturecoordinatesBm:88] ? 1 : 0;
ret += [BMGPUImageGaussianBlurFilterr PSwitchtovertexshaderdFragmentshaderBm:54] ? 1 : 0;
ret += [BMGPUImageGaussianBlurFilterr VSettexelspacingmultiplierBm:12] ? 1 : 0;
ret += [BMGPUImageGaussianBlurFilterr BSetblurradiusinpixelsBm:55] ? 1 : 0;
ret += [BMGPUImageGaussianBlurFilterr TSetblurradiusasfractionofimagewidthBm:67] ? 1 : 0;
ret += [BMGPUImageGaussianBlurFilterr RSetblurradiusasfractionofimageheightBm:74] ? 1 : 0;
ret += [BMDGActivityIndicatorTriplePulseAnimationz LSetupanimationinlayervWithsizehTintcolorBm:59] ? 1 : 0;
ret += [BMNSSety zrac_sequenceBm:95] ? 1 : 0;
ret += [BMGPUImageSepiaFilterQ IinitBm:81] ? 1 : 0;
ret += [BMNSStringa ERac_ReadcontentsofurlusedencodingschedulerbmBm:45] ? 1 : 0;
ret += [BMNSObjectV wRac_ObservekeypathNOptionsAObserverLBlockBm:49] ? 1 : 0;
ret += [BMRACSubscriberX GSubscriberwithnextdErrorkCompletedBm:1] ? 1 : 0;
ret += [BMRACSubscriberX sinitBm:15] ? 1 : 0;
ret += [BMRACSubscriberX mdeallocBm:73] ? 1 : 0;
ret += [BMRACSubscriberX bSendnextBm:95] ? 1 : 0;
ret += [BMRACSubscriberX cSenderrorBm:26] ? 1 : 0;
ret += [BMRACSubscriberX YsendCompletedBm:0] ? 1 : 0;
ret += [BMRACSubscriberX CDidsubscribewithdisposableBm:73] ? 1 : 0;
ret += [BMSDCollectionViewCelle QInitwithframeBm:94] ? 1 : 0;
ret += [BMSDCollectionViewCelle fSettitlelabelbackgroundcolorBm:1] ? 1 : 0;
ret += [BMSDCollectionViewCelle tSettitlelabeltextcolorBm:38] ? 1 : 0;
ret += [BMSDCollectionViewCelle RSettitlelabeltextfontBm:46] ? 1 : 0;
ret += [BMSDCollectionViewCelle osetupImageViewBm:47] ? 1 : 0;
ret += [BMSDCollectionViewCelle HsetupTitleLabelBm:47] ? 1 : 0;
ret += [BMSDCollectionViewCelle JSettitleBm:0] ? 1 : 0;
ret += [BMSDCollectionViewCelle wSettitlelabeltextalignmentBm:37] ? 1 : 0;
ret += [BMSDCollectionViewCelle BlayoutSubviewsBm:40] ? 1 : 0;
ret += [BMGPUImageThresholdSketchFilterQ yinitBm:6] ? 1 : 0;
ret += [BMAFPropertyListResponseSerializerr ISerializerbmBm:69] ? 1 : 0;
ret += [BMAFPropertyListResponseSerializerr ESerializerwithformatreadoptionsbmBm:88] ? 1 : 0;
ret += [BMAFPropertyListResponseSerializerr HInitbmBm:86] ? 1 : 0;
ret += [BMAFPropertyListResponseSerializerr LResponseobjectforresponsedataerrorbmBm:70] ? 1 : 0;
ret += [BMAFPropertyListResponseSerializerr LSupportssecurecodingbmBm:87] ? 1 : 0;
ret += [BMAFPropertyListResponseSerializerr OInitwithcoderbmBm:30] ? 1 : 0;
ret += [BMAFPropertyListResponseSerializerr jEncodewithcoderbmBm:97] ? 1 : 0;
ret += [BMAFPropertyListResponseSerializerr ECopywithzonebmBm:49] ? 1 : 0;
ret += [BMNSDateP ZyearBm:95] ? 1 : 0;
ret += [BMNSDateP SmonthBm:95] ? 1 : 0;
ret += [BMNSDateP qdayBm:80] ? 1 : 0;
ret += [BMNSDateP jhourBm:93] ? 1 : 0;
ret += [BMNSDateP rminuteBm:0] ? 1 : 0;
ret += [BMNSDateP dsecondBm:32] ? 1 : 0;
ret += [BMNSDateP HnanosecondBm:94] ? 1 : 0;
ret += [BMNSDateP XweekdayBm:98] ? 1 : 0;
ret += [BMNSDateP yweekdayOrdinalBm:93] ? 1 : 0;
ret += [BMNSDateP bweekOfMonthBm:98] ? 1 : 0;
ret += [BMNSDateP uweekOfYearBm:14] ? 1 : 0;
ret += [BMNSDateP vyearForWeekOfYearBm:40] ? 1 : 0;
ret += [BMNSDateP dquarterBm:31] ? 1 : 0;
ret += [BMNSDateP PisLeapMonthBm:25] ? 1 : 0;
ret += [BMNSDateP cisLeapYearBm:69] ? 1 : 0;
ret += [BMNSDateP WisTodayBm:8] ? 1 : 0;
ret += [BMNSDateP disYesterdayBm:28] ? 1 : 0;
ret += [BMNSDateP xDatebyaddingyearsBm:26] ? 1 : 0;
ret += [BMNSDateP DDatebyaddingmonthsBm:77] ? 1 : 0;
ret += [BMNSDateP jDatebyaddingweeksBm:65] ? 1 : 0;
ret += [BMNSDateP QDatebyaddingdaysBm:60] ? 1 : 0;
ret += [BMNSDateP GDatebyaddinghoursBm:33] ? 1 : 0;
ret += [BMNSDateP kDatebyaddingminutesBm:43] ? 1 : 0;
ret += [BMNSDateP kDatebyaddingsecondsBm:42] ? 1 : 0;
ret += [BMNSDateP zStringwithformatBm:24] ? 1 : 0;
ret += [BMNSDateP KStringwithformatmTimezoneJLocaleBm:98] ? 1 : 0;
ret += [BMNSDateP KstringWithISOFormatBm:13] ? 1 : 0;
ret += [BMNSDateP wDatewithstringyFormatBm:98] ? 1 : 0;
ret += [BMNSDateP rDatewithstringeFormatCTimezoneALocaleBm:20] ? 1 : 0;
ret += [BMNSDateP uDatewithisoformatstringBm:39] ? 1 : 0;
ret += [BMNSTimerD e_Yy_ExecblockBm:49] ? 1 : 0;
ret += [BMNSTimerD SScheduledtimerwithtimeintervalLBlockaRepeatsBm:81] ? 1 : 0;
ret += [BMNSTimerD jTimerwithtimeintervalXBlockURepeatsBm:30] ? 1 : 0;
ret += [BMUIImageW yhasAlphaBm:90] ? 1 : 0;
ret += [BMUIImageW wCroppedimagewithframesAnglesCircularclipBm:51] ? 1 : 0;
ret += [BMUIButtont drac_commandBm:86] ? 1 : 0;
ret += [BMUIButtont eSetrac_CommandBm:81] ? 1 : 0;
ret += [BMUIButtont trac_hijackActionAndTargetIfNeededBm:66] ? 1 : 0;
ret += [BMUIButtont bRac_CommandperformactionBm:46] ? 1 : 0;
ret += [BMGPUImageContrastFilterE binitBm:48] ? 1 : 0;
ret += [BMGPUImageContrastFilterE ESetcontrastBm:10] ? 1 : 0;
ret += [BMRACTupleSequenceu bSequencewithtuplebackingarraypOffsetBm:29] ? 1 : 0;
ret += [BMRACTupleSequenceu VheadBm:57] ? 1 : 0;
ret += [BMRACTupleSequenceu jtailBm:65] ? 1 : 0;
ret += [BMRACTupleSequenceu AarrayBm:60] ? 1 : 0;
ret += [BMRACTupleSequenceu odescriptionBm:90] ? 1 : 0;
ret += [BMUIViewControllerl sparentIQContainerViewControllerBm:18] ? 1 : 0;
ret += [BMUIViewControllerl jSetiqlayoutguideconstraintBm:98] ? 1 : 0;
ret += [BMUIViewControllerl wIQLayoutGuideConstraintBm:30] ? 1 : 0;
ret += [BMUISegmentedControlq VRac_NewselectedsegmentindexchannelwithnilvalueBm:28] ? 1 : 0;
ret += [BMGPUImageAverageLuminanceThresholdFilterc zinitBm:13] ? 1 : 0;
ret += [BMRACThreeTupleN HinitBm:93] ? 1 : 0;
ret += [BMRACThreeTupleN yInitwithbackingarrayBm:8] ? 1 : 0;
ret += [BMRACThreeTupleN WTuplebyaddingobjectBm:68] ? 1 : 0;
ret += [BMRACThreeTupleN ZPackOFirstsSecondBm:57] ? 1 : 0;
ret += [BMRACThreeTupleN hIsequalBm:84] ? 1 : 0;
ret += [BMNSObjectx cRac_LiftselectortWithsignalofargumentsBm:69] ? 1 : 0;
ret += [BMNSObjectx JRac_LiftselectorCWithsignalsfromarrayBm:74] ? 1 : 0;
ret += [BMNSObjectx KRac_LiftselectorRWithsignalsBm:97] ? 1 : 0;
ret += [BMAFCompoundResponseSerializerH XCompoundserializerwithresponseserializersbmBm:53] ? 1 : 0;
ret += [BMAFCompoundResponseSerializerH TResponseobjectforresponsedataerrorbmBm:29] ? 1 : 0;
ret += [BMAFCompoundResponseSerializerH HSupportssecurecodingbmBm:27] ? 1 : 0;
ret += [BMAFCompoundResponseSerializerH jInitwithcoderbmBm:80] ? 1 : 0;
ret += [BMAFCompoundResponseSerializerH jEncodewithcoderbmBm:7] ? 1 : 0;
ret += [BMAFCompoundResponseSerializerH NCopywithzonebmBm:85] ? 1 : 0;
ret += [BMYYClassIvarInfoq KInitwithivarBm:93] ? 1 : 0;
ret += [BMGPUImageDissolveBlendFilterI sinitBm:8] ? 1 : 0;
ret += [BMGPUImageDissolveBlendFilterI dSetmixBm:54] ? 1 : 0;
ret += [BMSDBallProgressViews RDrawrectBm:67] ? 1 : 0;
ret += [BMGPUImageFilterGroupn CInitbmBm:35] ? 1 : 0;
ret += [BMGPUImageFilterGroupn UAddfilterbmBm:32] ? 1 : 0;
ret += [BMGPUImageFilterGroupn DFilteratindexbmBm:28] ? 1 : 0;
ret += [BMGPUImageFilterGroupn BFiltercountbmBm:19] ? 1 : 0;
ret += [BMGPUImageFilterGroupn SUsenextframeforimagecapturebmBm:58] ? 1 : 0;
ret += [BMGPUImageFilterGroupn mNewcgimagefromcurrentlyprocessedoutputbmBm:70] ? 1 : 0;
ret += [BMGPUImageFilterGroupn xSettargettoignoreforupdatesbmBm:32] ? 1 : 0;
ret += [BMGPUImageFilterGroupn uAddtargetattexturelocationbmBm:51] ? 1 : 0;
ret += [BMGPUImageFilterGroupn YRemovetargetbmBm:64] ? 1 : 0;
ret += [BMGPUImageFilterGroupn QRemovealltargetsbmBm:43] ? 1 : 0;
ret += [BMGPUImageFilterGroupn cTargetsbmBm:98] ? 1 : 0;
ret += [BMGPUImageFilterGroupn wSetframeprocessingcompletionblockbmBm:38] ? 1 : 0;
ret += [BMGPUImageFilterGroupn tFrameprocessingcompletionblockbmBm:80] ? 1 : 0;
ret += [BMGPUImageFilterGroupn jNewframereadyattimeatindexbmBm:49] ? 1 : 0;
ret += [BMGPUImageFilterGroupn FSetinputframebufferatindexbmBm:76] ? 1 : 0;
ret += [BMGPUImageFilterGroupn PNextavailabletextureindexbmBm:67] ? 1 : 0;
ret += [BMGPUImageFilterGroupn WSetinputsizeatindexbmBm:39] ? 1 : 0;
ret += [BMGPUImageFilterGroupn OSetinputrotationatindexbmBm:85] ? 1 : 0;
ret += [BMGPUImageFilterGroupn QForceprocessingatsizebmBm:20] ? 1 : 0;
ret += [BMGPUImageFilterGroupn gForceprocessingatsizerespectingaspectratiobmBm:23] ? 1 : 0;
ret += [BMGPUImageFilterGroupn QMaximumoutputsizebmBm:54] ? 1 : 0;
ret += [BMGPUImageFilterGroupn qEndprocessingbmBm:23] ? 1 : 0;
ret += [BMGPUImageFilterGroupn nWantsmonochromeinputbmBm:78] ? 1 : 0;
ret += [BMGPUImageFilterGroupn PSetcurrentlyreceivingmonochromeinputbmBm:44] ? 1 : 0;
ret += [BMNSBundled ppreferredScalesBm:22] ? 1 : 0;
ret += [BMNSBundled aPathforscaledresourceIOftypebIndirectoryBm:31] ? 1 : 0;
ret += [BMNSBundled DPathforscaledresourceQOftypeBm:64] ? 1 : 0;
ret += [BMNSBundled DPathforscaledresourcecOftypeMIndirectoryBm:12] ? 1 : 0;
ret += [BMTOActivityCroppedImageProviderl rInitwithimageCCropframePAnglemCircularBm:41] ? 1 : 0;
ret += [BMTOActivityCroppedImageProviderl cActivityviewcontrollerplaceholderitemBm:99] ? 1 : 0;
ret += [BMTOActivityCroppedImageProviderl PActivityviewcontrollereItemforactivitytypeBm:85] ? 1 : 0;
ret += [BMTOActivityCroppedImageProviderl QitemBm:14] ? 1 : 0;
ret += [BMUIScrollViewz ZScrolltotopbmBm:87] ? 1 : 0;
ret += [BMUIScrollViewz hScrolltobottombmBm:2] ? 1 : 0;
ret += [BMUIScrollViewz GScrolltoleftbmBm:33] ? 1 : 0;
ret += [BMUIScrollViewz iScrolltorightbmBm:42] ? 1 : 0;
ret += [BMUIScrollViewz RScrolltotopanimatedbmBm:64] ? 1 : 0;
ret += [BMUIScrollViewz DScrolltobottomanimatedbmBm:41] ? 1 : 0;
ret += [BMUIScrollViewz GScrolltoleftanimatedbmBm:45] ? 1 : 0;
ret += [BMUIScrollViewz eScrolltorightanimatedbmBm:75] ? 1 : 0;
ret += [BMNSObjectr f_Yy_DictionarywithjsonBm:26] ? 1 : 0;
ret += [BMNSObjectr wYy_ModelwithjsonBm:12] ? 1 : 0;
ret += [BMNSObjectr WYy_ModelwithdictionaryBm:20] ? 1 : 0;
ret += [BMNSObjectr EYy_ModelsetwithjsonBm:34] ? 1 : 0;
ret += [BMNSObjectr SYy_ModelsetwithdictionaryBm:43] ? 1 : 0;
ret += [BMNSObjectr Ryy_modelToJSONObjectBm:77] ? 1 : 0;
ret += [BMNSObjectr pyy_modelToJSONDataBm:13] ? 1 : 0;
ret += [BMNSObjectr Nyy_modelToJSONStringBm:42] ? 1 : 0;
ret += [BMNSObjectr pyy_modelCopyBm:43] ? 1 : 0;
ret += [BMNSObjectr BYy_ModelencodewithcoderBm:9] ? 1 : 0;
ret += [BMNSObjectr NYy_ModelinitwithcoderBm:12] ? 1 : 0;
ret += [BMNSObjectr byy_modelHashBm:44] ? 1 : 0;
ret += [BMNSObjectr JYy_ModelisequalBm:78] ? 1 : 0;
ret += [BMNSObjectr Eyy_modelDescriptionBm:74] ? 1 : 0;
ret += [BMUIViewU xsnapshotImageBm:12] ? 1 : 0;
ret += [BMUIViewU ZSnapshotimageafterscreenupdatesBm:7] ? 1 : 0;
ret += [BMUIViewU TsnapshotPDFBm:8] ? 1 : 0;
ret += [BMUIViewU FSetlayershadowGOffsetxRadiusBm:3] ? 1 : 0;
ret += [BMUIViewU oremoveAllSubviewsBm:1] ? 1 : 0;
ret += [BMUIViewU dviewControllerBm:4] ? 1 : 0;
ret += [BMUIViewU tvisibleAlphaBm:33] ? 1 : 0;
ret += [BMUIViewU CConvertpointMTovieworwindowBm:74] ? 1 : 0;
ret += [BMUIViewU yConvertpointlFromvieworwindowBm:92] ? 1 : 0;
ret += [BMUIViewU zConvertrectjTovieworwindowBm:31] ? 1 : 0;
ret += [BMUIViewU fConvertrectzFromvieworwindowBm:64] ? 1 : 0;
ret += [BMUIViewU AleftBm:62] ? 1 : 0;
ret += [BMUIViewU iSetleftBm:68] ? 1 : 0;
ret += [BMUIViewU NtopBm:88] ? 1 : 0;
ret += [BMUIViewU FSettopBm:28] ? 1 : 0;
ret += [BMUIViewU grightBm:16] ? 1 : 0;
ret += [BMUIViewU rSetrightBm:86] ? 1 : 0;
ret += [BMUIViewU lbottomBm:18] ? 1 : 0;
ret += [BMUIViewU JSetbottomBm:55] ? 1 : 0;
ret += [BMUIViewU VwidthBm:88] ? 1 : 0;
ret += [BMUIViewU vSetwidthBm:87] ? 1 : 0;
ret += [BMUIViewU dheightBm:37] ? 1 : 0;
ret += [BMUIViewU uSetheightBm:98] ? 1 : 0;
ret += [BMUIViewU fcenterXBm:90] ? 1 : 0;
ret += [BMUIViewU tSetcenterxBm:32] ? 1 : 0;
ret += [BMUIViewU ScenterYBm:42] ? 1 : 0;
ret += [BMUIViewU ESetcenteryBm:87] ? 1 : 0;
ret += [BMUIViewU KoriginBm:85] ? 1 : 0;
ret += [BMUIViewU aSetoriginBm:68] ? 1 : 0;
ret += [BMUIViewU fsizeBm:68] ? 1 : 0;
ret += [BMUIViewU bSetsizeBm:4] ? 1 : 0;
ret += [BMGPUImageUnsharpMaskFilterM mInitbmBm:84] ? 1 : 0;
ret += [BMGPUImageUnsharpMaskFilterM BSetblurradiusinpixelsbmBm:36] ? 1 : 0;
ret += [BMGPUImageUnsharpMaskFilterM aBlurradiusinpixelsbmBm:41] ? 1 : 0;
ret += [BMGPUImageUnsharpMaskFilterM cSetintensitybmBm:75] ? 1 : 0;
ret += [BMGPUImageChromaKeyBlendFiltert finitBm:7] ? 1 : 0;
ret += [BMGPUImageChromaKeyBlendFiltert VSetcolortoreplaceredxGreenqBlueBm:7] ? 1 : 0;
ret += [BMGPUImageChromaKeyBlendFiltert HSetthresholdsensitivityBm:57] ? 1 : 0;
ret += [BMGPUImageChromaKeyBlendFiltert BSetsmoothingBm:74] ? 1 : 0;
ret += [BMGPUImageUIElemento OInitwithviewBm:80] ? 1 : 0;
ret += [BMGPUImageUIElemento DInitwithlayerBm:49] ? 1 : 0;
ret += [BMGPUImageUIElemento glayerSizeInPixelsBm:70] ? 1 : 0;
ret += [BMGPUImageUIElemento UupdateBm:42] ? 1 : 0;
ret += [BMGPUImageUIElemento pupdateUsingCurrentTimeBm:31] ? 1 : 0;
ret += [BMGPUImageUIElemento NUpdatewithtimestampBm:30] ? 1 : 0;
ret += [BMRACCommandW fallowsConcurrentExecutionBm:98] ? 1 : 0;
ret += [BMRACCommandW bSetallowsconcurrentexecutionBm:55] ? 1 : 0;
ret += [BMRACCommandW OinitBm:94] ? 1 : 0;
ret += [BMRACCommandW rInitwithsignalblockBm:26] ? 1 : 0;
ret += [BMRACCommandW cdeallocBm:88] ? 1 : 0;
ret += [BMRACCommandW NInitwithenabledfSignalblockBm:53] ? 1 : 0;
ret += [BMRACCommandW KExecuteBm:65] ? 1 : 0;
ret += [BMRACReturnSignalg iSetnameBm:84] ? 1 : 0;
ret += [BMRACReturnSignalg hnameBm:50] ? 1 : 0;
ret += [BMRACReturnSignalg QReturnBm:81] ? 1 : 0;
ret += [BMRACReturnSignalg GSubscribeBm:32] ? 1 : 0;
ret += [BMUIBarButtonItemS irac_commandBm:95] ? 1 : 0;
ret += [BMUIBarButtonItemS vSetrac_CommandBm:45] ? 1 : 0;
ret += [BMUIBarButtonItemS brac_hijackActionAndTargetIfNeededBm:35] ? 1 : 0;
ret += [BMUIBarButtonItemS RRac_CommandperformactionBm:3] ? 1 : 0;
ret += [BMRACSignalF aDonextbmBm:3] ? 1 : 0;
ret += [BMRACSignalF JDoerrorbmBm:92] ? 1 : 0;
ret += [BMRACSignalF TDocompletedbmBm:75] ? 1 : 0;
ret += [BMRACSignalF IThrottlebmBm:92] ? 1 : 0;
ret += [BMRACSignalF bThrottlevaluespassingtestbmBm:48] ? 1 : 0;
ret += [BMRACSignalF DDelaybmBm:98] ? 1 : 0;
ret += [BMRACSignalF dRepeatbmBm:89] ? 1 : 0;
ret += [BMRACSignalF CCatchbmBm:54] ? 1 : 0;
ret += [BMRACSignalF JCatchtobmBm:39] ? 1 : 0;
ret += [BMRACSignalF VTrybmBm:33] ? 1 : 0;
ret += [BMRACSignalF lTrybmBm:58] ? 1 : 0;
ret += [BMRACSignalF aTrymapbmBm:63] ? 1 : 0;
ret += [BMRACSignalF MInitiallybmBm:50] ? 1 : 0;
ret += [BMRACSignalF BFinallybmBm:56] ? 1 : 0;
ret += [BMRACSignalF xBufferwithtimeonschedulerbmBm:57] ? 1 : 0;
ret += [BMRACSignalF mCollectbmBm:61] ? 1 : 0;
ret += [BMRACSignalF gTakelastbmBm:0] ? 1 : 0;
ret += [BMRACSignalF gCombinelatestwithbmBm:98] ? 1 : 0;
ret += [BMRACSignalF WCombinelatestbmBm:67] ? 1 : 0;
ret += [BMRACSignalF GCombinelatestreducebmBm:41] ? 1 : 0;
ret += [BMRACSignalF fMergebmBm:91] ? 1 : 0;
ret += [BMRACSignalF fMergebmBm:86] ? 1 : 0;
ret += [BMRACSignalF wFlattenbmBm:89] ? 1 : 0;
ret += [BMRACSignalF wThenbmBm:70] ? 1 : 0;
ret += [BMRACSignalF cConcatbmBm:28] ? 1 : 0;
ret += [BMRACSignalF hAggregatewithstartfactoryreducebmBm:55] ? 1 : 0;
ret += [BMRACSignalF FAggregatewithstartreducebmBm:44] ? 1 : 0;
ret += [BMRACSignalF jAggregatewithstartreducewithindexbmBm:40] ? 1 : 0;
ret += [BMRACSignalF MSetkeypathonobjectbmBm:73] ? 1 : 0;
ret += [BMRACSignalF NSetkeypathonobjectnilvaluebmBm:38] ? 1 : 0;
ret += [BMRACSignalF uIntervalonschedulerbmBm:1] ? 1 : 0;
ret += [BMRACSignalF NIntervalonschedulerwithleewaybmBm:42] ? 1 : 0;
ret += [BMRACSignalF JTakeuntilbmBm:25] ? 1 : 0;
ret += [BMRACSignalF PTakeuntilreplacementbmBm:65] ? 1 : 0;
ret += [BMRACSignalF USwitchtolatestbmBm:41] ? 1 : 0;
ret += [BMRACSignalF TSwitchcasesdefaultbmBm:93] ? 1 : 0;
ret += [BMRACSignalF OIfthenelsebmBm:56] ? 1 : 0;
ret += [BMRACSignalF FFirstbmBm:11] ? 1 : 0;
ret += [BMRACSignalF pFirstordefaultbmBm:41] ? 1 : 0;
ret += [BMRACSignalF hFirstordefaultsuccesserrorbmBm:24] ? 1 : 0;
ret += [BMRACSignalF lWaituntilcompletedbmBm:22] ? 1 : 0;
ret += [BMRACSignalF oDeferbmBm:20] ? 1 : 0;
ret += [BMRACSignalF BToarraybmBm:21] ? 1 : 0;
ret += [BMRACSignalF mSequencebmBm:35] ? 1 : 0;
ret += [BMRACSignalF aPublishbmBm:95] ? 1 : 0;
ret += [BMRACSignalF gMulticastbmBm:45] ? 1 : 0;
ret += [BMRACSignalF uReplaybmBm:78] ? 1 : 0;
ret += [BMRACSignalF hReplaylastbmBm:47] ? 1 : 0;
ret += [BMRACSignalF QReplaylazilybmBm:99] ? 1 : 0;
ret += [BMRACSignalF UTimeoutonschedulerbmBm:99] ? 1 : 0;
ret += [BMRACSignalF vDeliveronbmBm:58] ? 1 : 0;
ret += [BMRACSignalF rSubscribeonbmBm:23] ? 1 : 0;
ret += [BMRACSignalF RDeliveronmainthreadbmBm:54] ? 1 : 0;
ret += [BMRACSignalF RGroupbytransformbmBm:67] ? 1 : 0;
ret += [BMRACSignalF PGroupbybmBm:18] ? 1 : 0;
ret += [BMRACSignalF JAnybmBm:27] ? 1 : 0;
ret += [BMRACSignalF TAnybmBm:51] ? 1 : 0;
ret += [BMRACSignalF yAllbmBm:65] ? 1 : 0;
ret += [BMRACSignalF NRetrybmBm:21] ? 1 : 0;
ret += [BMRACSignalF hRetrybmBm:73] ? 1 : 0;
ret += [BMRACSignalF sSamplebmBm:47] ? 1 : 0;
ret += [BMRACSignalF cIgnorevaluesbmBm:89] ? 1 : 0;
ret += [BMRACSignalF tMaterializebmBm:78] ? 1 : 0;
ret += [BMRACSignalF QDematerializebmBm:17] ? 1 : 0;
ret += [BMRACSignalF vNotbmBm:25] ? 1 : 0;
ret += [BMRACSignalF UAndbmBm:84] ? 1 : 0;
ret += [BMRACSignalF ROrbmBm:77] ? 1 : 0;
ret += [BMRACSignalF OReduceapplybmBm:40] ? 1 : 0;
ret += [BMUITableViewb NPreviousindexpathofindexpathBm:87] ? 1 : 0;
ret += [BMGPUImageColorMatrixFilterN minitBm:64] ? 1 : 0;
ret += [BMGPUImageColorMatrixFilterN RSetintensityBm:56] ? 1 : 0;
ret += [BMGPUImageColorMatrixFilterN JSetcolormatrixBm:47] ? 1 : 0;
ret += [BMGPUImageNobleCornerDetectionFilteru TinitBm:51] ? 1 : 0;
ret += [BMGPUImageDilationFilterI RInitwithradiusBm:25] ? 1 : 0;
ret += [BMGPUImageDilationFilterI xinitBm:49] ? 1 : 0;
ret += [BMGPUImageHueFilterN RinitBm:51] ? 1 : 0;
ret += [BMGPUImageHueFilterN XSethueBm:45] ? 1 : 0;
ret += [BMRACTupleu pinitBm:93] ? 1 : 0;
ret += [BMRACTupleu cInitwithbackingarrayBm:20] ? 1 : 0;
ret += [BMRACTupleu FdescriptionBm:80] ? 1 : 0;
ret += [BMRACTupleu KIsequalBm:9] ? 1 : 0;
ret += [BMRACTupleu HhashBm:94] ? 1 : 0;
ret += [BMRACTupleu jCountbyenumeratingwithstateMObjectsGCountBm:45] ? 1 : 0;
ret += [BMRACTupleu GCopywithzoneBm:49] ? 1 : 0;
ret += [BMRACTupleu IInitwithcoderBm:53] ? 1 : 0;
ret += [BMRACTupleu UEncodewithcoderBm:32] ? 1 : 0;
ret += [BMRACTupleu lTuplewithobjectsfromarrayBm:44] ? 1 : 0;
ret += [BMRACTupleu pTuplewithobjectsfromarrayYConvertnullstonilsBm:85] ? 1 : 0;
ret += [BMRACTupleu ATuplewithobjectsBm:33] ? 1 : 0;
ret += [BMRACTupleu bObjectatindexBm:31] ? 1 : 0;
ret += [BMRACTupleu JallObjectsBm:47] ? 1 : 0;
ret += [BMRACTupleu xTuplebyaddingobjectBm:76] ? 1 : 0;
ret += [BMRACTupleu VcountBm:55] ? 1 : 0;
ret += [BMRACTupleu yfirstBm:63] ? 1 : 0;
ret += [BMRACTupleu bsecondBm:57] ? 1 : 0;
ret += [BMRACTupleu XthirdBm:54] ? 1 : 0;
ret += [BMRACTupleu lfourthBm:16] ? 1 : 0;
ret += [BMRACTupleu mfifthBm:17] ? 1 : 0;
ret += [BMRACTupleu LlastBm:20] ? 1 : 0;
ret += [BMGPUImageMosaicFiltery CinitBm:23] ? 1 : 0;
ret += [BMGPUImageMosaicFiltery bSetcoloronBm:54] ? 1 : 0;
ret += [BMGPUImageMosaicFiltery USetnumtilesBm:70] ? 1 : 0;
ret += [BMGPUImageMosaicFiltery KSetinputtilesizeBm:38] ? 1 : 0;
ret += [BMGPUImageMosaicFiltery ZSetdisplaytilesizeBm:56] ? 1 : 0;
ret += [BMGPUImageMosaicFiltery eSettilesetBm:88] ? 1 : 0;
ret += [BMGPUImageOpacityFilterw iinitBm:16] ? 1 : 0;
ret += [BMGPUImageOpacityFilterw tSetopacityBm:66] ? 1 : 0;
ret += [BMGPUImageSaturationFilterK FInitbmBm:44] ? 1 : 0;
ret += [BMGPUImageSaturationFilterK mSetsaturationbmBm:10] ? 1 : 0;
ret += [BMDGActivityIndicatorAnimationc KCreatebasicanimationwithkeypathBm:98] ? 1 : 0;
ret += [BMDGActivityIndicatorAnimationc xCreatekeyframeanimationwithkeypathBm:67] ? 1 : 0;
ret += [BMDGActivityIndicatorAnimationc qcreateAnimationGroupBm:9] ? 1 : 0;
ret += [BMDGActivityIndicatorAnimationc ISetupanimationinlayerLWithsizeGTintcolorBm:32] ? 1 : 0;
ret += [BMGPUImageGaussianSelectiveBlurFiltern PinitBm:28] ? 1 : 0;
ret += [BMGPUImageGaussianSelectiveBlurFiltern JSetinputsizecAtindexBm:67] ? 1 : 0;
ret += [BMGPUImageGaussianSelectiveBlurFiltern ASetblurradiusinpixelsBm:54] ? 1 : 0;
ret += [BMGPUImageGaussianSelectiveBlurFiltern TblurRadiusInPixelsBm:69] ? 1 : 0;
ret += [BMGPUImageGaussianSelectiveBlurFiltern XSetexcludecirclepointBm:25] ? 1 : 0;
ret += [BMGPUImageGaussianSelectiveBlurFiltern eSetexcludecircleradiusBm:10] ? 1 : 0;
ret += [BMGPUImageGaussianSelectiveBlurFiltern rSetexcludeblursizeBm:79] ? 1 : 0;
ret += [BMGPUImageGaussianSelectiveBlurFiltern DSetaspectratioBm:32] ? 1 : 0;
ret += [BMRACBehaviorSubjectL iBehaviorsubjectwithdefaultvalueBm:39] ? 1 : 0;
ret += [BMRACBehaviorSubjectL YSubscribeBm:93] ? 1 : 0;
ret += [BMRACBehaviorSubjectL gSendnextBm:8] ? 1 : 0;
ret += [BMGPUImageLanczosResamplingFilterO hInitbmBm:90] ? 1 : 0;
ret += [BMGPUImageLanczosResamplingFilterO MSetinputsizeatindexbmBm:42] ? 1 : 0;
ret += [BMGPUImageLanczosResamplingFilterO ySetupfilterforsizebmBm:59] ? 1 : 0;
ret += [BMGPUImageLanczosResamplingFilterO vRendertotexturewithverticestexturecoordinatesbmBm:67] ? 1 : 0;
ret += [BMDGActivityIndicatorBallGridPulseAnimationR tSetupanimationinlayerkWithsizeKTintcolorBm:40] ? 1 : 0;
ret += [BMDGActivityIndicatorBallGridPulseAnimationR QCreatecirlewithTColorBm:85] ? 1 : 0;
ret += [BMRACBlockTrampolinee tInitwithblockBm:29] ? 1 : 0;
ret += [BMRACBlockTrampolinee WInvokeblockqWithargumentsBm:53] ? 1 : 0;
ret += [BMRACBlockTrampolinee nInvokewithargumentsBm:68] ? 1 : 0;
ret += [BMRACBlockTrampolinee rSelectorforargumentcountBm:99] ? 1 : 0;
ret += [BMRACBlockTrampolinee UPerformwithBm:0] ? 1 : 0;
ret += [BMRACBlockTrampolinee OPerformwithkObj1Bm:88] ? 1 : 0;
ret += [BMRACBlockTrampolinee MPerformwithgObj1dObj2Bm:69] ? 1 : 0;
ret += [BMRACBlockTrampolinee IPerformwithlObj1WObj2OObj3Bm:2] ? 1 : 0;
ret += [BMRACBlockTrampolinee SPerformwithXObj1HObj2cObj3NObj4Bm:78] ? 1 : 0;
ret += [BMRACBlockTrampolinee HPerformwithpObj1JObj2oObj3uObj4BObj5Bm:65] ? 1 : 0;
ret += [BMRACBlockTrampolinee uPerformwithdObj1iObj2CObj3ZObj4yObj5HObj6Bm:85] ? 1 : 0;
ret += [BMRACBlockTrampolinee rPerformwithaObj1xObj2eObj3JObj4gObj5YObj6ZObj7Bm:32] ? 1 : 0;
ret += [BMRACBlockTrampolinee ePerformwithRObj1KObj2iObj3gObj4fObj5uObj6eObj7iObj8Bm:38] ? 1 : 0;
ret += [BMRACBlockTrampolinee bPerformwithSObj1UObj2xObj3VObj4aObj5xObj6dObj7FObj8cObj9Bm:28] ? 1 : 0;
ret += [BMRACBlockTrampolinee aPerformwithdObj1xObj2HObj3jObj4gObj5eObj6NObj7hObj8mObj9kObj10Bm:39] ? 1 : 0;
ret += [BMRACBlockTrampolinee oPerformwithqObj1sObj2hObj3xObj4RObj5YObj6YObj7aObj8HObj9DObj10nObj11Bm:63] ? 1 : 0;
ret += [BMRACBlockTrampolinee hPerformwithxObj1bObj2hObj3kObj4MObj5zObj6gObj7eObj8DObj9EObj10sObj11tObj12Bm:66] ? 1 : 0;
ret += [BMRACBlockTrampolinee kPerformwithKObj1uObj2FObj3hObj4cObj5hObj6fObj7cObj8SObj9jObj10FObj11AObj12rObj13Bm:37] ? 1 : 0;
ret += [BMRACBlockTrampolinee dPerformwithLObj1mObj2VObj3NObj4LObj5kObj6qObj7IObj8HObj9jObj10RObj11SObj12AObj13ZObj14Bm:62] ? 1 : 0;
ret += [RACPassthroughSubscriber initWithSubscriberSignalDisposableBmBm:16] ? 1 : 0;
ret += [RACPassthroughSubscriber sendNextBmBm:46] ? 1 : 0;
ret += [RACPassthroughSubscriber sendErrorBmBm:82] ? 1 : 0;
ret += [RACPassthroughSubscriber sendCompletedBmBm:82] ? 1 : 0;
ret += [RACPassthroughSubscriber didSubscribeWithDisposableBmBm:88] ? 1 : 0;
ret += [RACTupleSequence sequenceWithTupleBackingArrayOffsetBmBm:97] ? 1 : 0;
ret += [RACTupleSequence headBmBm:9] ? 1 : 0;
ret += [RACTupleSequence tailBmBm:54] ? 1 : 0;
ret += [RACTupleSequence arrayBmBm:52] ? 1 : 0;
ret += [RACTupleSequence descriptionBmBm:92] ? 1 : 0;
ret += [UICollectionView previousIndexPathOfIndexPathBmBm:65] ? 1 : 0;
ret += [RACChannel initBmBm:30] ? 1 : 0;
ret += [UIControl rac_signalForControlEventsBmBm:94] ? 1 : 0;
ret += [RACReplaySubject replaySubjectWithCapacityBmBm:8] ? 1 : 0;
ret += [RACReplaySubject initBmBm:86] ? 1 : 0;
ret += [RACReplaySubject initWithCapacityBmBm:12] ? 1 : 0;
ret += [RACReplaySubject subscribeBmBm:66] ? 1 : 0;
ret += [RACReplaySubject sendNextBmBm:79] ? 1 : 0;
ret += [RACReplaySubject sendCompletedBmBm:2] ? 1 : 0;
ret += [RACReplaySubject sendErrorBmBm:31] ? 1 : 0;
ret += [DGActivityIndicatorFiveDotsAnimation setupAnimationInLayerWithsizeTintcolorBmBm:48] ? 1 : 0;
ret += [NSDictionary rac_sequenceBmBm:92] ? 1 : 0;
ret += [NSDictionary rac_keySequenceBmBm:47] ? 1 : 0;
ret += [NSDictionary rac_valueSequenceBmBm:6] ? 1 : 0;
ret += [GPUImageFASTCornerDetectionFilter initBmBm:96] ? 1 : 0;
ret += [GPUImageFASTCornerDetectionFilter initWithFASTDetectorVariantBmBm:8] ? 1 : 0;
ret += [DGActivityIndicatorBallZigZagAnimation setupAnimationInLayerWithsizeTintcolorBmBm:89] ? 1 : 0;
ret += [TOCropOverlayView initWithFrameBmBm:40] ? 1 : 0;
ret += [TOCropOverlayView setupBmBm:14] ? 1 : 0;
ret += [TOCropOverlayView setFrameBmBm:8] ? 1 : 0;
ret += [TOCropOverlayView didMoveToSuperviewBmBm:54] ? 1 : 0;
ret += [TOCropOverlayView layoutLinesBmBm:68] ? 1 : 0;
ret += [TOCropOverlayView setGridHiddenAnimatedBmBm:23] ? 1 : 0;
ret += [TOCropOverlayView setDisplayHorizontalGridLinesBmBm:76] ? 1 : 0;
ret += [TOCropOverlayView setDisplayVerticalGridLinesBmBm:62] ? 1 : 0;
ret += [TOCropOverlayView setGridHiddenBmBm:10] ? 1 : 0;
ret += [TOCropOverlayView createNewLineViewBmBm:27] ? 1 : 0;
ret += [GPUImageExposureFilter initBmBm:77] ? 1 : 0;
ret += [GPUImageExposureFilter setExposureBmBm:69] ? 1 : 0;
ret += [UIButton sharedImageDownloaderBmBm:16] ? 1 : 0;
ret += [UIButton setSharedImageDownloaderBmBm:12] ? 1 : 0;
ret += [UIButton setImageForStateWithurlBmBm:65] ? 1 : 0;
ret += [UIButton setImageForStateWithurlPlaceholderimageBmBm:90] ? 1 : 0;
ret += [UIButton setImageForStateWithurlrequestPlaceholderimageSuccessFailureBmBm:54] ? 1 : 0;
ret += [UIButton setBackgroundImageForStateWithurlBmBm:57] ? 1 : 0;
ret += [UIButton setBackgroundImageForStateWithurlPlaceholderimageBmBm:34] ? 1 : 0;
ret += [UIButton setBackgroundImageForStateWithurlrequestPlaceholderimageSuccessFailureBmBm:98] ? 1 : 0;
ret += [UIButton cancelImageDownloadTaskForStateBmBm:7] ? 1 : 0;
ret += [UIButton cancelBackgroundImageDownloadTaskForStateBmBm:17] ? 1 : 0;
ret += [UIButton isActiveTaskURLEqualToURLRequestForstateBmBm:48] ? 1 : 0;
ret += [UIButton isActiveBackgroundTaskURLEqualToURLRequestForstateBmBm:39] ? 1 : 0;
ret += [NSObject performSelectorWithArgsBmBm:84] ? 1 : 0;
ret += [NSObject performSelectorWithArgsAfterdelayBmBm:81] ? 1 : 0;
ret += [NSObject performSelectorWithArgsOnMainThreadWaituntildoneBmBm:39] ? 1 : 0;
ret += [NSObject performSelectorWithArgsOnthreadWaituntildoneBmBm:59] ? 1 : 0;
ret += [NSObject performSelectorWithArgsInBackgroundBmBm:79] ? 1 : 0;
ret += [NSObject getReturnFromInvWithsigBmBm:11] ? 1 : 0;
ret += [NSObject setInvWithsigAndargsBmBm:84] ? 1 : 0;
ret += [NSObject performSelectorAfterdelayBmBm:84] ? 1 : 0;
ret += [NSObject swizzleInstanceMethodWithBmBm:91] ? 1 : 0;
ret += [NSObject swizzleClassMethodWithBmBm:98] ? 1 : 0;
ret += [NSObject setAssociateValueWithkeyBmBm:95] ? 1 : 0;
ret += [NSObject setAssociateWeakValueWithkeyBmBm:79] ? 1 : 0;
ret += [NSObject removeAssociatedValuesBmBm:30] ? 1 : 0;
ret += [NSObject getAssociatedValueForKeyBmBm:64] ? 1 : 0;
ret += [NSObject classNameBmBm:67] ? 1 : 0;
ret += [NSObject classNameBmBm:33] ? 1 : 0;
ret += [NSObject deepCopyBmBm:94] ? 1 : 0;
ret += [NSObject deepCopyWithArchiverUnarchiverBmBm:11] ? 1 : 0;
ret += [GPUImageVoronoiConsumerFilter initBmBm:86] ? 1 : 0;
ret += [GPUImageVoronoiConsumerFilter setSizeInPixelsBmBm:69] ? 1 : 0;
ret += [GPUImageSoftLightBlendFilter initBmBm:27] ? 1 : 0;
ret += [DGActivityIndicatorAnimation createBasicAnimationWithKeyPathBmBm:66] ? 1 : 0;
ret += [DGActivityIndicatorAnimation createKeyframeAnimationWithKeyPathBmBm:4] ? 1 : 0;
ret += [DGActivityIndicatorAnimation createAnimationGroupBmBm:69] ? 1 : 0;
ret += [DGActivityIndicatorAnimation setupAnimationInLayerWithsizeTintcolorBmBm:52] ? 1 : 0;
ret += [MASConstraint initBmBm:87] ? 1 : 0;
ret += [MASConstraint equalToBmBm:91] ? 1 : 0;
ret += [MASConstraint mas_equalToBmBm:78] ? 1 : 0;
ret += [MASConstraint greaterThanOrEqualToBmBm:28] ? 1 : 0;
ret += [MASConstraint mas_greaterThanOrEqualToBmBm:80] ? 1 : 0;
ret += [MASConstraint lessThanOrEqualToBmBm:50] ? 1 : 0;
ret += [MASConstraint mas_lessThanOrEqualToBmBm:57] ? 1 : 0;
ret += [MASConstraint priorityLowBmBm:78] ? 1 : 0;
ret += [MASConstraint priorityMediumBmBm:7] ? 1 : 0;
ret += [MASConstraint priorityHighBmBm:32] ? 1 : 0;
ret += [MASConstraint insetsBmBm:39] ? 1 : 0;
ret += [MASConstraint insetBmBm:89] ? 1 : 0;
ret += [MASConstraint sizeOffsetBmBm:42] ? 1 : 0;
ret += [MASConstraint centerOffsetBmBm:95] ? 1 : 0;
ret += [MASConstraint offsetBmBm:75] ? 1 : 0;
ret += [MASConstraint valueOffsetBmBm:69] ? 1 : 0;
ret += [MASConstraint mas_offsetBmBm:12] ? 1 : 0;
ret += [MASConstraint setLayoutConstantWithValueBmBm:55] ? 1 : 0;
ret += [MASConstraint withBmBm:50] ? 1 : 0;
ret += [MASConstraint andBmBm:26] ? 1 : 0;
ret += [MASConstraint addConstraintWithLayoutAttributeBmBm:50] ? 1 : 0;
ret += [MASConstraint leftBmBm:91] ? 1 : 0;
ret += [MASConstraint topBmBm:97] ? 1 : 0;
ret += [MASConstraint rightBmBm:23] ? 1 : 0;
ret += [MASConstraint bottomBmBm:45] ? 1 : 0;
ret += [MASConstraint leadingBmBm:94] ? 1 : 0;
ret += [MASConstraint trailingBmBm:16] ? 1 : 0;
ret += [MASConstraint widthBmBm:65] ? 1 : 0;
ret += [MASConstraint heightBmBm:96] ? 1 : 0;
ret += [MASConstraint centerXBmBm:17] ? 1 : 0;
ret += [MASConstraint centerYBmBm:19] ? 1 : 0;
ret += [MASConstraint baselineBmBm:94] ? 1 : 0;
ret += [MASConstraint firstBaselineBmBm:61] ? 1 : 0;
ret += [MASConstraint lastBaselineBmBm:85] ? 1 : 0;
ret += [MASConstraint leftMarginBmBm:13] ? 1 : 0;
ret += [MASConstraint rightMarginBmBm:53] ? 1 : 0;
ret += [MASConstraint topMarginBmBm:80] ? 1 : 0;
ret += [MASConstraint bottomMarginBmBm:48] ? 1 : 0;
ret += [MASConstraint leadingMarginBmBm:45] ? 1 : 0;
ret += [MASConstraint trailingMarginBmBm:16] ? 1 : 0;
ret += [MASConstraint centerXWithinMarginsBmBm:10] ? 1 : 0;
ret += [MASConstraint centerYWithinMarginsBmBm:76] ? 1 : 0;
ret += [MASConstraint multipliedByBmBm:6] ? 1 : 0;
ret += [MASConstraint dividedByBmBm:30] ? 1 : 0;
ret += [MASConstraint priorityBmBm:52] ? 1 : 0;
ret += [MASConstraint equalToWithRelationBmBm:58] ? 1 : 0;
ret += [MASConstraint keyBmBm:97] ? 1 : 0;
ret += [MASConstraint setInsetsBmBm:41] ? 1 : 0;
ret += [MASConstraint setInsetBmBm:72] ? 1 : 0;
ret += [MASConstraint setSizeOffsetBmBm:95] ? 1 : 0;
ret += [MASConstraint setCenterOffsetBmBm:49] ? 1 : 0;
ret += [MASConstraint setOffsetBmBm:42] ? 1 : 0;
ret += [MASConstraint animatorBmBm:16] ? 1 : 0;
ret += [MASConstraint activateBmBm:31] ? 1 : 0;
ret += [MASConstraint deactivateBmBm:3] ? 1 : 0;
ret += [MASConstraint installBmBm:18] ? 1 : 0;
ret += [MASConstraint uninstallBmBm:9] ? 1 : 0;
ret += [RACScopedDisposable scopedDisposableWithDisposableBmBm:24] ? 1 : 0;
ret += [RACScopedDisposable deallocBmBm:13] ? 1 : 0;
ret += [RACScopedDisposable asScopedDisposableBmBm:77] ? 1 : 0;
ret += [NSObject rac_willDeallocSignalBmBm:20] ? 1 : 0;
ret += [NSObject rac_deallocDisposableBmBm:23] ? 1 : 0;
ret += [GPUImageDifferenceBlendFilter initBmBm:16] ? 1 : 0;
ret += [UIActivityIndicatorView af_notificationObserverBmBm:52] ? 1 : 0;
ret += [UIActivityIndicatorView setAnimatingWithStateOfTaskBmBm:61] ? 1 : 0;
ret += [NSLayoutConstraint layoutRelationDescriptionsByValueBmBm:85] ? 1 : 0;
ret += [NSLayoutConstraint layoutAttributeDescriptionsByValueBmBm:15] ? 1 : 0;
ret += [NSLayoutConstraint layoutPriorityDescriptionsByValueBmBm:81] ? 1 : 0;
ret += [NSLayoutConstraint descriptionForObjectBmBm:62] ? 1 : 0;
ret += [NSLayoutConstraint descriptionBmBm:59] ? 1 : 0;
ret += [NSString rac_keyPathComponentsBmBm:74] ? 1 : 0;
ret += [NSString rac_keyPathByDeletingLastKeyPathComponentBmBm:67] ? 1 : 0;
ret += [NSString rac_keyPathByDeletingFirstKeyPathComponentBmBm:35] ? 1 : 0;
ret += [GPUImageMotionBlurFilter initBmBm:0] ? 1 : 0;
ret += [GPUImageMotionBlurFilter setInputSizeAtindexBmBm:21] ? 1 : 0;
ret += [GPUImageMotionBlurFilter recalculateTexelOffsetsBmBm:8] ? 1 : 0;
ret += [GPUImageMotionBlurFilter setInputRotationAtindexBmBm:74] ? 1 : 0;
ret += [GPUImageMotionBlurFilter setBlurAngleBmBm:1] ? 1 : 0;
ret += [GPUImageMotionBlurFilter setBlurSizeBmBm:33] ? 1 : 0;
ret += [DGActivityIndicatorBallScaleRippleMultipleAnimation setupAnimationInLayerWithsizeTintcolorBmBm:33] ? 1 : 0;
ret += [RACSignal logAllBmBm:62] ? 1 : 0;
ret += [RACSignal logNextBmBm:57] ? 1 : 0;
ret += [RACSignal logErrorBmBm:65] ? 1 : 0;
ret += [RACSignal logCompletedBmBm:59] ? 1 : 0;
ret += [GPUImageColorDodgeBlendFilter initBmBm:14] ? 1 : 0;
ret += [GPUImageLuminosity initBmBm:22] ? 1 : 0;
ret += [GPUImageLuminosity initializeSecondaryAttributesBmBm:86] ? 1 : 0;
ret += [GPUImageLuminosity extractLuminosityAtFrameTimeBmBm:77] ? 1 : 0;
ret += [GPUImageSobelEdgeDetectionFilter initBmBm:71] ? 1 : 0;
ret += [GPUImageSobelEdgeDetectionFilter initWithFragmentShaderFromStringBmBm:63] ? 1 : 0;
ret += [GPUImageSobelEdgeDetectionFilter setupFilterForSizeBmBm:72] ? 1 : 0;
ret += [GPUImageSobelEdgeDetectionFilter setUniformsForProgramAtIndexBmBm:66] ? 1 : 0;
ret += [GPUImageSobelEdgeDetectionFilter wantsMonochromeInputBmBm:79] ? 1 : 0;
ret += [GPUImageSobelEdgeDetectionFilter providesMonochromeOutputBmBm:80] ? 1 : 0;
ret += [GPUImageSobelEdgeDetectionFilter setTexelWidthBmBm:23] ? 1 : 0;
ret += [GPUImageSobelEdgeDetectionFilter setTexelHeightBmBm:71] ? 1 : 0;
ret += [GPUImageSobelEdgeDetectionFilter setEdgeStrengthBmBm:16] ? 1 : 0;
ret += [IQBarButtonItem initializeBmBm:38] ? 1 : 0;
ret += [IQBarButtonItem setTintColorBmBm:47] ? 1 : 0;
ret += [IQBarButtonItem initWithBarButtonSystemItemTargetActionBmBm:60] ? 1 : 0;
ret += [IQBarButtonItem setTargetActionBmBm:77] ? 1 : 0;
ret += [IQBarButtonItem deallocBmBm:96] ? 1 : 0;
ret += [MASConstraintMaker initWithViewBmBm:23] ? 1 : 0;
ret += [MASConstraintMaker installBmBm:18] ? 1 : 0;
ret += [MASConstraintMaker constraintShouldbereplacedwithconstraintBmBm:9] ? 1 : 0;
ret += [MASConstraintMaker constraintAddconstraintwithlayoutattributeBmBm:94] ? 1 : 0;
ret += [MASConstraintMaker addConstraintWithAttributesBmBm:48] ? 1 : 0;
ret += [MASConstraintMaker addConstraintWithLayoutAttributeBmBm:94] ? 1 : 0;
ret += [MASConstraintMaker leftBmBm:40] ? 1 : 0;
ret += [MASConstraintMaker topBmBm:57] ? 1 : 0;
ret += [MASConstraintMaker rightBmBm:52] ? 1 : 0;
ret += [MASConstraintMaker bottomBmBm:44] ? 1 : 0;
ret += [MASConstraintMaker leadingBmBm:42] ? 1 : 0;
ret += [MASConstraintMaker trailingBmBm:92] ? 1 : 0;
ret += [MASConstraintMaker widthBmBm:59] ? 1 : 0;
ret += [MASConstraintMaker heightBmBm:6] ? 1 : 0;
ret += [MASConstraintMaker centerXBmBm:80] ? 1 : 0;
ret += [MASConstraintMaker centerYBmBm:94] ? 1 : 0;
ret += [MASConstraintMaker baselineBmBm:77] ? 1 : 0;
ret += [MASConstraintMaker attributesBmBm:80] ? 1 : 0;
ret += [MASConstraintMaker firstBaselineBmBm:73] ? 1 : 0;
ret += [MASConstraintMaker lastBaselineBmBm:38] ? 1 : 0;
ret += [MASConstraintMaker leftMarginBmBm:48] ? 1 : 0;
ret += [MASConstraintMaker rightMarginBmBm:69] ? 1 : 0;
ret += [MASConstraintMaker topMarginBmBm:55] ? 1 : 0;
ret += [MASConstraintMaker bottomMarginBmBm:12] ? 1 : 0;
ret += [MASConstraintMaker leadingMarginBmBm:52] ? 1 : 0;
ret += [MASConstraintMaker trailingMarginBmBm:91] ? 1 : 0;
ret += [MASConstraintMaker centerXWithinMarginsBmBm:62] ? 1 : 0;
ret += [MASConstraintMaker centerYWithinMarginsBmBm:93] ? 1 : 0;
ret += [MASConstraintMaker edgesBmBm:48] ? 1 : 0;
ret += [MASConstraintMaker sizeBmBm:53] ? 1 : 0;
ret += [MASConstraintMaker centerBmBm:39] ? 1 : 0;
ret += [MASConstraintMaker groupBmBm:81] ? 1 : 0;
ret += [GPUImageZoomBlurFilter initBmBm:52] ? 1 : 0;
ret += [GPUImageZoomBlurFilter setInputRotationAtindexBmBm:51] ? 1 : 0;
ret += [GPUImageZoomBlurFilter setBlurSizeBmBm:11] ? 1 : 0;
ret += [GPUImageZoomBlurFilter setBlurCenterBmBm:76] ? 1 : 0;
ret += [AFJSONRequestSerializer serializerBmBm:1] ? 1 : 0;
ret += [AFJSONRequestSerializer serializerWithWritingOptionsBmBm:10] ? 1 : 0;
ret += [AFJSONRequestSerializer requestBySerializingRequestWithparametersErrorBmBm:77] ? 1 : 0;
ret += [AFJSONRequestSerializer initWithCoderBmBm:42] ? 1 : 0;
ret += [AFJSONRequestSerializer encodeWithCoderBmBm:20] ? 1 : 0;
ret += [AFJSONRequestSerializer copyWithZoneBmBm:73] ? 1 : 0;
ret += [GPUImageRawDataOutput initWithImageSizeResultsinbgraformatBmBm:11] ? 1 : 0;
ret += [GPUImageRawDataOutput deallocBmBm:18] ? 1 : 0;
ret += [GPUImageRawDataOutput renderAtInternalSizeBmBm:62] ? 1 : 0;
ret += [GPUImageRawDataOutput colorAtLocationBmBm:5] ? 1 : 0;
ret += [GPUImageRawDataOutput newFrameReadyAtTimeAtindexBmBm:41] ? 1 : 0;
ret += [GPUImageRawDataOutput nextAvailableTextureIndexBmBm:40] ? 1 : 0;
ret += [GPUImageRawDataOutput setInputFramebufferAtindexBmBm:34] ? 1 : 0;
ret += [GPUImageRawDataOutput setInputRotationAtindexBmBm:40] ? 1 : 0;
ret += [GPUImageRawDataOutput setInputSizeAtindexBmBm:83] ? 1 : 0;
ret += [GPUImageRawDataOutput maximumOutputSizeBmBm:70] ? 1 : 0;
ret += [GPUImageRawDataOutput endProcessingBmBm:86] ? 1 : 0;
ret += [GPUImageRawDataOutput shouldIgnoreUpdatesToThisTargetBmBm:37] ? 1 : 0;
ret += [GPUImageRawDataOutput wantsMonochromeInputBmBm:38] ? 1 : 0;
ret += [GPUImageRawDataOutput setCurrentlyReceivingMonochromeInputBmBm:6] ? 1 : 0;
ret += [GPUImageRawDataOutput rawBytesForImageBmBm:8] ? 1 : 0;
ret += [GPUImageRawDataOutput bytesPerRowInOutputBmBm:49] ? 1 : 0;
ret += [GPUImageRawDataOutput setImageSizeBmBm:89] ? 1 : 0;
ret += [GPUImageRawDataOutput lockFramebufferForReadingBmBm:92] ? 1 : 0;
ret += [GPUImageRawDataOutput unlockFramebufferAfterReadingBmBm:51] ? 1 : 0;
ret += [AFSecurityPolicy certificatesInBundleBmBm:71] ? 1 : 0;
ret += [AFSecurityPolicy defaultPolicyBmBm:3] ? 1 : 0;
ret += [AFSecurityPolicy policyWithPinningModeBmBm:78] ? 1 : 0;
ret += [AFSecurityPolicy policyWithPinningModeWithpinnedcertificatesBmBm:9] ? 1 : 0;
ret += [AFSecurityPolicy initBmBm:72] ? 1 : 0;
ret += [AFSecurityPolicy setPinnedCertificatesBmBm:25] ? 1 : 0;
ret += [AFSecurityPolicy evaluateServerTrustFordomainBmBm:90] ? 1 : 0;
ret += [AFSecurityPolicy keyPathsForValuesAffectingPinnedPublicKeysBmBm:71] ? 1 : 0;
ret += [AFSecurityPolicy supportsSecureCodingBmBm:3] ? 1 : 0;
ret += [AFSecurityPolicy initWithCoderBmBm:34] ? 1 : 0;
ret += [AFSecurityPolicy encodeWithCoderBmBm:62] ? 1 : 0;
ret += [AFSecurityPolicy copyWithZoneBmBm:82] ? 1 : 0;
ret += [GPUImageThresholdedNonMaximumSuppressionFilter initBmBm:79] ? 1 : 0;
ret += [GPUImageThresholdedNonMaximumSuppressionFilter initWithPackedColorspaceBmBm:13] ? 1 : 0;
ret += [GPUImageThresholdedNonMaximumSuppressionFilter setThresholdBmBm:39] ? 1 : 0;
ret += [RACSignal subscribeBmBm:60] ? 1 : 0;
ret += [RACSignal subscribeNextBmBm:45] ? 1 : 0;
ret += [RACSignal subscribeNextCompletedBmBm:78] ? 1 : 0;
ret += [RACSignal subscribeNextErrorCompletedBmBm:8] ? 1 : 0;
ret += [RACSignal subscribeErrorBmBm:5] ? 1 : 0;
ret += [RACSignal subscribeCompletedBmBm:16] ? 1 : 0;
ret += [RACSignal subscribeNextErrorBmBm:46] ? 1 : 0;
ret += [RACSignal subscribeErrorCompletedBmBm:90] ? 1 : 0;
ret += [GPUImageBoxBlurFilter vertexShaderForOptimizedBlurOfRadiusSigmaBmBm:14] ? 1 : 0;
ret += [GPUImageBoxBlurFilter fragmentShaderForOptimizedBlurOfRadiusSigmaBmBm:68] ? 1 : 0;
ret += [GPUImageBoxBlurFilter setupFilterForSizeBmBm:64] ? 1 : 0;
ret += [GPUImageBoxBlurFilter initBmBm:91] ? 1 : 0;
ret += [GPUImageBoxBlurFilter setBlurRadiusInPixelsBmBm:4] ? 1 : 0;
ret += [GPUImagePicture replaceTextureWithSubimageBmBm:7] ? 1 : 0;
ret += [GPUImagePicture replaceTextureWithSubCGImageBmBm:10] ? 1 : 0;
ret += [GPUImagePicture replaceTextureWithSubimageInrectBmBm:28] ? 1 : 0;
ret += [GPUImagePicture replaceTextureWithSubCGImageInrectBmBm:47] ? 1 : 0;
ret += [UIImageView sharedImageDownloaderBmBm:83] ? 1 : 0;
ret += [UIImageView setSharedImageDownloaderBmBm:38] ? 1 : 0;
ret += [UIImageView setImageWithURLBmBm:73] ? 1 : 0;
ret += [UIImageView setImageWithURLPlaceholderimageBmBm:40] ? 1 : 0;
ret += [UIImageView setImageWithURLRequestPlaceholderimageSuccessFailureBmBm:45] ? 1 : 0;
ret += [UIImageView cancelImageDownloadTaskBmBm:20] ? 1 : 0;
ret += [UIImageView clearActiveDownloadInformationBmBm:72] ? 1 : 0;
ret += [UIImageView isActiveTaskURLEqualToURLRequestBmBm:75] ? 1 : 0;
ret += [GPUImageLevelsFilter initBmBm:79] ? 1 : 0;
ret += [GPUImageLevelsFilter updateUniformsBmBm:77] ? 1 : 0;
ret += [GPUImageLevelsFilter setMinGammaMaxMinoutMaxoutBmBm:6] ? 1 : 0;
ret += [GPUImageLevelsFilter setMinGammaMaxBmBm:11] ? 1 : 0;
ret += [GPUImageLevelsFilter setRedMinGammaMaxMinoutMaxoutBmBm:48] ? 1 : 0;
ret += [GPUImageLevelsFilter setRedMinGammaMaxBmBm:3] ? 1 : 0;
ret += [GPUImageLevelsFilter setGreenMinGammaMaxMinoutMaxoutBmBm:39] ? 1 : 0;
ret += [GPUImageLevelsFilter setGreenMinGammaMaxBmBm:46] ? 1 : 0;
ret += [GPUImageLevelsFilter setBlueMinGammaMaxMinoutMaxoutBmBm:24] ? 1 : 0;
ret += [GPUImageLevelsFilter setBlueMinGammaMaxBmBm:56] ? 1 : 0;
ret += [RACSerialDisposable isDisposedBmBm:6] ? 1 : 0;
ret += [RACSerialDisposable disposableBmBm:25] ? 1 : 0;
ret += [RACSerialDisposable setDisposableBmBm:65] ? 1 : 0;
ret += [RACSerialDisposable serialDisposableWithDisposableBmBm:90] ? 1 : 0;
ret += [RACSerialDisposable initBmBm:86] ? 1 : 0;
ret += [RACSerialDisposable initWithBlockBmBm:26] ? 1 : 0;
ret += [RACSerialDisposable deallocBmBm:16] ? 1 : 0;
ret += [RACSerialDisposable swapInDisposableBmBm:70] ? 1 : 0;
ret += [RACSerialDisposable disposeBmBm:25] ? 1 : 0;
ret += [GPUImageThresholdSketchFilter initBmBm:9] ? 1 : 0;
ret += [NSDictionary dictionaryWithPlistDataBmBm:47] ? 1 : 0;
ret += [NSDictionary dictionaryWithPlistStringBmBm:20] ? 1 : 0;
ret += [NSDictionary plistDataBmBm:18] ? 1 : 0;
ret += [NSDictionary plistStringBmBm:68] ? 1 : 0;
ret += [NSDictionary allKeysSortedBmBm:40] ? 1 : 0;
ret += [NSDictionary allValuesSortedByKeysBmBm:16] ? 1 : 0;
ret += [NSDictionary containsObjectForKeyBmBm:4] ? 1 : 0;
ret += [NSDictionary entriesForKeysBmBm:44] ? 1 : 0;
ret += [NSDictionary jsonStringEncodedBmBm:87] ? 1 : 0;
ret += [NSDictionary jsonPrettyStringEncodedBmBm:51] ? 1 : 0;
ret += [NSDictionary dictionaryWithXMLBmBm:97] ? 1 : 0;
ret += [NSDictionary boolValueForKeyDefaultBmBm:38] ? 1 : 0;
ret += [NSDictionary charValueForKeyDefaultBmBm:40] ? 1 : 0;
ret += [NSDictionary unsignedCharValueForKeyDefaultBmBm:42] ? 1 : 0;
ret += [NSDictionary shortValueForKeyDefaultBmBm:91] ? 1 : 0;
ret += [NSDictionary unsignedShortValueForKeyDefaultBmBm:14] ? 1 : 0;
ret += [NSDictionary intValueForKeyDefaultBmBm:78] ? 1 : 0;
ret += [NSDictionary unsignedIntValueForKeyDefaultBmBm:1] ? 1 : 0;
ret += [NSDictionary longValueForKeyDefaultBmBm:71] ? 1 : 0;
ret += [NSDictionary unsignedLongValueForKeyDefaultBmBm:59] ? 1 : 0;
ret += [NSDictionary longLongValueForKeyDefaultBmBm:98] ? 1 : 0;
ret += [NSDictionary unsignedLongLongValueForKeyDefaultBmBm:75] ? 1 : 0;
ret += [NSDictionary floatValueForKeyDefaultBmBm:37] ? 1 : 0;
ret += [NSDictionary doubleValueForKeyDefaultBmBm:10] ? 1 : 0;
ret += [NSDictionary integerValueForKeyDefaultBmBm:0] ? 1 : 0;
ret += [NSDictionary unsignedIntegerValueForKeyDefaultBmBm:16] ? 1 : 0;
ret += [NSDictionary numberValueForKeyDefaultBmBm:97] ? 1 : 0;
ret += [NSDictionary stringValueForKeyDefaultBmBm:21] ? 1 : 0;
ret += [TOCropViewControllerTransitioning transitionDurationBmBm:71] ? 1 : 0;
ret += [TOCropViewControllerTransitioning animateTransitionBmBm:66] ? 1 : 0;
ret += [TOCropViewControllerTransitioning resetBmBm:31] ? 1 : 0;
ret += [DGActivityIndicatorTriangleSkewSpinAnimation setupAnimationInLayerWithsizeTintcolorBmBm:15] ? 1 : 0;
ret += [GPUImageMovieComposition initWithCompositionAndvideocompositionAndaudiomixBmBm:77] ? 1 : 0;
ret += [GPUImageMovieComposition createAssetReaderBmBm:28] ? 1 : 0;
ret += [DGActivityIndicatorRotatingSandglassAnimation setupAnimationInLayerWithsizeTintcolorBmBm:28] ? 1 : 0;
ret += [GPUImageUIElement initWithViewBmBm:16] ? 1 : 0;
ret += [GPUImageUIElement initWithLayerBmBm:17] ? 1 : 0;
ret += [GPUImageUIElement layerSizeInPixelsBmBm:42] ? 1 : 0;
ret += [GPUImageUIElement updateBmBm:31] ? 1 : 0;
ret += [GPUImageUIElement updateUsingCurrentTimeBmBm:93] ? 1 : 0;
ret += [GPUImageUIElement updateWithTimestampBmBm:20] ? 1 : 0;
ret += [DGActivityIndicatorTripleRingsAnimation setupAnimationInLayerWithsizeTintcolorBmBm:19] ? 1 : 0;
ret += [UIDatePicker rac_newDateChannelWithNilValueBmBm:33] ? 1 : 0;
ret += [NSURLConnection rac_sendAsynchronousRequestBmBm:73] ? 1 : 0;
ret += [AFImageResponseSerializer initBmBm:69] ? 1 : 0;
ret += [AFImageResponseSerializer responseObjectForResponseDataErrorBmBm:60] ? 1 : 0;
ret += [AFImageResponseSerializer supportsSecureCodingBmBm:22] ? 1 : 0;
ret += [AFImageResponseSerializer initWithCoderBmBm:25] ? 1 : 0;
ret += [AFImageResponseSerializer encodeWithCoderBmBm:3] ? 1 : 0;
ret += [AFImageResponseSerializer copyWithZoneBmBm:22] ? 1 : 0;
ret += [AFAutoPurgingImageCache initBmBm:28] ? 1 : 0;
ret += [AFAutoPurgingImageCache initWithMemoryCapacityPreferredmemorycapacityBmBm:47] ? 1 : 0;
ret += [AFAutoPurgingImageCache deallocBmBm:85] ? 1 : 0;
ret += [AFAutoPurgingImageCache memoryUsageBmBm:6] ? 1 : 0;
ret += [AFAutoPurgingImageCache addImageWithidentifierBmBm:61] ? 1 : 0;
ret += [AFAutoPurgingImageCache removeImageWithIdentifierBmBm:21] ? 1 : 0;
ret += [AFAutoPurgingImageCache removeAllImagesBmBm:93] ? 1 : 0;
ret += [AFAutoPurgingImageCache imageWithIdentifierBmBm:18] ? 1 : 0;
ret += [AFAutoPurgingImageCache addImageForrequestWithadditionalidentifierBmBm:89] ? 1 : 0;
ret += [AFAutoPurgingImageCache removeImageforRequestWithadditionalidentifierBmBm:66] ? 1 : 0;
ret += [AFAutoPurgingImageCache imageforRequestWithadditionalidentifierBmBm:29] ? 1 : 0;
ret += [AFAutoPurgingImageCache imageCacheKeyFromURLRequestWithadditionalidentifierBmBm:75] ? 1 : 0;
ret += [AFAutoPurgingImageCache shouldCacheImageForrequestWithadditionalidentifierBmBm:77] ? 1 : 0;
ret += [RACSubscriber subscriberWithNextErrorCompletedBmBm:23] ? 1 : 0;
ret += [RACSubscriber initBmBm:4] ? 1 : 0;
ret += [RACSubscriber deallocBmBm:39] ? 1 : 0;
ret += [RACSubscriber sendNextBmBm:76] ? 1 : 0;
ret += [RACSubscriber sendErrorBmBm:90] ? 1 : 0;
ret += [RACSubscriber sendCompletedBmBm:49] ? 1 : 0;
ret += [RACSubscriber didSubscribeWithDisposableBmBm:79] ? 1 : 0;
ret += [NSData md2StringBmBm:68] ? 1 : 0;
ret += [NSData md2DataBmBm:99] ? 1 : 0;
ret += [NSData md4StringBmBm:2] ? 1 : 0;
ret += [NSData md4DataBmBm:80] ? 1 : 0;
ret += [NSData md5StringBmBm:25] ? 1 : 0;
ret += [NSData md5DataBmBm:43] ? 1 : 0;
ret += [NSData sha1StringBmBm:11] ? 1 : 0;
ret += [NSData sha1DataBmBm:90] ? 1 : 0;
ret += [NSData sha224StringBmBm:98] ? 1 : 0;
ret += [NSData sha224DataBmBm:84] ? 1 : 0;
ret += [NSData sha256StringBmBm:48] ? 1 : 0;
ret += [NSData sha256DataBmBm:20] ? 1 : 0;
ret += [NSData sha384StringBmBm:77] ? 1 : 0;
ret += [NSData sha384DataBmBm:42] ? 1 : 0;
ret += [NSData sha512StringBmBm:42] ? 1 : 0;
ret += [NSData sha512DataBmBm:48] ? 1 : 0;
ret += [NSData hmacStringUsingAlgWithkeyBmBm:89] ? 1 : 0;
ret += [NSData hmacDataUsingAlgWithkeyBmBm:51] ? 1 : 0;
ret += [NSData hmacMD5StringWithKeyBmBm:87] ? 1 : 0;
ret += [NSData hmacMD5DataWithKeyBmBm:76] ? 1 : 0;
ret += [NSData hmacSHA1StringWithKeyBmBm:9] ? 1 : 0;
ret += [NSData hmacSHA1DataWithKeyBmBm:50] ? 1 : 0;
ret += [NSData hmacSHA224StringWithKeyBmBm:65] ? 1 : 0;
ret += [NSData hmacSHA224DataWithKeyBmBm:43] ? 1 : 0;
ret += [NSData hmacSHA256StringWithKeyBmBm:21] ? 1 : 0;
ret += [NSData hmacSHA256DataWithKeyBmBm:8] ? 1 : 0;
ret += [NSData hmacSHA384StringWithKeyBmBm:56] ? 1 : 0;
ret += [NSData hmacSHA384DataWithKeyBmBm:18] ? 1 : 0;
ret += [NSData hmacSHA512StringWithKeyBmBm:10] ? 1 : 0;
ret += [NSData hmacSHA512DataWithKeyBmBm:8] ? 1 : 0;
ret += [NSData crc32StringBmBm:2] ? 1 : 0;
ret += [NSData crc32BmBm:63] ? 1 : 0;
ret += [NSData aes256EncryptWithKeyIvBmBm:64] ? 1 : 0;
ret += [NSData aes256DecryptWithkeyIvBmBm:98] ? 1 : 0;
ret += [NSData utf8StringBmBm:19] ? 1 : 0;
ret += [NSData hexStringBmBm:54] ? 1 : 0;
ret += [NSData dataWithHexStringBmBm:71] ? 1 : 0;
ret += [NSData base64EncodedStringBmBm:23] ? 1 : 0;
ret += [NSData dataWithBase64EncodedStringBmBm:52] ? 1 : 0;
ret += [NSData jsonValueDecodedBmBm:99] ? 1 : 0;
ret += [NSData gzipInflateBmBm:12] ? 1 : 0;
ret += [NSData gzipDeflateBmBm:56] ? 1 : 0;
ret += [NSData zlibInflateBmBm:93] ? 1 : 0;
ret += [NSData zlibDeflateBmBm:68] ? 1 : 0;
ret += [NSData dataNamedBmBm:97] ? 1 : 0;
ret += [GPUImageHoughTransformLineDetector initBmBm:82] ? 1 : 0;
ret += [GPUImageHoughTransformLineDetector deallocBmBm:1] ? 1 : 0;
ret += [GPUImageHoughTransformLineDetector extractLineParametersFromImageAtFrameTimeBmBm:94] ? 1 : 0;
ret += [GPUImageHoughTransformLineDetector wantsMonochromeInputBmBm:46] ? 1 : 0;
ret += [GPUImageHoughTransformLineDetector setLineDetectionThresholdBmBm:70] ? 1 : 0;
ret += [GPUImageHoughTransformLineDetector lineDetectionThresholdBmBm:32] ? 1 : 0;
ret += [GPUImageHoughTransformLineDetector newFrameReadyAtTimeAtindexBmBm:32] ? 1 : 0;
ret += [GPUImageNonMaximumSuppressionFilter initBmBm:50] ? 1 : 0;
ret += [UITextView rac_delegateProxyBmBm:12] ? 1 : 0;
ret += [UITextView rac_textSignalBmBm:13] ? 1 : 0;
ret += [GPUImageSphereRefractionFilter initBmBm:2] ? 1 : 0;
ret += [GPUImageSphereRefractionFilter initWithFragmentShaderFromStringBmBm:43] ? 1 : 0;
ret += [GPUImageSphereRefractionFilter setInputSizeAtindexBmBm:70] ? 1 : 0;
ret += [GPUImageSphereRefractionFilter adjustAspectRatioBmBm:2] ? 1 : 0;
ret += [GPUImageSphereRefractionFilter setInputRotationAtindexBmBm:80] ? 1 : 0;
ret += [GPUImageSphereRefractionFilter forceProcessingAtSizeBmBm:86] ? 1 : 0;
ret += [GPUImageSphereRefractionFilter setRadiusBmBm:67] ? 1 : 0;
ret += [GPUImageSphereRefractionFilter setCenterBmBm:71] ? 1 : 0;
ret += [GPUImageSphereRefractionFilter setAspectRatioBmBm:26] ? 1 : 0;
ret += [GPUImageSphereRefractionFilter setRefractiveIndexBmBm:89] ? 1 : 0;
ret += [GPUImageFramebuffer initWithSizeTextureoptionsOnlytextureBmBm:11] ? 1 : 0;
ret += [GPUImageFramebuffer initWithSizeOverriddentextureBmBm:70] ? 1 : 0;
ret += [GPUImageFramebuffer initWithSizeBmBm:46] ? 1 : 0;
ret += [GPUImageFramebuffer deallocBmBm:39] ? 1 : 0;
ret += [GPUImageFramebuffer generateTextureBmBm:21] ? 1 : 0;
ret += [GPUImageFramebuffer generateFramebufferBmBm:24] ? 1 : 0;
ret += [GPUImageFramebuffer destroyFramebufferBmBm:35] ? 1 : 0;
ret += [GPUImageFramebuffer activateFramebufferBmBm:21] ? 1 : 0;
ret += [GPUImageFramebuffer lockBmBm:12] ? 1 : 0;
ret += [GPUImageFramebuffer unlockBmBm:97] ? 1 : 0;
ret += [GPUImageFramebuffer clearAllLocksBmBm:93] ? 1 : 0;
ret += [GPUImageFramebuffer disableReferenceCountingBmBm:54] ? 1 : 0;
ret += [GPUImageFramebuffer enableReferenceCountingBmBm:48] ? 1 : 0;
ret += [GPUImageFramebuffer newCGImageFromFramebufferContentsBmBm:15] ? 1 : 0;
ret += [GPUImageFramebuffer restoreRenderTargetBmBm:76] ? 1 : 0;
ret += [GPUImageFramebuffer lockForReadingBmBm:79] ? 1 : 0;
ret += [GPUImageFramebuffer unlockAfterReadingBmBm:40] ? 1 : 0;
ret += [GPUImageFramebuffer bytesPerRowBmBm:39] ? 1 : 0;
ret += [GPUImageFramebuffer byteBufferBmBm:40] ? 1 : 0;
ret += [GPUImageFramebuffer textureBmBm:22] ? 1 : 0;
ret += [BKMIHomeSectionOneCell initWithStyleReuseidentifierBm:3] ? 1 : 0;
ret += [BKMITagsDetailCell initWithStyleReuseidentifierBm:73] ? 1 : 0;
ret += [BKMITagsDetailCell BKcopyBtnClickedBm:75] ? 1 : 0;
ret += [BKMITagsDetailCell setBKmodelBm:84] ? 1 : 0;
ret += [BKMIFilterDetialCell initWithStyleReuseidentifierBm:97] ? 1 : 0;
ret += [BKMIFilterDetialCell setBKimageUrlBm:44] ? 1 : 0;
ret += [BKMITagsCell initWithStyleReuseidentifierBm:44] ? 1 : 0;
ret += [BKMITagsCell setBKmodelBm:41] ? 1 : 0;
ret += [BKMIHomeToolsView initWithFrameBm:76] ? 1 : 0;
ret += [BKMIHomeToolsView BKtapBm:52] ? 1 : 0;
ret += [BKMIHomeSectionTowCell initWithStyleReuseidentifierBm:4] ? 1 : 0;
ret += [BKMIHomeSectionTowCell setBKmodelBm:69] ? 1 : 0;
ret += [BKMIHomeView initWithFrameBm:54] ? 1 : 0;
ret += [BKMIHomeView BKtapBm:34] ? 1 : 0;
ret += [BKMIStickerDetailCell initWithFrameBm:59] ? 1 : 0;
ret += [BKMIStickerDetailCell setBKpicUrlBm:7] ? 1 : 0;
ret += [BKMIFilterCell initWithStyleReuseidentifierBm:13] ? 1 : 0;
ret += [BKMIFilterCell setBKmodelBm:95] ? 1 : 0;
ret += [BKMIHomeHeaderView initWithFrameBm:40] ? 1 : 0;
ret += [BKMIFeedbackVC viewDidLoadBm:23] ? 1 : 0;
ret += [BKMIFeedbackVC BKcreatUIBm:56] ? 1 : 0;
ret += [BKMIFeedbackVC BKsendrFeedBackClickedBm:7] ? 1 : 0;
ret += [BKMIMoreVC BKtableViewBm:90] ? 1 : 0;
ret += [BKMIMoreVC viewWillAppearBm:53] ? 1 : 0;
ret += [BKMIMoreVC viewWillDisappearBm:73] ? 1 : 0;
ret += [BKMIMoreVC viewDidLoadBm:41] ? 1 : 0;
ret += [BKMIMoreVC BKloadDataBm:53] ? 1 : 0;
ret += [BKMIMoreVC numberOfSectionsInTableViewBm:5] ? 1 : 0;
ret += [BKMIMoreVC tableViewNumberofrowsinsectionBm:77] ? 1 : 0;
ret += [BKMIMoreVC tableViewCellforrowatindexpathBm:84] ? 1 : 0;
ret += [BKMIMoreVC tableViewDidselectrowatindexpathBm:57] ? 1 : 0;
ret += [BKMIMoreVC tableViewHeightforrowatindexpathBm:89] ? 1 : 0;
ret += [BKMIMoreVC tableViewHeightforheaderinsectionBm:63] ? 1 : 0;
ret += [BKMIMoreVC tableViewViewforheaderinsectionBm:47] ? 1 : 0;
ret += [BKMIMoreVC tableViewHeightforfooterinsectionBm:42] ? 1 : 0;
ret += [BKMIMoreVC tableViewViewforfooterinsectionBm:0] ? 1 : 0;
ret += [BKMIMoreVC BKshareBm:42] ? 1 : 0;
ret += [BKMIMoreHeaderView initWithFrameBm:42] ? 1 : 0;
ret += [BKMIMoreHeaderView BKtapBm:14] ? 1 : 0;
ret += [BKMIMoreHeaderView BKupdateViewsBm:62] ? 1 : 0;
ret += [BKMIMoreCell initWithStyleReuseidentifierBm:70] ? 1 : 0;
ret += [BKMILoginVC viewWillAppearBm:82] ? 1 : 0;
ret += [BKMILoginVC viewWillDisappearBm:92] ? 1 : 0;
ret += [BKMILoginVC viewDidLoadBm:99] ? 1 : 0;
ret += [BKMILoginVC BKloginBtnClickBm:68] ? 1 : 0;
ret += [BKMILoginVC BKregisterBtnClickBm:14] ? 1 : 0;
ret += [BKMILoginVC BKvisitorsBtnClickedBm:73] ? 1 : 0;
ret += [BKMILoginVC BKcloseBtnClickedBm:14] ? 1 : 0;
ret += [BKMIRegisterVC viewWillAppearBm:77] ? 1 : 0;
ret += [BKMIRegisterVC viewWillDisappearBm:81] ? 1 : 0;
ret += [BKMIRegisterVC viewDidLoadBm:33] ? 1 : 0;
ret += [BKMIRegisterVC BKloginBtnClickBm:62] ? 1 : 0;
ret += [BKMIRegisterVC BKregisterBtnClickBm:15] ? 1 : 0;
ret += [BKMIRegisterVC BKcloseBtnClickedBm:73] ? 1 : 0;
ret += [BKMICoinsCell initWithStyleReuseidentifierBm:37] ? 1 : 0;
ret += [BKMICoinsCell setBKmodelBm:36] ? 1 : 0;
ret += [BKMIStoreVC BKtableViewBm:13] ? 1 : 0;
ret += [BKMIStoreVC BKdataArrayBm:69] ? 1 : 0;
ret += [BKMIStoreVC viewDidLoadBm:11] ? 1 : 0;
ret += [BKMIStoreVC BKcontactUsBm:0] ? 1 : 0;
ret += [BKMIStoreVC BKloadDataBm:71] ? 1 : 0;
ret += [BKMIStoreVC BKloadUserDataBm:28] ? 1 : 0;
ret += [BKMIStoreVC tableViewNumberofrowsinsectionBm:61] ? 1 : 0;
ret += [BKMIStoreVC tableViewCellforrowatindexpathBm:39] ? 1 : 0;
ret += [BKMIStoreVC tableViewDidselectrowatindexpathBm:22] ? 1 : 0;
ret += [BKMIStoreVC tableViewHeightforrowatindexpathBm:7] ? 1 : 0;
ret += [BKMIStoreVC tableViewHeightforheaderinsectionBm:62] ? 1 : 0;
ret += [BKMIStoreVC tableViewViewforheaderinsectionBm:99] ? 1 : 0;
ret += [BKMITagsVC BKtableViewBm:12] ? 1 : 0;
ret += [BKMITagsVC BKdataArrayBm:97] ? 1 : 0;
ret += [BKMITagsVC viewDidLoadBm:15] ? 1 : 0;
ret += [BKMITagsVC BKloadDataBm:55] ? 1 : 0;
ret += [BKMITagsVC tableViewNumberofrowsinsectionBm:22] ? 1 : 0;
ret += [BKMITagsVC tableViewCellforrowatindexpathBm:29] ? 1 : 0;
ret += [BKMITagsVC tableViewDidselectrowatindexpathBm:84] ? 1 : 0;
ret += [BKMITagsVC tableViewHeightforrowatindexpathBm:33] ? 1 : 0;
ret += [BKMITagsVC tableViewHeightforheaderinsectionBm:65] ? 1 : 0;
ret += [BKMITagsVC tableViewHeightforfooterinsectionBm:77] ? 1 : 0;
ret += [BKMITagsVC tableViewViewforheaderinsectionBm:63] ? 1 : 0;
ret += [BKMITagsVC tableViewViewforfooterinsectionBm:44] ? 1 : 0;
ret += [BKMIWebVC viewDidLoadBm:33] ? 1 : 0;
ret += [BKMIFilterDetailVC BKtableViewBm:78] ? 1 : 0;
ret += [BKMIFilterDetailVC BKdataArrayBm:68] ? 1 : 0;
ret += [BKMIFilterDetailVC viewDidLoadBm:4] ? 1 : 0;
ret += [BKMIFilterDetailVC BKbtnClickedBm:35] ? 1 : 0;
ret += [BKMIFilterDetailVC BKcanUsePhotoBm:66] ? 1 : 0;
ret += [BKMIFilterDetailVC alertViewClickedbuttonatindexBm:78] ? 1 : 0;
ret += [BKMIFilterDetailVC imagePickerControllerDidCancelBm:36] ? 1 : 0;
ret += [BKMIFilterDetailVC imagePickerControllerDidfinishpickingmediawithinfoBm:41] ? 1 : 0;
ret += [BKMIFilterDetailVC BKloadDataBm:49] ? 1 : 0;
ret += [BKMIFilterDetailVC tableViewNumberofrowsinsectionBm:88] ? 1 : 0;
ret += [BKMIFilterDetailVC tableViewCellforrowatindexpathBm:20] ? 1 : 0;
ret += [BKMIFilterDetailVC tableViewHeightforrowatindexpathBm:70] ? 1 : 0;
ret += [BKMIFilterDetailVC tableViewHeightforfooterinsectionBm:73] ? 1 : 0;
ret += [BKMIFilterDetailVC tableViewViewforfooterinsectionBm:82] ? 1 : 0;
ret += [BKMIFilterDetailVC tableViewHeightforheaderinsectionBm:10] ? 1 : 0;
ret += [BKMIFilterDetailVC tableViewViewforheaderinsectionBm:97] ? 1 : 0;
ret += [BKMIBaseTypeVC viewDidLoadBm:42] ? 1 : 0;
ret += [BKMIBaseTypeVC BKloginOutBm:35] ? 1 : 0;
ret += [BKMIBaseTypeVC BKcreateCoinsViewBm:48] ? 1 : 0;
ret += [BKMIBaseTypeVC BKloadUserInfoBm:18] ? 1 : 0;
ret += [BKMIBaseTypeVC BKtapActionBm:5] ? 1 : 0;
ret += [BKMIBaseTypeVC deallocBm:68] ? 1 : 0;
ret += [BKMIStickerDetailVC BKdataArrayBm:84] ? 1 : 0;
ret += [BKMIStickerDetailVC viewDidLoadBm:62] ? 1 : 0;
ret += [BKMIStickerDetailVC BKaddTopViewBm:8] ? 1 : 0;
ret += [BKMIStickerDetailVC BKloadDataWithTypeBm:16] ? 1 : 0;
ret += [BKMIStickerDetailVC BKcreateRightViewBm:73] ? 1 : 0;
ret += [BKMIStickerDetailVC BKloginSuccessBm:78] ? 1 : 0;
ret += [BKMIStickerDetailVC BKtapActionBm:74] ? 1 : 0;
ret += [BKMIStickerDetailVC BKbtnClickedBm:17] ? 1 : 0;
ret += [BKMIStickerDetailVC BKcanUsePhotoBm:98] ? 1 : 0;
ret += [BKMIStickerDetailVC alertViewClickedbuttonatindexBm:54] ? 1 : 0;
ret += [BKMIStickerDetailVC imagePickerControllerDidCancelBm:9] ? 1 : 0;
ret += [BKMIStickerDetailVC imagePickerControllerDidfinishpickingmediawithinfoBm:42] ? 1 : 0;
ret += [BKMIStickerDetailVC BKloadUserModelBm:48] ? 1 : 0;
ret += [BKMIStickerDetailVC collectionViewNumberofitemsinsectionBm:46] ? 1 : 0;
ret += [BKMIStickerDetailVC collectionViewCellforitematindexpathBm:53] ? 1 : 0;
ret += [BKMIStickerDetailVC collectionViewLayoutSizeforitematindexpathBm:16] ? 1 : 0;
ret += [BKMIStickerDetailVC collectionViewLayoutMinimuminteritemspacingforsectionatindexBm:39] ? 1 : 0;
ret += [BKMIStickerDetailVC collectionViewLayoutMinimumlinespacingforsectionatindexBm:48] ? 1 : 0;
ret += [BKMIStickerDetailVC collectionViewLayoutInsetforsectionatindexBm:84] ? 1 : 0;
ret += [BKMIStickerVC BKdataArrayBm:67] ? 1 : 0;
ret += [BKMIStickerVC BKtableViewBm:10] ? 1 : 0;
ret += [BKMIStickerVC viewDidLoadBm:16] ? 1 : 0;
ret += [BKMIStickerVC viewWillAppearBm:15] ? 1 : 0;
ret += [BKMIStickerVC BKupdatePriceBm:48] ? 1 : 0;
ret += [BKMIStickerVC BKloginOutBm:30] ? 1 : 0;
ret += [BKMIStickerVC BKtapActionBm:0] ? 1 : 0;
ret += [BKMIStickerVC BKloadDataBm:42] ? 1 : 0;
ret += [BKMIStickerVC tableViewNumberofrowsinsectionBm:47] ? 1 : 0;
ret += [BKMIStickerVC tableViewCellforrowatindexpathBm:62] ? 1 : 0;
ret += [BKMIStickerVC tableViewDidselectrowatindexpathBm:54] ? 1 : 0;
ret += [BKMIStickerVC buyStickersWithFilterModelBm:23] ? 1 : 0;
ret += [BKMIStickerVC tableViewHeightforrowatindexpathBm:26] ? 1 : 0;
ret += [BKMIStickerVC slideMenuControllerDidviewdidloadBm:83] ? 1 : 0;
ret += [BKMIStickerVC deallocBm:40] ? 1 : 0;
ret += [BKMIHomeVC BKtableViewBm:80] ? 1 : 0;
ret += [BKMIHomeVC BKdataArrayBm:57] ? 1 : 0;
ret += [BKMIHomeVC BKbannaerArrayBm:33] ? 1 : 0;
ret += [BKMIHomeVC viewWillAppearBm:0] ? 1 : 0;
ret += [BKMIHomeVC viewWillDisappearBm:30] ? 1 : 0;
ret += [BKMIHomeVC viewDidLoadBm:26] ? 1 : 0;
ret += [BKMIHomeVC BKloginOutBm:49] ? 1 : 0;
ret += [BKMIHomeVC BKcreateHeaderViewBm:9] ? 1 : 0;
ret += [BKMIHomeVC BKloadDataBm:61] ? 1 : 0;
ret += [BKMIHomeVC BKshopBtnClickedBm:6] ? 1 : 0;
ret += [BKMIHomeVC tableViewNumberofrowsinsectionBm:14] ? 1 : 0;
ret += [BKMIHomeVC numberOfSectionsInTableViewBm:99] ? 1 : 0;
ret += [BKMIHomeVC tableViewCellforrowatindexpathBm:61] ? 1 : 0;
ret += [BKMIHomeVC tableViewDidselectrowatindexpathBm:29] ? 1 : 0;
ret += [BKMIHomeVC BKcanUsePhotoBm:61] ? 1 : 0;
ret += [BKMIHomeVC alertViewClickedbuttonatindexBm:31] ? 1 : 0;
ret += [BKMIHomeVC imagePickerControllerDidCancelBm:42] ? 1 : 0;
ret += [BKMIHomeVC imagePickerControllerDidfinishpickingmediawithinfoBm:50] ? 1 : 0;
ret += [BKMIHomeVC tableViewHeightforrowatindexpathBm:41] ? 1 : 0;
ret += [BKMIHomeVC tableViewViewforheaderinsectionBm:19] ? 1 : 0;
ret += [BKMIHomeVC BKsenderActionBm:20] ? 1 : 0;
ret += [BKMIHomeVC tableViewViewforfooterinsectionBm:9] ? 1 : 0;
ret += [BKMIHomeVC tableViewHeightforheaderinsectionBm:15] ? 1 : 0;
ret += [BKMIHomeVC tableViewHeightforfooterinsectionBm:36] ? 1 : 0;
ret += [BKMIHomeVC customCollectionViewCellClassForCycleScrollViewBm:15] ? 1 : 0;
ret += [BKMIHomeVC setupCustomCellForindexCyclescrollviewBm:33] ? 1 : 0;
ret += [BKMIHomeVC cycleScrollViewDidselectitematindexBm:51] ? 1 : 0;
ret += [BKMITagsDetailVC BKtableViewBm:83] ? 1 : 0;
ret += [BKMITagsDetailVC BKdataArrayBm:38] ? 1 : 0;
ret += [BKMITagsDetailVC viewDidLoadBm:4] ? 1 : 0;
ret += [BKMITagsDetailVC BKloadTagDetailBm:83] ? 1 : 0;
ret += [BKMITagsDetailVC tableViewNumberofrowsinsectionBm:82] ? 1 : 0;
ret += [BKMITagsDetailVC tableViewCellforrowatindexpathBm:78] ? 1 : 0;
ret += [BKMITagsDetailVC tableViewHeightforrowatindexpathBm:30] ? 1 : 0;
ret += [BKMITagsDetailVC tableViewHeightforheaderinsectionBm:64] ? 1 : 0;
ret += [BKMITagsDetailVC tableViewViewforheaderinsectionBm:78] ? 1 : 0;
ret += [BKMIFilterVC BKtableViewBm:94] ? 1 : 0;
ret += [BKMIFilterVC BKdataArrayBm:49] ? 1 : 0;
ret += [BKMIFilterVC viewDidLoadBm:89] ? 1 : 0;
ret += [BKMIFilterVC viewWillAppearBm:68] ? 1 : 0;
ret += [BKMIFilterVC BKloadDataBm:57] ? 1 : 0;
ret += [BKMIFilterVC tableViewNumberofrowsinsectionBm:61] ? 1 : 0;
ret += [BKMIFilterVC tableViewCellforrowatindexpathBm:68] ? 1 : 0;
ret += [BKMIFilterVC tableViewHeightforrowatindexpathBm:44] ? 1 : 0;
ret += [BKMIFilterVC tableViewDidselectrowatindexpathBm:80] ? 1 : 0;
ret += [BKMIFilterVC tableViewHeightforheaderinsectionBm:15] ? 1 : 0;
ret += [BKMIFilterVC tableViewViewforheaderinsectionBm:63] ? 1 : 0;
ret += [BKMIFilterVC tableViewHeightforfooterinsectionBm:13] ? 1 : 0;
ret += [BKMIFilterVC tableViewViewforfooterinsectionBm:85] ? 1 : 0;
ret += [BKMIFilterVC slideMenuControllerDidviewdidloadBm:44] ? 1 : 0;
ret += [AFHTTPResponseSerializer serializerBmBm:45] ? 1 : 0;
ret += [AFHTTPResponseSerializer initBmBm:49] ? 1 : 0;
ret += [AFHTTPResponseSerializer validateResponseDataErrorBmBm:44] ? 1 : 0;
ret += [AFHTTPResponseSerializer responseObjectForResponseDataErrorBmBm:15] ? 1 : 0;
ret += [AFHTTPResponseSerializer supportsSecureCodingBmBm:34] ? 1 : 0;
ret += [AFHTTPResponseSerializer initWithCoderBmBm:29] ? 1 : 0;
ret += [AFHTTPResponseSerializer encodeWithCoderBmBm:70] ? 1 : 0;
ret += [AFHTTPResponseSerializer copyWithZoneBmBm:45] ? 1 : 0;
ret += [GPUImageColorBurnBlendFilter initBmBm:32] ? 1 : 0;
ret += [GPUImageHueBlendFilter initBmBm:53] ? 1 : 0;
ret += [GPUImageDissolveBlendFilter initBmBm:14] ? 1 : 0;
ret += [GPUImageDissolveBlendFilter setMixBmBm:71] ? 1 : 0;
ret += [GPUImageView layerClassBmBm:26] ? 1 : 0;
ret += [GPUImageView initWithFrameBmBm:54] ? 1 : 0;
ret += [GPUImageView initWithCoderBmBm:64] ? 1 : 0;
ret += [GPUImageView commonInitBmBm:10] ? 1 : 0;
ret += [GPUImageView layoutSubviewsBmBm:6] ? 1 : 0;
ret += [GPUImageView deallocBmBm:13] ? 1 : 0;
ret += [GPUImageView createDisplayFramebufferBmBm:26] ? 1 : 0;
ret += [GPUImageView destroyDisplayFramebufferBmBm:24] ? 1 : 0;
ret += [GPUImageView setDisplayFramebufferBmBm:29] ? 1 : 0;
ret += [GPUImageView presentFramebufferBmBm:31] ? 1 : 0;
ret += [GPUImageView recalculateViewGeometryBmBm:21] ? 1 : 0;
ret += [GPUImageView setBackgroundColorRedGreenBlueAlphaBmBm:12] ? 1 : 0;
ret += [GPUImageView textureCoordinatesForRotationBmBm:36] ? 1 : 0;
ret += [GPUImageView newFrameReadyAtTimeAtindexBmBm:57] ? 1 : 0;
ret += [GPUImageView nextAvailableTextureIndexBmBm:52] ? 1 : 0;
ret += [GPUImageView setInputFramebufferAtindexBmBm:65] ? 1 : 0;
ret += [GPUImageView setInputRotationAtindexBmBm:36] ? 1 : 0;
ret += [GPUImageView setInputSizeAtindexBmBm:20] ? 1 : 0;
ret += [GPUImageView maximumOutputSizeBmBm:6] ? 1 : 0;
ret += [GPUImageView endProcessingBmBm:98] ? 1 : 0;
ret += [GPUImageView shouldIgnoreUpdatesToThisTargetBmBm:55] ? 1 : 0;
ret += [GPUImageView wantsMonochromeInputBmBm:46] ? 1 : 0;
ret += [GPUImageView setCurrentlyReceivingMonochromeInputBmBm:17] ? 1 : 0;
ret += [GPUImageView sizeInPixelsBmBm:69] ? 1 : 0;
ret += [GPUImageView setFillModeBmBm:63] ? 1 : 0;
ret += [GPUImagePoissonBlendFilter initBmBm:2] ? 1 : 0;
ret += [GPUImagePoissonBlendFilter setMixBmBm:53] ? 1 : 0;
ret += [GPUImagePoissonBlendFilter renderToTextureWithVerticesTexturecoordinatesBmBm:5] ? 1 : 0;
ret += [NSSet rac_sequenceBmBm:77] ? 1 : 0;
ret += [NSBundle preferredScalesBmBm:17] ? 1 : 0;
ret += [NSBundle pathForScaledResourceOftypeIndirectoryBmBm:99] ? 1 : 0;
ret += [NSBundle pathForScaledResourceOftypeBmBm:78] ? 1 : 0;
ret += [NSBundle pathForScaledResourceOftypeIndirectoryBmBm:45] ? 1 : 0;
ret += [GPUImageSwirlFilter initBmBm:57] ? 1 : 0;
ret += [GPUImageSwirlFilter setInputRotationAtindexBmBm:8] ? 1 : 0;
ret += [GPUImageSwirlFilter setRadiusBmBm:12] ? 1 : 0;
ret += [GPUImageSwirlFilter setAngleBmBm:79] ? 1 : 0;
ret += [GPUImageSwirlFilter setCenterBmBm:78] ? 1 : 0;
ret += [RACEmptySequence emptyBmBm:51] ? 1 : 0;
ret += [RACEmptySequence headBmBm:72] ? 1 : 0;
ret += [RACEmptySequence tailBmBm:85] ? 1 : 0;
ret += [RACEmptySequence bindPassingthroughvaluesfromsequenceBmBm:63] ? 1 : 0;
ret += [RACEmptySequence classForCoderBmBm:77] ? 1 : 0;
ret += [RACEmptySequence initWithCoderBmBm:41] ? 1 : 0;
ret += [RACEmptySequence encodeWithCoderBmBm:28] ? 1 : 0;
ret += [RACEmptySequence descriptionBmBm:79] ? 1 : 0;
ret += [RACEmptySequence hashBmBm:42] ? 1 : 0;
ret += [RACEmptySequence isEqualBmBm:33] ? 1 : 0;
ret += [RACSubscriptionScheduler initBmBm:19] ? 1 : 0;
ret += [RACSubscriptionScheduler scheduleBmBm:34] ? 1 : 0;
ret += [RACSubscriptionScheduler afterScheduleBmBm:83] ? 1 : 0;
ret += [RACSubscriptionScheduler afterRepeatingeveryWithleewayScheduleBmBm:61] ? 1 : 0;
ret += [NSMutableArray arrayWithPlistDataBmBm:52] ? 1 : 0;
ret += [NSMutableArray arrayWithPlistStringBmBm:34] ? 1 : 0;
ret += [NSMutableArray removeFirstObjectBmBm:70] ? 1 : 0;
ret += [NSMutableArray removeLastObjectBmBm:34] ? 1 : 0;
ret += [NSMutableArray popFirstObjectBmBm:27] ? 1 : 0;
ret += [NSMutableArray popLastObjectBmBm:53] ? 1 : 0;
ret += [NSMutableArray appendObjectBmBm:44] ? 1 : 0;
ret += [NSMutableArray prependObjectBmBm:48] ? 1 : 0;
ret += [NSMutableArray appendObjectsBmBm:92] ? 1 : 0;
ret += [NSMutableArray prependObjectsBmBm:78] ? 1 : 0;
ret += [NSMutableArray insertObjectsAtindexBmBm:24] ? 1 : 0;
ret += [NSMutableArray reverseBmBm:15] ? 1 : 0;
ret += [NSMutableArray shuffleBmBm:40] ? 1 : 0;
ret += [IQKeyboardManager loadBmBm:61] ? 1 : 0;
ret += [IQKeyboardManager initBmBm:6] ? 1 : 0;
ret += [IQKeyboardManager sharedManagerBmBm:89] ? 1 : 0;
ret += [IQKeyboardManager deallocBmBm:36] ? 1 : 0;
ret += [IQKeyboardManager setEnableBmBm:78] ? 1 : 0;
ret += [IQKeyboardManager privateIsEnabledBmBm:24] ? 1 : 0;
ret += [IQKeyboardManager setKeyboardDistanceFromTextFieldBmBm:77] ? 1 : 0;
ret += [IQKeyboardManager setShouldResignOnTouchOutsideBmBm:45] ? 1 : 0;
ret += [IQKeyboardManager privateShouldResignOnTouchOutsideBmBm:28] ? 1 : 0;
ret += [IQKeyboardManager setMovedDistanceBmBm:10] ? 1 : 0;
ret += [IQKeyboardManager setEnableAutoToolbarBmBm:39] ? 1 : 0;
ret += [IQKeyboardManager privateIsEnableAutoToolbarBmBm:57] ? 1 : 0;
ret += [IQKeyboardManager keyWindowBmBm:25] ? 1 : 0;
ret += [IQKeyboardManager optimizedAdjustPositionBmBm:1] ? 1 : 0;
ret += [IQKeyboardManager adjustPositionBmBm:32] ? 1 : 0;
ret += [IQKeyboardManager restorePositionBmBm:19] ? 1 : 0;
ret += [IQKeyboardManager reloadLayoutIfNeededBmBm:95] ? 1 : 0;
ret += [IQKeyboardManager keyboardWillShowBmBm:16] ? 1 : 0;
ret += [IQKeyboardManager keyboardDidShowBmBm:39] ? 1 : 0;
ret += [IQKeyboardManager keyboardWillHideBmBm:20] ? 1 : 0;
ret += [IQKeyboardManager keyboardDidHideBmBm:77] ? 1 : 0;
ret += [IQKeyboardManager textFieldViewDidBeginEditingBmBm:8] ? 1 : 0;
ret += [IQKeyboardManager textFieldViewDidEndEditingBmBm:78] ? 1 : 0;
ret += [IQKeyboardManager willChangeStatusBarOrientationBmBm:46] ? 1 : 0;
ret += [IQKeyboardManager tapRecognizedBmBm:69] ? 1 : 0;
ret += [IQKeyboardManager gestureRecognizerShouldrecognizesimultaneouslywithgesturerecognizerBmBm:88] ? 1 : 0;
ret += [IQKeyboardManager gestureRecognizerShouldreceivetouchBmBm:9] ? 1 : 0;
ret += [IQKeyboardManager resignFirstResponderBmBm:83] ? 1 : 0;
ret += [IQKeyboardManager canGoPreviousBmBm:29] ? 1 : 0;
ret += [IQKeyboardManager canGoNextBmBm:63] ? 1 : 0;
ret += [IQKeyboardManager goPreviousBmBm:70] ? 1 : 0;
ret += [IQKeyboardManager goNextBmBm:91] ? 1 : 0;
ret += [IQKeyboardManager responderViewsBmBm:46] ? 1 : 0;
ret += [IQKeyboardManager addToolbarIfRequiredBmBm:10] ? 1 : 0;
ret += [IQKeyboardManager removeToolbarIfRequiredBmBm:46] ? 1 : 0;
ret += [IQKeyboardManager reloadInputViewsBmBm:35] ? 1 : 0;
ret += [IQKeyboardManager previousActionBmBm:21] ? 1 : 0;
ret += [IQKeyboardManager nextActionBmBm:0] ? 1 : 0;
ret += [IQKeyboardManager doneActionBmBm:33] ? 1 : 0;
ret += [IQKeyboardManager registerTextFieldViewClassDidbegineditingnotificationnameDidendeditingnotificationnameBmBm:66] ? 1 : 0;
ret += [IQKeyboardManager unregisterTextFieldViewClassDidbegineditingnotificationnameDidendeditingnotificationnameBmBm:40] ? 1 : 0;
ret += [IQKeyboardManager registerAllNotificationsBmBm:95] ? 1 : 0;
ret += [IQKeyboardManager unregisterAllNotificationsBmBm:90] ? 1 : 0;
ret += [IQKeyboardManager showLogBmBm:12] ? 1 : 0;
ret += [IQKeyboardManager showLogIndentationBmBm:64] ? 1 : 0;
ret += [GPUImageFilter initWithVertexShaderFromStringFragmentshaderfromstringBmBm:15] ? 1 : 0;
ret += [GPUImageFilter initWithFragmentShaderFromStringBmBm:68] ? 1 : 0;
ret += [GPUImageFilter initWithFragmentShaderFromFileBmBm:9] ? 1 : 0;
ret += [GPUImageFilter initBmBm:30] ? 1 : 0;
ret += [GPUImageFilter initializeAttributesBmBm:49] ? 1 : 0;
ret += [GPUImageFilter setupFilterForSizeBmBm:83] ? 1 : 0;
ret += [GPUImageFilter deallocBmBm:62] ? 1 : 0;
ret += [GPUImageFilter useNextFrameForImageCaptureBmBm:79] ? 1 : 0;
ret += [GPUImageFilter newCGImageFromCurrentlyProcessedOutputBmBm:36] ? 1 : 0;
ret += [GPUImageFilter sizeOfFBOBmBm:20] ? 1 : 0;
ret += [GPUImageFilter textureCoordinatesForRotationBmBm:4] ? 1 : 0;
ret += [GPUImageFilter renderToTextureWithVerticesTexturecoordinatesBmBm:65] ? 1 : 0;
ret += [GPUImageFilter informTargetsAboutNewFrameAtTimeBmBm:43] ? 1 : 0;
ret += [GPUImageFilter outputFrameSizeBmBm:47] ? 1 : 0;
ret += [GPUImageFilter setBackgroundColorRedGreenBlueAlphaBmBm:60] ? 1 : 0;
ret += [GPUImageFilter setIntegerForuniformnameBmBm:61] ? 1 : 0;
ret += [GPUImageFilter setFloatForuniformnameBmBm:20] ? 1 : 0;
ret += [GPUImageFilter setSizeForuniformnameBmBm:32] ? 1 : 0;
ret += [GPUImageFilter setPointForuniformnameBmBm:27] ? 1 : 0;
ret += [GPUImageFilter setFloatVec3ForuniformnameBmBm:68] ? 1 : 0;
ret += [GPUImageFilter setFloatVec4ForuniformBmBm:81] ? 1 : 0;
ret += [GPUImageFilter setFloatArrayLengthForuniformBmBm:49] ? 1 : 0;
ret += [GPUImageFilter setMatrix3fForuniformProgramBmBm:4] ? 1 : 0;
ret += [GPUImageFilter setMatrix4fForuniformProgramBmBm:70] ? 1 : 0;
ret += [GPUImageFilter setFloatForuniformProgramBmBm:64] ? 1 : 0;
ret += [GPUImageFilter setPointForuniformProgramBmBm:34] ? 1 : 0;
ret += [GPUImageFilter setSizeForuniformProgramBmBm:79] ? 1 : 0;
ret += [GPUImageFilter setVec3ForuniformProgramBmBm:11] ? 1 : 0;
ret += [GPUImageFilter setVec4ForuniformProgramBmBm:67] ? 1 : 0;
ret += [GPUImageFilter setFloatArrayLengthForuniformProgramBmBm:37] ? 1 : 0;
ret += [GPUImageFilter setIntegerForuniformProgramBmBm:4] ? 1 : 0;
ret += [GPUImageFilter setAndExecuteUniformStateCallbackAtIndexForprogramToblockBmBm:47] ? 1 : 0;
ret += [GPUImageFilter setUniformsForProgramAtIndexBmBm:92] ? 1 : 0;
ret += [GPUImageFilter newFrameReadyAtTimeAtindexBmBm:24] ? 1 : 0;
ret += [GPUImageFilter nextAvailableTextureIndexBmBm:86] ? 1 : 0;
ret += [GPUImageFilter setInputFramebufferAtindexBmBm:8] ? 1 : 0;
ret += [GPUImageFilter rotatedSizeForindexBmBm:85] ? 1 : 0;
ret += [GPUImageFilter rotatedPointForrotationBmBm:9] ? 1 : 0;
ret += [GPUImageFilter setInputSizeAtindexBmBm:37] ? 1 : 0;
ret += [GPUImageFilter setInputRotationAtindexBmBm:56] ? 1 : 0;
ret += [GPUImageFilter forceProcessingAtSizeBmBm:88] ? 1 : 0;
ret += [GPUImageFilter forceProcessingAtSizeRespectingAspectRatioBmBm:58] ? 1 : 0;
ret += [GPUImageFilter maximumOutputSizeBmBm:16] ? 1 : 0;
ret += [GPUImageFilter endProcessingBmBm:7] ? 1 : 0;
ret += [GPUImageFilter wantsMonochromeInputBmBm:91] ? 1 : 0;
ret += [NSThread addAutoreleasePoolToCurrentRunloopBmBm:72] ? 1 : 0;
ret += [GPUImagePrewittEdgeDetectionFilter initBmBm:85] ? 1 : 0;
ret += [GPUImageGammaFilter initBmBm:50] ? 1 : 0;
ret += [GPUImageGammaFilter setGammaBmBm:35] ? 1 : 0;
ret += [DGActivityIndicatorBallTrianglePathAnimation setupAnimationInLayerWithsizeTintcolorBmBm:84] ? 1 : 0;
ret += [DGActivityIndicatorBallTrianglePathAnimation createCircleWithSizeColorBmBm:54] ? 1 : 0;
ret += [DGActivityIndicatorBallTrianglePathAnimation changeAnimationValuesDeltaxDeltayBmBm:82] ? 1 : 0;
ret += [DGActivityIndicatorBallTrianglePathAnimation translateWithdeltaxDeltayBmBm:86] ? 1 : 0;
ret += [GPUImageThresholdEdgeDetectionFilter initWithFragmentShaderFromStringBmBm:33] ? 1 : 0;
ret += [GPUImageThresholdEdgeDetectionFilter initBmBm:96] ? 1 : 0;
ret += [GPUImageThresholdEdgeDetectionFilter setThresholdBmBm:0] ? 1 : 0;
ret += [GPUImageLineGenerator initBmBm:20] ? 1 : 0;
ret += [GPUImageLineGenerator deallocBmBm:95] ? 1 : 0;
ret += [GPUImageLineGenerator generateLineCoordinatesBmBm:41] ? 1 : 0;
ret += [GPUImageLineGenerator renderLinesFromArrayCountFrametimeBmBm:22] ? 1 : 0;
ret += [GPUImageLineGenerator renderToTextureWithVerticesTexturecoordinatesBmBm:51] ? 1 : 0;
ret += [GPUImageLineGenerator setLineWidthBmBm:30] ? 1 : 0;
ret += [GPUImageLineGenerator setLineColorRedGreenBlueBmBm:94] ? 1 : 0;
ret += [NSMutableDictionary dictionaryWithPlistDataBmBm:84] ? 1 : 0;
ret += [NSMutableDictionary dictionaryWithPlistStringBmBm:66] ? 1 : 0;
ret += [NSMutableDictionary popObjectForKeyBmBm:95] ? 1 : 0;
ret += [NSMutableDictionary popEntriesForKeysBmBm:26] ? 1 : 0;
ret += [GPUImageDilationFilter initWithRadiusBmBm:76] ? 1 : 0;
ret += [GPUImageDilationFilter initBmBm:81] ? 1 : 0;
ret += [RACTwoTuple initBmBm:66] ? 1 : 0;
ret += [RACTwoTuple initWithBackingArrayBmBm:33] ? 1 : 0;
ret += [RACTwoTuple tupleByAddingObjectBmBm:96] ? 1 : 0;
ret += [RACTwoTuple packFirstBmBm:89] ? 1 : 0;
ret += [RACTwoTuple isEqualBmBm:97] ? 1 : 0;
ret += [YYClassPropertyInfo initWithPropertyBmBm:20] ? 1 : 0;
ret += [GPUImageMaskFilter initBmBm:96] ? 1 : 0;
ret += [GPUImageMaskFilter renderToTextureWithVerticesTexturecoordinatesBmBm:31] ? 1 : 0;
ret += [NSObject addObserverBlockForKeyPathBlockBmBm:30] ? 1 : 0;
ret += [NSObject removeObserverBlocksForKeyPathBmBm:35] ? 1 : 0;
ret += [NSObject removeObserverBlocksBmBm:23] ? 1 : 0;
ret += [NSObject _yy_allNSObjectObserverBlocksBmBm:32] ? 1 : 0;
ret += [UIImage imageWithSmallGIFDataScaleBmBm:99] ? 1 : 0;
ret += [UIImage isAnimatedGIFDataBmBm:57] ? 1 : 0;
ret += [UIImage isAnimatedGIFFileBmBm:85] ? 1 : 0;
ret += [UIImage imageWithPDFBmBm:74] ? 1 : 0;
ret += [UIImage imageWithPDFSizeBmBm:33] ? 1 : 0;
ret += [UIImage imageWithEmojiSizeBmBm:42] ? 1 : 0;
ret += [UIImage _yy_imageWithPDFResizeSizeBmBm:34] ? 1 : 0;
ret += [UIImage imageWithColorBmBm:55] ? 1 : 0;
ret += [UIImage imageWithColorSizeBmBm:87] ? 1 : 0;
ret += [UIImage imageWithSizeDrawblockBmBm:79] ? 1 : 0;
ret += [UIImage hasAlphaChannelBmBm:86] ? 1 : 0;
ret += [UIImage drawInRectWithcontentmodeClipstoboundsBmBm:72] ? 1 : 0;
ret += [UIImage imageByResizeToSizeBmBm:31] ? 1 : 0;
ret += [UIImage imageByResizeToSizeContentmodeBmBm:29] ? 1 : 0;
ret += [UIImage imageByCropToRectBmBm:83] ? 1 : 0;
ret += [UIImage imageByInsetEdgeWithcolorBmBm:64] ? 1 : 0;
ret += [UIImage imageByRoundCornerRadiusBmBm:41] ? 1 : 0;
ret += [UIImage imageByRoundCornerRadiusBorderwidthBordercolorBmBm:24] ? 1 : 0;
ret += [UIImage imageByRoundCornerRadiusCornersBorderwidthBordercolorBorderlinejoinBmBm:64] ? 1 : 0;
ret += [UIImage imageByRotateFitsizeBmBm:19] ? 1 : 0;
ret += [UIImage _yy_flipHorizontalVerticalBmBm:9] ? 1 : 0;
ret += [UIImage imageByRotateLeft90BmBm:51] ? 1 : 0;
ret += [UIImage imageByRotateRight90BmBm:82] ? 1 : 0;
ret += [UIImage imageByRotate180BmBm:92] ? 1 : 0;
ret += [UIImage imageByFlipVerticalBmBm:7] ? 1 : 0;
ret += [UIImage imageByFlipHorizontalBmBm:93] ? 1 : 0;
ret += [UIImage imageByTintColorBmBm:14] ? 1 : 0;
ret += [UIImage imageByGrayscaleBmBm:7] ? 1 : 0;
ret += [UIImage imageByBlurSoftBmBm:11] ? 1 : 0;
ret += [UIImage imageByBlurLightBmBm:92] ? 1 : 0;
ret += [UIImage imageByBlurExtraLightBmBm:44] ? 1 : 0;
ret += [UIImage imageByBlurDarkBmBm:58] ? 1 : 0;
ret += [UIImage imageByBlurWithTintBmBm:19] ? 1 : 0;
ret += [UIImage imageByBlurRadiusTintcolorTintmodeSaturationMaskimageBmBm:77] ? 1 : 0;
ret += [UIImage _yy_mergeImageRefTintcolorTintblendmodeMaskimageOpaqueBmBm:40] ? 1 : 0;
ret += [RACUnit defaultUnitBmBm:7] ? 1 : 0;
ret += [GPUImageSingleComponentGaussianBlurFilter vertexShaderForOptimizedBlurOfRadiusSigmaBmBm:20] ? 1 : 0;
ret += [GPUImageSingleComponentGaussianBlurFilter fragmentShaderForOptimizedBlurOfRadiusSigmaBmBm:86] ? 1 : 0;
ret += [GPUImageSharpenFilter initBmBm:16] ? 1 : 0;
ret += [GPUImageSharpenFilter setupFilterForSizeBmBm:25] ? 1 : 0;
ret += [GPUImageSharpenFilter setSharpnessBmBm:41] ? 1 : 0;
ret += [RACEmptySignal setNameBmBm:54] ? 1 : 0;
ret += [RACEmptySignal nameBmBm:63] ? 1 : 0;
ret += [RACEmptySignal emptyBmBm:61] ? 1 : 0;
ret += [RACEmptySignal subscribeBmBm:62] ? 1 : 0;
ret += [GPUImageVideoCamera initBmBm:42] ? 1 : 0;
ret += [GPUImageVideoCamera initWithSessionPresetCamerapositionBmBm:91] ? 1 : 0;
ret += [GPUImageVideoCamera framebufferForOutputBmBm:3] ? 1 : 0;
ret += [GPUImageVideoCamera deallocBmBm:98] ? 1 : 0;
ret += [GPUImageVideoCamera addAudioInputsAndOutputsBmBm:79] ? 1 : 0;
ret += [GPUImageVideoCamera removeAudioInputsAndOutputsBmBm:44] ? 1 : 0;
ret += [GPUImageVideoCamera removeInputsAndOutputsBmBm:43] ? 1 : 0;
ret += [GPUImageVideoCamera addTargetAttexturelocationBmBm:82] ? 1 : 0;
ret += [GPUImageVideoCamera startCameraCaptureBmBm:75] ? 1 : 0;
ret += [GPUImageVideoCamera stopCameraCaptureBmBm:3] ? 1 : 0;
ret += [GPUImageVideoCamera pauseCameraCaptureBmBm:87] ? 1 : 0;
ret += [GPUImageVideoCamera resumeCameraCaptureBmBm:63] ? 1 : 0;
ret += [GPUImageVideoCamera rotateCameraBmBm:75] ? 1 : 0;
ret += [GPUImageVideoCamera cameraPositionBmBm:4] ? 1 : 0;
ret += [GPUImageVideoCamera isBackFacingCameraPresentBmBm:54] ? 1 : 0;
ret += [GPUImageVideoCamera isBackFacingCameraPresentBmBm:32] ? 1 : 0;
ret += [GPUImageVideoCamera isFrontFacingCameraPresentBmBm:42] ? 1 : 0;
ret += [GPUImageVideoCamera isFrontFacingCameraPresentBmBm:39] ? 1 : 0;
ret += [GPUImageVideoCamera setCaptureSessionPresetBmBm:38] ? 1 : 0;
ret += [GPUImageVideoCamera setFrameRateBmBm:24] ? 1 : 0;
ret += [GPUImageVideoCamera frameRateBmBm:53] ? 1 : 0;
ret += [GPUImageVideoCamera videoCaptureConnectionBmBm:62] ? 1 : 0;
ret += [GPUImageVideoCamera updateTargetsForVideoCameraUsingCacheTextureAtWidthHeightTimeBmBm:79] ? 1 : 0;
ret += [GPUImageVideoCamera processVideoSampleBufferBmBm:85] ? 1 : 0;
ret += [GPUImageVideoCamera processAudioSampleBufferBmBm:41] ? 1 : 0;
ret += [GPUImageVideoCamera convertYUVToRGBOutputBmBm:36] ? 1 : 0;
ret += [GPUImageVideoCamera averageFrameDurationDuringCaptureBmBm:26] ? 1 : 0;
ret += [GPUImageVideoCamera resetBenchmarkAverageBmBm:74] ? 1 : 0;
ret += [GPUImageVideoCamera captureOutputDidoutputsamplebufferFromconnectionBmBm:30] ? 1 : 0;
ret += [GPUImageVideoCamera setAudioEncodingTargetBmBm:16] ? 1 : 0;
ret += [GPUImageVideoCamera updateOrientationSendToTargetsBmBm:85] ? 1 : 0;
ret += [GPUImageVideoCamera setOutputImageOrientationBmBm:40] ? 1 : 0;
ret += [GPUImageVideoCamera setHorizontallyMirrorFrontFacingCameraBmBm:14] ? 1 : 0;
ret += [GPUImageVideoCamera setHorizontallyMirrorRearFacingCameraBmBm:76] ? 1 : 0;
ret += [DGActivityIndicatorBallSpinFadeLoader setupAnimationInLayerWithsizeTintcolorBmBm:48] ? 1 : 0;
ret += [DGActivityIndicatorBallSpinFadeLoader circleLayerSizeOriginContainersizeColorBmBm:51] ? 1 : 0;
ret += [DGActivityIndicatorBallSpinFadeLoader createLayerWithColorBmBm:23] ? 1 : 0;
ret += [NSString md2StringBmBm:93] ? 1 : 0;
ret += [NSString md4StringBmBm:79] ? 1 : 0;
ret += [NSString md5StringBmBm:24] ? 1 : 0;
ret += [NSString sha1StringBmBm:82] ? 1 : 0;
ret += [NSString sha224StringBmBm:81] ? 1 : 0;
ret += [NSString sha256StringBmBm:78] ? 1 : 0;
ret += [NSString sha384StringBmBm:16] ? 1 : 0;
ret += [NSString sha512StringBmBm:11] ? 1 : 0;
ret += [NSString crc32StringBmBm:27] ? 1 : 0;
ret += [NSString hmacMD5StringWithKeyBmBm:54] ? 1 : 0;
ret += [NSString hmacSHA1StringWithKeyBmBm:49] ? 1 : 0;
ret += [NSString hmacSHA224StringWithKeyBmBm:90] ? 1 : 0;
ret += [NSString hmacSHA256StringWithKeyBmBm:2] ? 1 : 0;
ret += [NSString hmacSHA384StringWithKeyBmBm:80] ? 1 : 0;
ret += [NSString hmacSHA512StringWithKeyBmBm:4] ? 1 : 0;
ret += [NSString base64EncodedStringBmBm:54] ? 1 : 0;
ret += [NSString stringWithBase64EncodedStringBmBm:65] ? 1 : 0;
ret += [NSString stringByURLEncodeBmBm:29] ? 1 : 0;
ret += [NSString stringByURLDecodeBmBm:5] ? 1 : 0;
ret += [NSString stringByEscapingHTMLBmBm:80] ? 1 : 0;
ret += [NSString sizeForFontSizeModeBmBm:54] ? 1 : 0;
ret += [NSString widthForFontBmBm:19] ? 1 : 0;
ret += [NSString heightForFontWidthBmBm:98] ? 1 : 0;
ret += [NSString matchesRegexOptionsBmBm:71] ? 1 : 0;
ret += [NSString enumerateRegexMatchesOptionsUsingblockBmBm:17] ? 1 : 0;
ret += [NSString stringByReplacingRegexOptionsWithstringBmBm:15] ? 1 : 0;
ret += [NSString charValueBmBm:25] ? 1 : 0;
ret += [NSString unsignedCharValueBmBm:4] ? 1 : 0;
ret += [NSString shortValueBmBm:37] ? 1 : 0;
ret += [NSString unsignedShortValueBmBm:63] ? 1 : 0;
ret += [NSString unsignedIntValueBmBm:13] ? 1 : 0;
ret += [NSString longValueBmBm:77] ? 1 : 0;
ret += [NSString unsignedLongValueBmBm:48] ? 1 : 0;
ret += [NSString unsignedLongLongValueBmBm:62] ? 1 : 0;
ret += [NSString unsignedIntegerValueBmBm:30] ? 1 : 0;
ret += [NSString stringWithUUIDBmBm:53] ? 1 : 0;
ret += [NSString stringWithUTF32CharBmBm:41] ? 1 : 0;
ret += [NSString stringWithUTF32CharsLengthBmBm:34] ? 1 : 0;
ret += [NSString enumerateUTF32CharInRangeUsingblockBmBm:55] ? 1 : 0;
ret += [NSString stringByTrimBmBm:96] ? 1 : 0;
ret += [NSString stringByAppendingNameScaleBmBm:53] ? 1 : 0;
ret += [NSString stringByAppendingPathScaleBmBm:1] ? 1 : 0;
ret += [NSString pathScaleBmBm:42] ? 1 : 0;
ret += [NSString isNotBlankBmBm:52] ? 1 : 0;
ret += [NSString containsStringBmBm:74] ? 1 : 0;
ret += [NSString containsCharacterSetBmBm:25] ? 1 : 0;
ret += [NSString numberValueBmBm:48] ? 1 : 0;
ret += [NSString dataValueBmBm:80] ? 1 : 0;
ret += [NSString rangeOfAllBmBm:58] ? 1 : 0;
ret += [NSString jsonValueDecodedBmBm:6] ? 1 : 0;
ret += [NSString stringNamedBmBm:83] ? 1 : 0;
ret += [NSNotificationCenter rac_addObserverForNameObjectBmBm:28] ? 1 : 0;
ret += [UIFont isBoldBmBm:47] ? 1 : 0;
ret += [UIFont isItalicBmBm:35] ? 1 : 0;
ret += [UIFont isMonoSpaceBmBm:79] ? 1 : 0;
ret += [UIFont isColorGlyphsBmBm:70] ? 1 : 0;
ret += [UIFont fontWeightBmBm:36] ? 1 : 0;
ret += [UIFont fontWithBoldBmBm:42] ? 1 : 0;
ret += [UIFont fontWithItalicBmBm:58] ? 1 : 0;
ret += [UIFont fontWithBoldItalicBmBm:27] ? 1 : 0;
ret += [UIFont fontWithNormalBmBm:55] ? 1 : 0;
ret += [UIFont fontWithCTFontBmBm:85] ? 1 : 0;
ret += [UIFont fontWithCGFontSizeBmBm:89] ? 1 : 0;
ret += [UIFont CF_RETURNS_RETAINEDBmBm:62] ? 1 : 0;
ret += [UIFont CF_RETURNS_RETAINEDBmBm:88] ? 1 : 0;
ret += [UIFont loadFontFromPathBmBm:99] ? 1 : 0;
ret += [UIFont unloadFontFromPathBmBm:36] ? 1 : 0;
ret += [UIFont loadFontFromDataBmBm:34] ? 1 : 0;
ret += [UIFont unloadFontFromDataBmBm:71] ? 1 : 0;
ret += [UIFont dataFromFontBmBm:8] ? 1 : 0;
ret += [UIFont dataFromCGFontBmBm:85] ? 1 : 0;
ret += [NSFileHandle rac_readInBackgroundBmBm:99] ? 1 : 0;
ret += [GPUImagePicture initWithURLBmBm:88] ? 1 : 0;
ret += [GPUImagePicture initWithDataBmBm:54] ? 1 : 0;
ret += [GPUImagePicture initWithImageBmBm:78] ? 1 : 0;
ret += [GPUImagePicture initWithCGImageBmBm:44] ? 1 : 0;
ret += [GPUImagePicture initWithImageSmoothlyscaleoutputBmBm:68] ? 1 : 0;
ret += [GPUImagePicture initWithCGImageSmoothlyscaleoutputBmBm:58] ? 1 : 0;
ret += [GPUImagePicture deallocBmBm:90] ? 1 : 0;
ret += [GPUImagePicture removeAllTargetsBmBm:78] ? 1 : 0;
ret += [GPUImagePicture processImageBmBm:7] ? 1 : 0;
ret += [GPUImagePicture processImageWithCompletionHandlerBmBm:29] ? 1 : 0;
ret += [GPUImagePicture processImageUpToFilterWithcompletionhandlerBmBm:54] ? 1 : 0;
ret += [GPUImagePicture outputImageSizeBmBm:5] ? 1 : 0;
ret += [GPUImagePicture addTargetAttexturelocationBmBm:97] ? 1 : 0;
ret += [UIApplication documentsURLBmBm:84] ? 1 : 0;
ret += [UIApplication documentsPathBmBm:76] ? 1 : 0;
ret += [UIApplication cachesURLBmBm:61] ? 1 : 0;
ret += [UIApplication cachesPathBmBm:42] ? 1 : 0;
ret += [UIApplication libraryURLBmBm:63] ? 1 : 0;
ret += [UIApplication libraryPathBmBm:37] ? 1 : 0;
ret += [UIApplication isPiratedBmBm:88] ? 1 : 0;
ret += [UIApplication _yy_fileExistInMainBundleBmBm:26] ? 1 : 0;
ret += [UIApplication appBundleNameBmBm:94] ? 1 : 0;
ret += [UIApplication appBundleIDBmBm:31] ? 1 : 0;
ret += [UIApplication appVersionBmBm:11] ? 1 : 0;
ret += [UIApplication appBuildVersionBmBm:15] ? 1 : 0;
ret += [UIApplication isBeingDebuggedBmBm:94] ? 1 : 0;
ret += [UIApplication memoryUsageBmBm:48] ? 1 : 0;
ret += [UIApplication cpuUsageBmBm:56] ? 1 : 0;
ret += [UIApplication _delaySetActivityBmBm:8] ? 1 : 0;
ret += [UIApplication _changeNetworkActivityCountBmBm:73] ? 1 : 0;
ret += [UIApplication incrementNetworkActivityCountBmBm:63] ? 1 : 0;
ret += [UIApplication decrementNetworkActivityCountBmBm:72] ? 1 : 0;
ret += [UIApplication isAppExtensionBmBm:55] ? 1 : 0;
ret += [UIApplication sharedExtensionApplicationBmBm:53] ? 1 : 0;
ret += [WKWebView af_URLSessionTaskBmBm:60] ? 1 : 0;
ret += [WKWebView af_setURLSessionTaskBmBm:92] ? 1 : 0;
ret += [GPUImageClosingFilter initBmBm:23] ? 1 : 0;
ret += [GPUImageClosingFilter initWithRadiusBmBm:89] ? 1 : 0;
ret += [GPUImageClosingFilter setVerticalTexelSpacingBmBm:2] ? 1 : 0;
ret += [GPUImageClosingFilter setHorizontalTexelSpacingBmBm:16] ? 1 : 0;
ret += [GPUImage3x3TextureSamplingFilter initWithVertexShaderFromStringFragmentshaderfromstringBmBm:43] ? 1 : 0;
ret += [GPUImage3x3TextureSamplingFilter initWithFragmentShaderFromStringBmBm:91] ? 1 : 0;
ret += [GPUImage3x3TextureSamplingFilter setupFilterForSizeBmBm:19] ? 1 : 0;
ret += [GPUImage3x3TextureSamplingFilter setTexelWidthBmBm:38] ? 1 : 0;
ret += [GPUImage3x3TextureSamplingFilter setTexelHeightBmBm:81] ? 1 : 0;
ret += [RACChannelTerminal initWithValuesOtherterminalBmBm:48] ? 1 : 0;
ret += [RACChannelTerminal subscribeBmBm:12] ? 1 : 0;
ret += [RACChannelTerminal sendNextBmBm:51] ? 1 : 0;
ret += [RACChannelTerminal sendErrorBmBm:1] ? 1 : 0;
ret += [RACChannelTerminal sendCompletedBmBm:75] ? 1 : 0;
ret += [RACChannelTerminal didSubscribeWithDisposableBmBm:95] ? 1 : 0;
ret += [RACIndexSetSequence sequenceWithIndexSetBmBm:23] ? 1 : 0;
ret += [RACIndexSetSequence sequenceWithIndexSetSequenceOffsetBmBm:86] ? 1 : 0;
ret += [RACIndexSetSequence headBmBm:3] ? 1 : 0;
ret += [RACIndexSetSequence tailBmBm:17] ? 1 : 0;
ret += [RACIndexSetSequence countByEnumeratingWithStateObjectsCountBmBm:15] ? 1 : 0;
ret += [RACIndexSetSequence descriptionBmBm:30] ? 1 : 0;
ret += [RACSignal asynchronousFirstOrDefaultSuccessErrorBmBm:93] ? 1 : 0;
ret += [RACSignal asynchronousFirstOrDefaultSuccessErrorTimeoutBmBm:51] ? 1 : 0;
ret += [RACSignal asynchronouslyWaitUntilCompletedTimeoutBmBm:51] ? 1 : 0;
ret += [RACSignal asynchronouslyWaitUntilCompletedBmBm:64] ? 1 : 0;
ret += [GPUImageHazeFilter initBmBm:97] ? 1 : 0;
ret += [GPUImageHazeFilter setDistanceBmBm:37] ? 1 : 0;
ret += [GPUImageHazeFilter setSlopeBmBm:34] ? 1 : 0;
ret += [RACImmediateScheduler initBmBm:98] ? 1 : 0;
ret += [RACImmediateScheduler scheduleBmBm:33] ? 1 : 0;
ret += [RACImmediateScheduler afterScheduleBmBm:84] ? 1 : 0;
ret += [RACImmediateScheduler afterRepeatingeveryWithleewayScheduleBmBm:22] ? 1 : 0;
ret += [RACImmediateScheduler scheduleRecursiveBlockBmBm:71] ? 1 : 0;
ret += [NSArray sortedArrayByTagBmBm:87] ? 1 : 0;
ret += [NSArray sortedArrayByPositionBmBm:50] ? 1 : 0;
ret += [GPUImageErosionFilter initWithRadiusBmBm:56] ? 1 : 0;
ret += [GPUImageErosionFilter initBmBm:31] ? 1 : 0;
ret += [DGActivityIndicatorDoubleBounceAnimation setupAnimationInLayerWithsizeTintcolorBmBm:80] ? 1 : 0;
ret += [GPUImageTwoInputCrossTextureSamplingFilter initWithFragmentShaderFromStringBmBm:4] ? 1 : 0;
ret += [GPUImageTwoInputCrossTextureSamplingFilter setupFilterForSizeBmBm:9] ? 1 : 0;
ret += [GPUImageTwoInputCrossTextureSamplingFilter setTexelWidthBmBm:79] ? 1 : 0;
ret += [GPUImageTwoInputCrossTextureSamplingFilter setTexelHeightBmBm:76] ? 1 : 0;
ret += [GPUImageAddBlendFilter initBmBm:43] ? 1 : 0;
ret += [DGActivityIndicatorBallZigZagDeflectAnimation setupAnimationInLayerWithsizeTintcolorBmBm:75] ? 1 : 0;
ret += [GPUImageCGAColorspaceFilter initBmBm:86] ? 1 : 0;
ret += [RACTupleNil tupleNilBmBm:65] ? 1 : 0;
ret += [RACTupleNil copyWithZoneBmBm:50] ? 1 : 0;
ret += [RACTupleNil initWithCoderBmBm:87] ? 1 : 0;
ret += [RACTupleNil encodeWithCoderBmBm:20] ? 1 : 0;
ret += [MAS_VIEW mas_installedConstraintsBmBm:77] ? 1 : 0;
ret += [RACBehaviorSubject behaviorSubjectWithDefaultValueBmBm:25] ? 1 : 0;
ret += [RACBehaviorSubject subscribeBmBm:96] ? 1 : 0;
ret += [RACBehaviorSubject sendNextBmBm:13] ? 1 : 0;
ret += [DGActivityIndicatorRotatingTrigonAnimation setupAnimationInLayerWithsizeTintcolorBmBm:41] ? 1 : 0;
ret += [GPUImageStretchDistortionFilter initBmBm:5] ? 1 : 0;
ret += [GPUImageStretchDistortionFilter setInputRotationAtindexBmBm:6] ? 1 : 0;
ret += [GPUImageStretchDistortionFilter setCenterBmBm:16] ? 1 : 0;
ret += [GPUImageColorPackingFilter initBmBm:99] ? 1 : 0;
ret += [GPUImageColorPackingFilter setupFilterForSizeBmBm:90] ? 1 : 0;
ret += [GPUImageColorPackingFilter sizeOfFBOBmBm:50] ? 1 : 0;
ret += [GPUImageColorPackingFilter outputFrameSizeBmBm:75] ? 1 : 0;
ret += [GPUImageSmoothToonFilter initBmBm:14] ? 1 : 0;
ret += [GPUImageSmoothToonFilter setBlurRadiusInPixelsBmBm:59] ? 1 : 0;
ret += [GPUImageSmoothToonFilter blurRadiusInPixelsBmBm:36] ? 1 : 0;
ret += [GPUImageSmoothToonFilter setTexelWidthBmBm:35] ? 1 : 0;
ret += [GPUImageSmoothToonFilter texelWidthBmBm:66] ? 1 : 0;
ret += [GPUImageSmoothToonFilter setTexelHeightBmBm:42] ? 1 : 0;
ret += [GPUImageSmoothToonFilter texelHeightBmBm:5] ? 1 : 0;
ret += [GPUImageSmoothToonFilter setThresholdBmBm:38] ? 1 : 0;
ret += [GPUImageSmoothToonFilter thresholdBmBm:94] ? 1 : 0;
ret += [GPUImageSmoothToonFilter setQuantizationLevelsBmBm:76] ? 1 : 0;
ret += [GPUImageSmoothToonFilter quantizationLevelsBmBm:58] ? 1 : 0;
ret += [UIActionSheet rac_delegateProxyBmBm:13] ? 1 : 0;
ret += [UIActionSheet rac_buttonClickedSignalBmBm:37] ? 1 : 0;
ret += [DGActivityIndicatorBallScaleRippleAnimation setupAnimationInLayerWithsizeTintcolorBmBm:9] ? 1 : 0;
ret += [GPUImageLinearBurnBlendFilter initBmBm:69] ? 1 : 0;
ret += [UIImagePickerController rac_delegateProxyBmBm:8] ? 1 : 0;
ret += [UIImagePickerController rac_imageSelectedSignalBmBm:61] ? 1 : 0;
ret += [RACGroupedSignal signalWithKeyBmBm:70] ? 1 : 0;
ret += [GPUImageTextureInput initWithTextureSizeBmBm:62] ? 1 : 0;
ret += [GPUImageTextureInput processTextureWithFrameTimeBmBm:71] ? 1 : 0;
ret += [GPUImageOverlayBlendFilter initBmBm:65] ? 1 : 0;
ret += [GPUImageGaussianSelectiveBlurFilter initBmBm:88] ? 1 : 0;
ret += [GPUImageGaussianSelectiveBlurFilter setInputSizeAtindexBmBm:9] ? 1 : 0;
ret += [GPUImageGaussianSelectiveBlurFilter setBlurRadiusInPixelsBmBm:84] ? 1 : 0;
ret += [GPUImageGaussianSelectiveBlurFilter blurRadiusInPixelsBmBm:9] ? 1 : 0;
ret += [GPUImageGaussianSelectiveBlurFilter setExcludeCirclePointBmBm:51] ? 1 : 0;
ret += [GPUImageGaussianSelectiveBlurFilter setExcludeCircleRadiusBmBm:20] ? 1 : 0;
ret += [GPUImageGaussianSelectiveBlurFilter setExcludeBlurSizeBmBm:65] ? 1 : 0;
ret += [GPUImageGaussianSelectiveBlurFilter setAspectRatioBmBm:68] ? 1 : 0;
ret += [GPUImageParallelCoordinateLineTransformFilter initBmBm:1] ? 1 : 0;
ret += [GPUImageParallelCoordinateLineTransformFilter deallocBmBm:38] ? 1 : 0;
ret += [GPUImageParallelCoordinateLineTransformFilter initializeAttributesBmBm:3] ? 1 : 0;
ret += [GPUImageParallelCoordinateLineTransformFilter generateLineCoordinatesBmBm:68] ? 1 : 0;
ret += [GPUImageParallelCoordinateLineTransformFilter newFrameReadyAtTimeAtindexBmBm:84] ? 1 : 0;
ret += [GPUImageParallelCoordinateLineTransformFilter renderToTextureWithVerticesTexturecoordinatesBmBm:49] ? 1 : 0;
ret += [RACTuple rac_descriptionBmBm:47] ? 1 : 0;
ret += [RACThreeTuple initBmBm:72] ? 1 : 0;
ret += [RACThreeTuple initWithBackingArrayBmBm:63] ? 1 : 0;
ret += [RACThreeTuple tupleByAddingObjectBmBm:31] ? 1 : 0;
ret += [RACThreeTuple packFirstSecondBmBm:34] ? 1 : 0;
ret += [RACThreeTuple isEqualBmBm:91] ? 1 : 0;
ret += [GPUImageHighlightShadowFilter initBmBm:94] ? 1 : 0;
ret += [GPUImageHighlightShadowFilter setShadowsBmBm:66] ? 1 : 0;
ret += [GPUImageHighlightShadowFilter setHighlightsBmBm:11] ? 1 : 0;
ret += [GPUImageExclusionBlendFilter initBmBm:45] ? 1 : 0;
ret += [GPUImageMosaicFilter initBmBm:58] ? 1 : 0;
ret += [GPUImageMosaicFilter setColorOnBmBm:64] ? 1 : 0;
ret += [GPUImageMosaicFilter setNumTilesBmBm:99] ? 1 : 0;
ret += [GPUImageMosaicFilter setInputTileSizeBmBm:38] ? 1 : 0;
ret += [GPUImageMosaicFilter setDisplayTileSizeBmBm:52] ? 1 : 0;
ret += [GPUImageMosaicFilter setTileSetBmBm:84] ? 1 : 0;
ret += [UIControl removeAllTargetsBmBm:13] ? 1 : 0;
ret += [UIControl setTargetActionForcontroleventsBmBm:21] ? 1 : 0;
ret += [UIControl addBlockForControlEventsBlockBmBm:10] ? 1 : 0;
ret += [UIControl setBlockForControlEventsBlockBmBm:50] ? 1 : 0;
ret += [UIControl removeAllBlocksForControlEventsBmBm:81] ? 1 : 0;
ret += [UIControl _yy_allUIControlBlockTargetsBmBm:28] ? 1 : 0;
ret += [GPUImageSketchFilter initBmBm:22] ? 1 : 0;
ret += [UIScrollView setShouldIgnoreScrollingAdjustmentBmBm:11] ? 1 : 0;
ret += [UIScrollView shouldIgnoreScrollingAdjustmentBmBm:17] ? 1 : 0;
ret += [UIScrollView setShouldIgnoreContentInsetAdjustmentBmBm:38] ? 1 : 0;
ret += [UIScrollView shouldIgnoreContentInsetAdjustmentBmBm:10] ? 1 : 0;
ret += [UIScrollView setShouldRestoreScrollViewContentOffsetBmBm:12] ? 1 : 0;
ret += [UIScrollView shouldRestoreScrollViewContentOffsetBmBm:20] ? 1 : 0;
ret += [AFImageDownloadReceipt initWithReceiptIDTaskBmBm:45] ? 1 : 0;
ret += [GPUImageEmbossFilter initBmBm:90] ? 1 : 0;
ret += [GPUImageEmbossFilter setIntensityBmBm:58] ? 1 : 0;
ret += [TKImageView initWithFrameBm:49] ? 1 : 0;
ret += [TKImageView initWithCoderBm:94] ? 1 : 0;
ret += [TKImageView commonInitBm:67] ? 1 : 0;
ret += [TKImageView deallocBm:64] ? 1 : 0;
ret += [TKImageView setUpBm:77] ? 1 : 0;
ret += [TKImageView bindPanGesturesBm:32] ? 1 : 0;
ret += [TKImageView handleCropAreaPinchBm:19] ? 1 : 0;
ret += [TKImageView handleCropAreaPanBm:57] ? 1 : 0;
ret += [TKImageView handleMidPanBm:8] ? 1 : 0;
ret += [TKImageView handleCornerPanBm:75] ? 1 : 0;
ret += [TKImageView resetCornersOnCropAreaFrameChangedBm:73] ? 1 : 0;
ret += [TKImageView resetCropAreaOnCornersFrameChangedBm:90] ? 1 : 0;
ret += [TKImageView resetMinSpaceIfNeededBm:65] ? 1 : 0;
ret += [TKImageView resetCropTransparentAreaBm:49] ? 1 : 0;
ret += [TKImageView resetCornersOnSizeChangedBm:58] ? 1 : 0;
ret += [TKImageView createCornersBm:10] ? 1 : 0;
ret += [TKImageView createMidLinesBm:0] ? 1 : 0;
ret += [TKImageView removeMidLinesBm:52] ? 1 : 0;
ret += [TKImageView resetMidLinesBm:58] ? 1 : 0;
ret += [TKImageView resetImageViewBm:10] ? 1 : 0;
ret += [TKImageView resetCropAreaByAspectRatioBm:37] ? 1 : 0;
ret += [TKImageView resetCropAreaByScaleFactorBm:48] ? 1 : 0;
ret += [TKImageView setInitialScaleFactorBm:19] ? 1 : 0;
ret += [TKImageView cornerMarginBm:15] ? 1 : 0;
ret += [TKImageView setMaskColorBm:33] ? 1 : 0;
ret += [TKImageView setMinSpaceBm:11] ? 1 : 0;
ret += [TKImageView setToCropImageBm:20] ? 1 : 0;
ret += [TKImageView setNeedScaleCropBm:66] ? 1 : 0;
ret += [TKImageView setCropAreaCrossLineWidthBm:34] ? 1 : 0;
ret += [TKImageView setCropAreaCrossLineColorBm:19] ? 1 : 0;
ret += [TKImageView setCropAreaMidLineWidthBm:58] ? 1 : 0;
ret += [TKImageView setCropAreaMidLineHeightBm:56] ? 1 : 0;
ret += [TKImageView setCropAreaMidLineColorBm:34] ? 1 : 0;
ret += [TKImageView setCropAreaBorderLineWidthBm:48] ? 1 : 0;
ret += [TKImageView setCropAreaBorderLineColorBm:57] ? 1 : 0;
ret += [TKImageView setCropAreaCornerLineColorBm:26] ? 1 : 0;
ret += [TKImageView setCropAreaCornerLineWidthBm:85] ? 1 : 0;
ret += [TKImageView setCropAreaCornerWidthBm:25] ? 1 : 0;
ret += [TKImageView setCropAreaCornerHeightBm:0] ? 1 : 0;
ret += [TKImageView setCropAspectRatioBm:85] ? 1 : 0;
ret += [TKImageView setShowMidLinesBm:49] ? 1 : 0;
ret += [TKImageView setShowCrossLinesBm:32] ? 1 : 0;
ret += [TKImageView setCornerBorderInImageBm:38] ? 1 : 0;
ret += [TKImageView setFrameBm:30] ? 1 : 0;
ret += [TKImageView setCenterBm:15] ? 1 : 0;
ret += [TKImageView observeValueForKeyPathOfobjectChangeContextBm:28] ? 1 : 0;
ret += [TKImageView rotateBm:55] ? 1 : 0;
ret += [TKImageView showBm:14] ? 1 : 0;
ret += [TKImageView hideBm:8] ? 1 : 0;
ret += [TKImageView currentCroppedImageBm:17] ? 1 : 0;
ret += [UIImage fixOrientationBm:21] ? 1 : 0;
ret += [UIImage imageAtRectBm:98] ? 1 : 0;
ret += [SFHFKeychainUtils getPasswordForUsernameAndservicenameErrorBm:40] ? 1 : 0;
ret += [SFHFKeychainUtils storeUsernameAndpasswordForservicenameUpdateexistingErrorBm:51] ? 1 : 0;
ret += [SFHFKeychainUtils deleteItemForUsernameAndservicenameErrorBm:36] ? 1 : 0;
ret += [SFHFKeychainUtils getKeychainItemReferenceForUsernameAndservicenameErrorBm:5] ? 1 : 0;
ret += [SFHFKeychainUtils getPasswordForUsernameAndservicenameErrorBm:43] ? 1 : 0;
ret += [SFHFKeychainUtils storeUsernameAndpasswordForservicenameUpdateexistingErrorBm:64] ? 1 : 0;
ret += [SFHFKeychainUtils deleteItemForUsernameAndservicenameErrorBm:93] ? 1 : 0;
ret += [VIMVideoPlayer deallocBm:96] ? 1 : 0;
ret += [VIMVideoPlayer initBm:52] ? 1 : 0;
ret += [VIMVideoPlayer setupPlayerBm:57] ? 1 : 0;
ret += [VIMVideoPlayer setupAudioSessionBm:2] ? 1 : 0;
ret += [VIMVideoPlayer setURLBm:25] ? 1 : 0;
ret += [VIMVideoPlayer setPlayerItemBm:38] ? 1 : 0;
ret += [VIMVideoPlayer setAssetBm:55] ? 1 : 0;
ret += [VIMVideoPlayer setMutedBm:5] ? 1 : 0;
ret += [VIMVideoPlayer isMutedBm:36] ? 1 : 0;
ret += [VIMVideoPlayer playBm:67] ? 1 : 0;
ret += [VIMVideoPlayer pauseBm:53] ? 1 : 0;
ret += [VIMVideoPlayer seekToTimeBm:76] ? 1 : 0;
ret += [VIMVideoPlayer resetBm:1] ? 1 : 0;
ret += [VIMVideoPlayer enableAirplayBm:91] ? 1 : 0;
ret += [VIMVideoPlayer disableAirplayBm:43] ? 1 : 0;
ret += [VIMVideoPlayer isAirplayEnabledBm:55] ? 1 : 0;
ret += [VIMVideoPlayer startScrubbingBm:48] ? 1 : 0;
ret += [VIMVideoPlayer scrubBm:8] ? 1 : 0;
ret += [VIMVideoPlayer stopScrubbingBm:20] ? 1 : 0;
ret += [VIMVideoPlayer enableTimeUpdatesBm:73] ? 1 : 0;
ret += [VIMVideoPlayer disableTimeUpdatesBm:5] ? 1 : 0;
ret += [VIMVideoPlayer setVolumeBm:7] ? 1 : 0;
ret += [VIMVideoPlayer cancelFadeVolumeBm:28] ? 1 : 0;
ret += [VIMVideoPlayer fadeInVolumeBm:68] ? 1 : 0;
ret += [VIMVideoPlayer fadeOutVolumeBm:16] ? 1 : 0;
ret += [VIMVideoPlayer reportUnableToCreatePlayerItemBm:33] ? 1 : 0;
ret += [VIMVideoPlayer resetPlayerItemIfNecessaryBm:16] ? 1 : 0;
ret += [VIMVideoPlayer preparePlayerItemBm:57] ? 1 : 0;
ret += [VIMVideoPlayer restartBm:98] ? 1 : 0;
ret += [VIMVideoPlayer isAtEndTimeBm:37] ? 1 : 0;
ret += [VIMVideoPlayer calcLoadedDurationBm:60] ? 1 : 0;
ret += [VIMVideoPlayer addPlayerObserversBm:91] ? 1 : 0;
ret += [VIMVideoPlayer removePlayerObserversBm:69] ? 1 : 0;
ret += [VIMVideoPlayer addPlayerItemObserversBm:86] ? 1 : 0;
ret += [VIMVideoPlayer removePlayerItemObserversBm:85] ? 1 : 0;
ret += [VIMVideoPlayer addTimeObserverBm:71] ? 1 : 0;
ret += [VIMVideoPlayer removeTimeObserverBm:81] ? 1 : 0;
ret += [VIMVideoPlayer observeValueForKeyPathOfobjectChangeContextBm:77] ? 1 : 0;
ret += [VIMVideoPlayer playerItemDidPlayToEndTimeBm:71] ? 1 : 0;
ret += [VIMVideoPlayerView deallocBm:98] ? 1 : 0;
ret += [VIMVideoPlayerView initWithFrameBm:84] ? 1 : 0;
ret += [VIMVideoPlayerView initWithCoderBm:26] ? 1 : 0;
ret += [VIMVideoPlayerView commonInitBm:36] ? 1 : 0;
ret += [VIMVideoPlayerView setPlayerBm:6] ? 1 : 0;
ret += [VIMVideoPlayerView setVideoFillModeBm:48] ? 1 : 0;
ret += [VIMVideoPlayerView attachPlayerBm:76] ? 1 : 0;
ret += [VIMVideoPlayerView detachPlayerBm:78] ? 1 : 0;
ret += [VIMVideoPlayerView layerClassBm:23] ? 1 : 0;
ret += [VIMVideoPlayerView videoPlayerIsReadyToPlayVideoBm:93] ? 1 : 0;
ret += [VIMVideoPlayerView videoPlayerDidReachEndBm:31] ? 1 : 0;
ret += [VIMVideoPlayerView videoPlayerTimedidchangeBm:29] ? 1 : 0;
ret += [VIMVideoPlayerView videoPlayerLoadedtimerangedidchangeBm:14] ? 1 : 0;
ret += [VIMVideoPlayerView videoPlayerPlaybackBufferEmptyBm:29] ? 1 : 0;
ret += [VIMVideoPlayerView videoPlayerPlaybackLikelyToKeepUpBm:51] ? 1 : 0;
ret += [VIMVideoPlayerView videoPlayerDidfailwitherrorBm:54] ? 1 : 0;
ret += [RTImagePickerPhoto photoWithImageBm:11] ? 1 : 0;
ret += [RTImagePickerPhoto photoWithURLBm:12] ? 1 : 0;
ret += [RTImagePickerPhoto photoWithAssetTargetsizeBm:21] ? 1 : 0;
ret += [RTImagePickerPhoto videoWithURLBm:14] ? 1 : 0;
ret += [RTImagePickerPhoto initBm:88] ? 1 : 0;
ret += [RTImagePickerPhoto initWithImageBm:90] ? 1 : 0;
ret += [RTImagePickerPhoto initWithURLBm:66] ? 1 : 0;
ret += [RTImagePickerPhoto initWithAssetTargetsizeBm:97] ? 1 : 0;
ret += [RTImagePickerPhoto initWithVideoURLBm:14] ? 1 : 0;
ret += [RTImagePickerPhoto setVideoURLBm:60] ? 1 : 0;
ret += [RTImagePickerPhoto getVideoURLBm:88] ? 1 : 0;
ret += [RTImagePickerPhoto underlyingImageBm:82] ? 1 : 0;
ret += [RTImagePickerPhoto loadUnderlyingImageAndNotifyBm:89] ? 1 : 0;
ret += [RTImagePickerPhoto performLoadUnderlyingImageAndNotifyBm:81] ? 1 : 0;
ret += [RTImagePickerPhoto _performLoadUnderlyingImageAndNotifyWithWebURLBm:50] ? 1 : 0;
ret += [RTImagePickerPhoto _performLoadUnderlyingImageAndNotifyWithLocalFileURLBm:81] ? 1 : 0;
ret += [RTImagePickerPhoto _performLoadUnderlyingImageAndNotifyWithAssetsLibraryURLBm:87] ? 1 : 0;
ret += [RTImagePickerPhoto _performLoadUnderlyingImageAndNotifyWithAssetTargetsizeBm:94] ? 1 : 0;
ret += [RTImagePickerPhoto unloadUnderlyingImageBm:31] ? 1 : 0;
ret += [RTImagePickerPhoto imageLoadingCompleteBm:91] ? 1 : 0;
ret += [RTImagePickerPhoto postCompleteNotificationBm:9] ? 1 : 0;
ret += [RTImagePickerPhoto cancelAnyLoadingBm:19] ? 1 : 0;
ret += [RTImagePickerPhotoBrowser initBm:16] ? 1 : 0;
ret += [RTImagePickerPhotoBrowser initWithDelegateBm:78] ? 1 : 0;
ret += [RTImagePickerPhotoBrowser initWithPhotosBm:98] ? 1 : 0;
ret += [RTImagePickerPhotoBrowser initWithCoderBm:55] ? 1 : 0;
ret += [RTImagePickerPhotoBrowser _initialisationBm:65] ? 1 : 0;
ret += [RTImagePickerPhotoBrowser deallocBm:39] ? 1 : 0;
ret += [RTImagePickerPhotoBrowser releaseAllUnderlyingPhotosBm:13] ? 1 : 0;
ret += [RTImagePickerPhotoBrowser didReceiveMemoryWarningBm:95] ? 1 : 0;
ret += [RTImagePickerPhotoBrowser viewDidLoadBm:74] ? 1 : 0;
ret += [RTImagePickerPhotoBrowser performLayoutBm:85] ? 1 : 0;
ret += [RTImagePickerPhotoBrowser viewDidUnloadBm:69] ? 1 : 0;
ret += [RTImagePickerPhotoBrowser presentingViewControllerPrefersStatusBarHiddenBm:65] ? 1 : 0;
ret += [RTImagePickerPhotoBrowser viewWillAppearBm:36] ? 1 : 0;
ret += [RTImagePickerPhotoBrowser viewDidAppearBm:23] ? 1 : 0;
ret += [RTImagePickerPhotoBrowser viewWillDisappearBm:39] ? 1 : 0;
ret += [RTImagePickerPhotoBrowser willMoveToParentViewControllerBm:76] ? 1 : 0;
ret += [RTImagePickerPhotoBrowser didMoveToParentViewControllerBm:38] ? 1 : 0;
ret += [RTImagePickerPhotoBrowser setNavBarAppearanceBm:84] ? 1 : 0;
ret += [RTImagePickerPhotoBrowser storePreviousNavBarAppearanceBm:19] ? 1 : 0;
ret += [RTImagePickerPhotoBrowser restorePreviousNavBarAppearanceBm:73] ? 1 : 0;
ret += [RTImagePickerPhotoBrowser viewWillLayoutSubviewsBm:24] ? 1 : 0;
ret += [RTImagePickerPhotoBrowser layoutVisiblePagesBm:66] ? 1 : 0;
ret += [RTImagePickerPhotoBrowser shouldAutorotateToInterfaceOrientationBm:10] ? 1 : 0;
ret += [RTImagePickerPhotoBrowser supportedInterfaceOrientationsBm:50] ? 1 : 0;
ret += [RTImagePickerPhotoBrowser willRotateToInterfaceOrientationDurationBm:72] ? 1 : 0;
ret += [RTImagePickerPhotoBrowser willAnimateRotationToInterfaceOrientationDurationBm:6] ? 1 : 0;
ret += [RTImagePickerPhotoBrowser didRotateFromInterfaceOrientationBm:44] ? 1 : 0;
ret += [RTImagePickerPhotoBrowser currentIndexBm:63] ? 1 : 0;
ret += [RTImagePickerPhotoBrowser reloadDataBm:48] ? 1 : 0;
ret += [RTImagePickerPhotoBrowser numberOfPhotosBm:89] ? 1 : 0;
ret += [RTImagePickerPhotoBrowser photoAtIndexBm:16] ? 1 : 0;
ret += [RTImagePickerPhotoBrowser thumbPhotoAtIndexBm:22] ? 1 : 0;
ret += [RTImagePickerPhotoBrowser photoIsSelectedAtIndexBm:63] ? 1 : 0;
ret += [RTImagePickerPhotoBrowser setPhotoSelectedAtindexBm:39] ? 1 : 0;
ret += [RTImagePickerPhotoBrowser imageForPhotoBm:58] ? 1 : 0;
ret += [RTImagePickerPhotoBrowser loadAdjacentPhotosIfNecessaryBm:37] ? 1 : 0;
ret += [RTImagePickerPhotoBrowser handleMWPhotoLoadingDidEndNotificationBm:19] ? 1 : 0;
ret += [RTImagePickerPhotoBrowser tilePagesBm:31] ? 1 : 0;
ret += [RTImagePickerPhotoBrowser updateVisiblePageStatesBm:3] ? 1 : 0;
ret += [RTImagePickerPhotoBrowser isDisplayingPageForIndexBm:65] ? 1 : 0;
ret += [RTImagePickerPhotoBrowser pageDisplayedAtIndexBm:60] ? 1 : 0;
ret += [RTImagePickerPhotoBrowser pageDisplayingPhotoBm:49] ? 1 : 0;
ret += [RTImagePickerPhotoBrowser configurePageForindexBm:25] ? 1 : 0;
ret += [RTImagePickerPhotoBrowser dequeueRecycledPageBm:98] ? 1 : 0;
ret += [RTImagePickerPhotoBrowser didStartViewingPageAtIndexBm:35] ? 1 : 0;
ret += [RTImagePickerPhotoBrowser frameForPagingScrollViewBm:77] ? 1 : 0;
ret += [RTImagePickerPhotoBrowser frameForPageAtIndexBm:45] ? 1 : 0;
ret += [RTImagePickerPhotoBrowser contentSizeForPagingScrollViewBm:45] ? 1 : 0;
ret += [RTImagePickerPhotoBrowser contentOffsetForPageAtIndexBm:57] ? 1 : 0;
ret += [RTImagePickerPhotoBrowser frameForToolbarAtOrientationBm:9] ? 1 : 0;
ret += [RTImagePickerPhotoBrowser frameForSelectedButtonAtindexBm:65] ? 1 : 0;
ret += [RTImagePickerPhotoBrowser frameForPlayButtonAtindexBm:98] ? 1 : 0;
ret += [RTImagePickerPhotoBrowser scrollViewDidScrollBm:32] ? 1 : 0;
ret += [RTImagePickerPhotoBrowser scrollViewWillBeginDraggingBm:27] ? 1 : 0;
ret += [RTImagePickerPhotoBrowser scrollViewDidEndDeceleratingBm:79] ? 1 : 0;
ret += [RTImagePickerPhotoBrowser updateNavigationBm:96] ? 1 : 0;
ret += [RTImagePickerPhotoBrowser jumpToPageAtIndexAnimatedBm:20] ? 1 : 0;
ret += [RTImagePickerPhotoBrowser gotoPreviousPageBm:39] ? 1 : 0;
ret += [RTImagePickerPhotoBrowser gotoNextPageBm:83] ? 1 : 0;
ret += [RTImagePickerPhotoBrowser showPreviousPhotoAnimatedBm:67] ? 1 : 0;
ret += [RTImagePickerPhotoBrowser showNextPhotoAnimatedBm:68] ? 1 : 0;
ret += [RTImagePickerPhotoBrowser selectedButtonTappedBm:53] ? 1 : 0;
ret += [RTImagePickerPhotoBrowser playButtonTappedBm:92] ? 1 : 0;
ret += [RTImagePickerPhotoBrowser playVideoAtIndexBm:31] ? 1 : 0;
ret += [RTImagePickerPhotoBrowser _playVideoAtphotoindexBm:37] ? 1 : 0;
ret += [RTImagePickerPhotoBrowser videoFinishedCallbackBm:15] ? 1 : 0;
ret += [RTImagePickerPhotoBrowser clearCurrentVideoBm:36] ? 1 : 0;
ret += [RTImagePickerPhotoBrowser setVideoLoadingIndicatorVisibleAtpageindexBm:26] ? 1 : 0;
ret += [RTImagePickerPhotoBrowser positionVideoLoadingIndicatorBm:75] ? 1 : 0;
ret += [RTImagePickerPhotoBrowser setControlsHiddenAnimatedPermanentBm:20] ? 1 : 0;
ret += [RTImagePickerPhotoBrowser prefersStatusBarHiddenBm:74] ? 1 : 0;
ret += [RTImagePickerPhotoBrowser preferredStatusBarStyleBm:16] ? 1 : 0;
ret += [RTImagePickerPhotoBrowser preferredStatusBarUpdateAnimationBm:41] ? 1 : 0;
ret += [RTImagePickerPhotoBrowser cancelControlHidingBm:46] ? 1 : 0;
ret += [RTImagePickerPhotoBrowser hideControlsAfterDelayBm:64] ? 1 : 0;
ret += [RTImagePickerPhotoBrowser areControlsHiddenBm:66] ? 1 : 0;
ret += [RTImagePickerPhotoBrowser hideControlsBm:83] ? 1 : 0;
ret += [RTImagePickerPhotoBrowser showControlsBm:89] ? 1 : 0;
ret += [RTImagePickerPhotoBrowser toggleControlsBm:2] ? 1 : 0;
ret += [RTImagePickerPhotoBrowser setCurrentPhotoIndexBm:59] ? 1 : 0;
ret += [RTImagePickerTapDetectingImageView initWithFrameBm:21] ? 1 : 0;
ret += [RTImagePickerTapDetectingImageView initWithImageBm:39] ? 1 : 0;
ret += [RTImagePickerTapDetectingImageView initWithImageHighlightedimageBm:24] ? 1 : 0;
ret += [RTImagePickerTapDetectingImageView touchesEndedWitheventBm:78] ? 1 : 0;
ret += [RTImagePickerTapDetectingImageView handleSingleTapBm:70] ? 1 : 0;
ret += [RTImagePickerTapDetectingImageView handleDoubleTapBm:7] ? 1 : 0;
ret += [RTImagePickerTapDetectingImageView handleTripleTapBm:55] ? 1 : 0;
ret += [UIImage imageForResourcePathOftypeInbundleBm:12] ? 1 : 0;
ret += [UIImage clearImageWithSizeBm:32] ? 1 : 0;
ret += [RTImagePickerTapDetectingView initBm:46] ? 1 : 0;
ret += [RTImagePickerTapDetectingView initWithFrameBm:1] ? 1 : 0;
ret += [RTImagePickerTapDetectingView touchesEndedWitheventBm:34] ? 1 : 0;
ret += [RTImagePickerTapDetectingView handleSingleTapBm:86] ? 1 : 0;
ret += [RTImagePickerTapDetectingView handleDoubleTapBm:34] ? 1 : 0;
ret += [RTImagePickerTapDetectingView handleTripleTapBm:91] ? 1 : 0;
ret += [RTImagePickerZoomingScrollView initWithPhotoBrowserBm:97] ? 1 : 0;
ret += [RTImagePickerZoomingScrollView deallocBm:21] ? 1 : 0;
ret += [RTImagePickerZoomingScrollView prepareForReuseBm:55] ? 1 : 0;
ret += [RTImagePickerZoomingScrollView displayingVideoBm:4] ? 1 : 0;
ret += [RTImagePickerZoomingScrollView setImageHiddenBm:68] ? 1 : 0;
ret += [RTImagePickerZoomingScrollView setPhotoBm:10] ? 1 : 0;
ret += [RTImagePickerZoomingScrollView displayImageBm:37] ? 1 : 0;
ret += [RTImagePickerZoomingScrollView displayImageFailureBm:28] ? 1 : 0;
ret += [RTImagePickerZoomingScrollView hideImageFailureBm:52] ? 1 : 0;
ret += [RTImagePickerZoomingScrollView setProgressFromNotificationBm:91] ? 1 : 0;
ret += [RTImagePickerZoomingScrollView showLoadingIndicatorBm:14] ? 1 : 0;
ret += [RTImagePickerZoomingScrollView initialZoomScaleWithMinScaleBm:58] ? 1 : 0;
ret += [RTImagePickerZoomingScrollView setMaxMinZoomScalesForCurrentBoundsBm:76] ? 1 : 0;
ret += [RTImagePickerZoomingScrollView layoutSubviewsBm:78] ? 1 : 0;
ret += [RTImagePickerZoomingScrollView viewForZoomingInScrollViewBm:9] ? 1 : 0;
ret += [RTImagePickerZoomingScrollView scrollViewWillBeginDraggingBm:12] ? 1 : 0;
ret += [RTImagePickerZoomingScrollView scrollViewWillBeginZoomingWithviewBm:57] ? 1 : 0;
ret += [RTImagePickerZoomingScrollView scrollViewDidEndDraggingWilldecelerateBm:78] ? 1 : 0;
ret += [RTImagePickerZoomingScrollView scrollViewDidZoomBm:48] ? 1 : 0;
ret += [RTImagePickerZoomingScrollView handleSingleTapBm:80] ? 1 : 0;
ret += [RTImagePickerZoomingScrollView handleDoubleTapBm:24] ? 1 : 0;
ret += [RTImagePickerZoomingScrollView imageViewSingletapdetectedBm:59] ? 1 : 0;
ret += [RTImagePickerZoomingScrollView imageViewDoubletapdetectedBm:0] ? 1 : 0;
ret += [RTImagePickerZoomingScrollView viewSingletapdetectedBm:68] ? 1 : 0;
ret += [RTImagePickerZoomingScrollView viewDoubletapdetectedBm:90] ? 1 : 0;
ret += [LLSimpleCamera initBm:24] ? 1 : 0;
ret += [LLSimpleCamera initWithVideoEnabledBm:88] ? 1 : 0;
ret += [LLSimpleCamera initWithQualityPositionVideoenabledBm:2] ? 1 : 0;
ret += [LLSimpleCamera initWithCoderBm:66] ? 1 : 0;
ret += [LLSimpleCamera setupWithQualityPositionVideoenabledBm:48] ? 1 : 0;
ret += [LLSimpleCamera viewDidLoadBm:80] ? 1 : 0;
ret += [LLSimpleCamera gestureRecognizerShouldBeginBm:60] ? 1 : 0;
ret += [LLSimpleCamera handlePinchGestureBm:80] ? 1 : 0;
ret += [LLSimpleCamera attachToViewControllerWithframeBm:28] ? 1 : 0;
ret += [LLSimpleCamera startBm:11] ? 1 : 0;
ret += [LLSimpleCamera initializeBm:57] ? 1 : 0;
ret += [LLSimpleCamera stopBm:63] ? 1 : 0;
ret += [LLSimpleCamera captureExactseenimageBm:15] ? 1 : 0;
ret += [LLSimpleCamera captureBm:24] ? 1 : 0;
ret += [LLSimpleCamera startRecordingWithOutputUrlBm:27] ? 1 : 0;
ret += [LLSimpleCamera stopRecordingBm:64] ? 1 : 0;
ret += [LLSimpleCamera captureOutputDidstartrecordingtooutputfileaturlFromconnectionsBm:61] ? 1 : 0;
ret += [LLSimpleCamera captureOutputDidfinishrecordingtooutputfileaturlFromconnectionsErrorBm:92] ? 1 : 0;
ret += [LLSimpleCamera enableTorchBm:82] ? 1 : 0;
ret += [LLSimpleCamera cropImageUsingPreviewBoundsBm:40] ? 1 : 0;
ret += [LLSimpleCamera captureConnectionBm:87] ? 1 : 0;
ret += [LLSimpleCamera setVideoCaptureDeviceBm:7] ? 1 : 0;
ret += [LLSimpleCamera isFlashAvailableBm:81] ? 1 : 0;
ret += [LLSimpleCamera isTorchAvailableBm:31] ? 1 : 0;
ret += [LLSimpleCamera updateFlashModeBm:64] ? 1 : 0;
ret += [LLSimpleCamera setWhiteBalanceModeBm:5] ? 1 : 0;
ret += [LLSimpleCamera setMirrorBm:66] ? 1 : 0;
ret += [LLSimpleCamera togglePositionBm:75] ? 1 : 0;
ret += [LLSimpleCamera setCameraPositionBm:69] ? 1 : 0;
ret += [LLSimpleCamera cameraWithPositionBm:36] ? 1 : 0;
ret += [LLSimpleCamera previewTappedBm:85] ? 1 : 0;
ret += [LLSimpleCamera addDefaultFocusBoxBm:40] ? 1 : 0;
ret += [LLSimpleCamera alterFocusBoxAnimationBm:76] ? 1 : 0;
ret += [LLSimpleCamera focusAtPointBm:13] ? 1 : 0;
ret += [LLSimpleCamera showFocusBoxBm:0] ? 1 : 0;
ret += [LLSimpleCamera convertToPointOfInterestFromViewCoordinatesBm:25] ? 1 : 0;
ret += [LLSimpleCamera viewWillAppearBm:99] ? 1 : 0;
ret += [LLSimpleCamera viewWillDisappearBm:60] ? 1 : 0;
ret += [LLSimpleCamera viewWillLayoutSubviewsBm:55] ? 1 : 0;
ret += [LLSimpleCamera orientationForConnectionBm:44] ? 1 : 0;
ret += [LLSimpleCamera willRotateToInterfaceOrientationDurationBm:15] ? 1 : 0;
ret += [LLSimpleCamera didReceiveMemoryWarningBm:66] ? 1 : 0;
ret += [LLSimpleCamera deallocBm:81] ? 1 : 0;
ret += [LLSimpleCamera requestCameraPermissionBm:50] ? 1 : 0;
ret += [LLSimpleCamera requestMicrophonePermissionBm:59] ? 1 : 0;
ret += [LLSimpleCamera isFrontCameraAvailableBm:70] ? 1 : 0;
ret += [LLSimpleCamera isRearCameraAvailableBm:15] ? 1 : 0;
ret += [UIImage fixOrientationBm:34] ? 1 : 0;
ret += [RTImagePickerUtils computeDifferenceBetweenRectAndrectAddedhandlerRemovedhandlerBm:55] ? 1 : 0;
ret += [RTImagePickerUtils placeholderImageWithSizeBm:43] ? 1 : 0;
ret += [NSIndexSet rt_indexPathsFromIndexesWithSectionBm:32] ? 1 : 0;
ret += [UICollectionView rt_indexPathsForElementsInRectBm:32] ? 1 : 0;
ret += [RTCameraPreviewViewController initWithImageBm:94] ? 1 : 0;
ret += [RTCameraPreviewViewController viewWillAppearBm:14] ? 1 : 0;
ret += [RTCameraPreviewViewController viewDidLoadBm:72] ? 1 : 0;
ret += [RTCameraPreviewViewController didReceiveMemoryWarningBm:33] ? 1 : 0;
ret += [RTCameraPreviewViewController viewForZoomingInScrollViewBm:9] ? 1 : 0;
ret += [RTCameraViewController prefersStatusBarHiddenBm:99] ? 1 : 0;
ret += [RTCameraViewController preferredInterfaceOrientationForPresentationBm:57] ? 1 : 0;
ret += [RTCameraViewController viewDidLoadBm:38] ? 1 : 0;
ret += [RTCameraViewController viewWillAppearBm:1] ? 1 : 0;
ret += [RTCameraViewController viewWillDisappearBm:70] ? 1 : 0;
ret += [RTCameraViewController didReceiveMemoryWarningBm:25] ? 1 : 0;
ret += [RTCameraViewController switchButtonPressedBm:63] ? 1 : 0;
ret += [RTCameraViewController flashButtonPressedBm:20] ? 1 : 0;
ret += [RTCameraViewController snapButtonPressedBm:47] ? 1 : 0;
ret += [RTCameraViewController UnAuthorizedViewHiddenBm:80] ? 1 : 0;
ret += [RTAssetCollectionViewController viewDidLoadBm:3] ? 1 : 0;
ret += [RTAssetCollectionViewController viewWillAppearBm:21] ? 1 : 0;
ret += [RTAssetCollectionViewController scrollToBottomAnimatedBm:38] ? 1 : 0;
ret += [RTAssetCollectionViewController viewWillDisappearBm:51] ? 1 : 0;
ret += [RTAssetCollectionViewController viewDidAppearBm:34] ? 1 : 0;
ret += [RTAssetCollectionViewController viewWillTransitionToSizeWithtransitioncoordinatorBm:96] ? 1 : 0;
ret += [RTAssetCollectionViewController deallocBm:31] ? 1 : 0;
ret += [RTAssetCollectionViewController setAssetCollectionBm:92] ? 1 : 0;
ret += [RTAssetCollectionViewController imageManagerBm:12] ? 1 : 0;
ret += [RTAssetCollectionViewController isAutoDeselectEnabledBm:85] ? 1 : 0;
ret += [RTAssetCollectionViewController setupToolBarViewBm:52] ? 1 : 0;
ret += [RTAssetCollectionViewController updateFetchRequestBm:18] ? 1 : 0;
ret += [RTAssetCollectionViewController isMinimumSelectionLimitFulfilledBm:70] ? 1 : 0;
ret += [RTAssetCollectionViewController isMaximumSelectionLimitReachedBm:1] ? 1 : 0;
ret += [RTAssetCollectionViewController resetCachedAssetsBm:32] ? 1 : 0;
ret += [RTAssetCollectionViewController updateCachedAssetsBm:62] ? 1 : 0;
ret += [RTAssetCollectionViewController assetsAtIndexPathsBm:97] ? 1 : 0;
ret += [RTAssetCollectionViewController photoLibraryDidChangeBm:35] ? 1 : 0;
ret += [RTAssetCollectionViewController scrollViewDidScrollBm:59] ? 1 : 0;
ret += [RTAssetCollectionViewController numberOfSectionsInCollectionViewBm:32] ? 1 : 0;
ret += [RTAssetCollectionViewController collectionViewNumberofitemsinsectionBm:13] ? 1 : 0;
ret += [RTAssetCollectionViewController collectionViewCellforitematindexpathBm:17] ? 1 : 0;
ret += [RTAssetCollectionViewController collectionViewShouldselectitematindexpathBm:37] ? 1 : 0;
ret += [RTAssetCollectionViewController collectionViewDidselectitematindexpathBm:4] ? 1 : 0;
ret += [RTAssetCollectionViewController collectionViewDiddeselectitematindexpathBm:47] ? 1 : 0;
ret += [RTAssetCollectionViewController collectionViewViewforsupplementaryelementofkindAtindexpathBm:69] ? 1 : 0;
ret += [RTAssetCollectionViewController collectionViewLayoutSizeforitematindexpathBm:26] ? 1 : 0;
ret += [RTAssetCollectionViewController updateAssetCollectionsBm:47] ? 1 : 0;
ret += [RTAssetCollectionViewController titleButtonPressedBm:41] ? 1 : 0;
ret += [RTAssetCollectionViewController numberOfSectionsInTableViewBm:81] ? 1 : 0;
ret += [RTAssetCollectionViewController tableViewNumberofrowsinsectionBm:81] ? 1 : 0;
ret += [RTAssetCollectionViewController tableViewHeightforrowatindexpathBm:63] ? 1 : 0;
ret += [RTAssetCollectionViewController tableViewDidselectrowatindexpathBm:1] ? 1 : 0;
ret += [RTAssetCollectionViewController tableViewCellforrowatindexpathBm:96] ? 1 : 0;
ret += [RTAssetCollectionViewController UnAuthorizedViewHiddenBm:60] ? 1 : 0;
ret += [RTImagePickerViewController initBm:10] ? 1 : 0;
ret += [RTImagePickerViewController prefersStatusBarHiddenBm:90] ? 1 : 0;
ret += [RTImagePickerViewController preferredStatusBarUpdateAnimationBm:80] ? 1 : 0;
ret += [RTImagePickerViewController setUpAlbumsViewControllerBm:8] ? 1 : 0;
ret += [RTImagePickerViewController viewWillDisappearBm:42] ? 1 : 0;
ret += [RTShortVideoViewController prefersStatusBarHiddenBm:81] ? 1 : 0;
ret += [RTShortVideoViewController preferredInterfaceOrientationForPresentationBm:60] ? 1 : 0;
ret += [RTShortVideoViewController viewWillAppearBm:26] ? 1 : 0;
ret += [RTShortVideoViewController viewWillDisappearBm:89] ? 1 : 0;
ret += [RTShortVideoViewController applicationWillResignActiveBm:31] ? 1 : 0;
ret += [RTShortVideoViewController applicationDidBecomeActiveBm:79] ? 1 : 0;
ret += [RTShortVideoViewController viewDidLoadBm:41] ? 1 : 0;
ret += [RTShortVideoViewController initSubViewsBm:17] ? 1 : 0;
ret += [RTShortVideoViewController sendButtonPressedBm:67] ? 1 : 0;
ret += [RTShortVideoViewController cancelButtonPressedBm:47] ? 1 : 0;
ret += [RTShortVideoViewController snapButtonPressedBm:26] ? 1 : 0;
ret += [RTShortVideoViewController timerRefreshBm:60] ? 1 : 0;
ret += [RTShortVideoViewController triggerBeginRecordBm:28] ? 1 : 0;
ret += [RTShortVideoViewController triggerEndRecordBm:29] ? 1 : 0;
ret += [RTShortVideoViewController applicationDocumentsDirectoryBm:33] ? 1 : 0;
ret += [RTShortVideoViewController didReceiveMemoryWarningBm:66] ? 1 : 0;
ret += [RTShortVideoViewController UnAuthorizedViewHiddenBm:23] ? 1 : 0;
ret += [RTShortVideoViewController videoPlayerViewDidReachEndBm:91] ? 1 : 0;
ret += [RTShortVideoViewController setAlertTitleBm:11] ? 1 : 0;
ret += [RTShortVideoViewController thumbnailImageForVideoBm:3] ? 1 : 0;
ret += [RTImagePickerNavigationController viewDidLoadBm:22] ? 1 : 0;
ret += [RTImagePickerNavigationController didReceiveMemoryWarningBm:26] ? 1 : 0;
ret += [RTImagePickerNavigationController setupToolBarViewBm:50] ? 1 : 0;
ret += [RTVideoIndicatorView awakeFromNibBm:28] ? 1 : 0;
ret += [RTImagePickerToolbarView initWithFrameBm:11] ? 1 : 0;
ret += [RTImagePickerToolbarView initSubviewsBm:66] ? 1 : 0;
ret += [RTImagePickerToolbarView cameraCancelButtonPressedBm:45] ? 1 : 0;
ret += [RTImagePickerToolbarView cancelButtonPressedBm:14] ? 1 : 0;
ret += [RTImagePickerToolbarView dvButtonPressedBm:81] ? 1 : 0;
ret += [RTImagePickerToolbarView cameraButtonPressedBm:17] ? 1 : 0;
ret += [RTImagePickerToolbarView sendButtonPressedBm:94] ? 1 : 0;
ret += [RTImagePickerToolbarView deleteButtonPressedBm:15] ? 1 : 0;
ret += [RTImagePickerToolbarView addAssetBm:44] ? 1 : 0;
ret += [RTImagePickerToolbarView deleteAssetBm:44] ? 1 : 0;
ret += [RTImagePickerToolbarView deleteAssetAtIndexBm:6] ? 1 : 0;
ret += [RTImagePickerToolbarView SwitchToModeBm:53] ? 1 : 0;
ret += [RTImagePickerToolbarView updateLayoutWhenUpdatingAssetBm:85] ? 1 : 0;
ret += [RTImagePickerToolbarView pointInsideWitheventBm:56] ? 1 : 0;
ret += [RTImagePickerToolbarView imageTapBm:55] ? 1 : 0;
ret += [RTImagePickerToolbarView imagePanBm:84] ? 1 : 0;
ret += [RTImagePickerToolbarView animationForImageViewToScaleToThumbBm:58] ? 1 : 0;
ret += [RTImagePickerToolbarView animationForImageViewToSelectedBm:63] ? 1 : 0;
ret += [RTImagePickerToolbarView rearrangePreviewImageViewBm:11] ? 1 : 0;
ret += [RTImagePickerToolbarView numberOfPhotosInPhotoBrowserBm:7] ? 1 : 0;
ret += [RTImagePickerToolbarView photoBrowserPhotoatindexBm:15] ? 1 : 0;
ret += [RTImagePickerToolbarView photoBrowserThumbphotoatindexBm:35] ? 1 : 0;
ret += [RTImagePickerToolbarView photoBrowserDiddisplayphotoatindexBm:41] ? 1 : 0;
ret += [RTImagePickerToolbarView photoBrowserDidChangeHiddenStateBm:93] ? 1 : 0;
ret += [RTImagePickerToolbarView setFlashEnabledBm:69] ? 1 : 0;
ret += [RTImagePickerToolbarView setFlashStateBm:12] ? 1 : 0;
ret += [RTImagePickerToolbarView shakePreviewScrollViewBm:12] ? 1 : 0;
ret += [RTImagePickerToolbarView didSelectVideoWithFileNameCaptureimageBm:71] ? 1 : 0;
ret += [RTCheckMarkView awakeFromNibBm:82] ? 1 : 0;
ret += [RTCheckMarkView drawRectBm:39] ? 1 : 0;
ret += [RTAssetCollectionViewCell setSelectedBm:54] ? 1 : 0;
ret += [RTImagePickerTitleButton initWithFrameBm:88] ? 1 : 0;
ret += [RTImagePickerTitleButton rt_setTitleArrowappearanceBm:11] ? 1 : 0;
ret += [RTAlbumTableViewCell initWithStyleReuseidentifierBm:11] ? 1 : 0;
ret += [RTAlbumTableViewCell initSubViewsBm:17] ? 1 : 0;
ret += [RTAlbumTableViewCell layoutSubviewsBm:62] ? 1 : 0;
ret += [RTAlbumTableViewCell setSelectedAnimatedBm:33] ? 1 : 0;
ret += [RTAlbumTableViewCell shadowPathWithRectBm:56] ? 1 : 0;
ret += [RTAlbumTableViewCell shadowViewBm:56] ? 1 : 0;
ret += [RTVideoIconView awakeFromNibBm:24] ? 1 : 0;
ret += [RTVideoIconView drawRectBm:80] ? 1 : 0;
ret += [RTImagePickerUnauthorizedView initWithFrameBm:35] ? 1 : 0;
ret += [RTImagePickerUnauthorizedView permissionButtonPressedBm:83] ? 1 : 0;
ret += [CGAffineTransformFun radianWithCGAffineTransformBm:9] ? 1 : 0;
ret += [CGAffineTransformFun scaleXWithCGAffineTransformBm:74] ? 1 : 0;
ret += [CGAffineTransformFun scaleYWithCGAffineTransformBm:60] ? 1 : 0;
ret += [CGAffineTransformFun translateWithCGAffineTranformTxTyBm:73] ? 1 : 0;
ret += [CGAffineTransformFun CGRectForCenterWithAffineTransformCgrectBm:94] ? 1 : 0;
ret += [QMDBManager shareManagerBm:51] ? 1 : 0;
ret += [QMBaseNavigationController viewDidLoadBm:32] ? 1 : 0;
ret += [QMBaseNavigationController prefersStatusBarHiddenBm:92] ? 1 : 0;
ret += [QMBaseImageView initWithFrameBm:9] ? 1 : 0;
ret += [QMBaseImageView setImageBm:93] ? 1 : 0;
ret += [UIImage clipImageCgblendmodeBm:1] ? 1 : 0;
ret += [UIImage clipImageWithrectBm:54] ? 1 : 0;
ret += [UIImage clipImageWithratioBm:93] ? 1 : 0;
ret += [UIImage getImageMaskBm:12] ? 1 : 0;
ret += [UIImage getImageWithViewRectScaleBm:71] ? 1 : 0;
ret += [UIImage getCircleImageWithparamBm:88] ? 1 : 0;
ret += [UIImage cropImageFrameAngleCircularclipBm:15] ? 1 : 0;
ret += [UIImage imageWithColorBm:14] ? 1 : 0;
ret += [UIImage colorAtPixelBm:8] ? 1 : 0;
ret += [UIImage convertToGrayImageBm:54] ? 1 : 0;
ret += [UIImage coverLightEffectBm:1] ? 1 : 0;
ret += [UIImage coverLightEffect2Bm:99] ? 1 : 0;
ret += [UIImage applyLightEffectBm:26] ? 1 : 0;
ret += [UIImage applyExtraLightEffect2Bm:88] ? 1 : 0;
ret += [UIImage applyExtraLightEffectBm:96] ? 1 : 0;
ret += [UIImage applyDarkEffectBm:90] ? 1 : 0;
ret += [UIImage applyTintEffectWithColorBm:30] ? 1 : 0;
ret += [UIImage applyBlurWithRadiusTintcolorSaturationdeltafactorMaskimageBm:76] ? 1 : 0;
ret += [UIImage applyBlurWithRadiusTintcolorSaturationdeltafactorMaskimageScaleBm:95] ? 1 : 0;
ret += [UIImage fixOrientationBm:29] ? 1 : 0;
ret += [UIImage rotateBm:69] ? 1 : 0;
ret += [UIImage flipVerticalBm:1] ? 1 : 0;
ret += [UIImage flipHorizontalBm:0] ? 1 : 0;
ret += [UIImage imageRotatedByRadiansBm:96] ? 1 : 0;
ret += [UIImage imageRotatedByDegreesBm:35] ? 1 : 0;
ret += [UIImage mosaicImage_all_WithLevelBm:46] ? 1 : 0;
ret += [UIImage mosaicImage_ios_6_0_WithLevelBm:46] ? 1 : 0;
ret += [UIImage mosaicImageWithLevelBm:30] ? 1 : 0;
ret += [UIImage mosaicDefaultImageBm:98] ? 1 : 0;
ret += [UIImage defaultMosaic_ios_6_0Bm:20] ? 1 : 0;
ret += [UIImage imageWithSubImageFrameBm:12] ? 1 : 0;
ret += [UIImage imageMosaicWithSubImageFrameBm:44] ? 1 : 0;
ret += [UIImage imageWithTransformDrawmodeBm:64] ? 1 : 0;
ret += [UIImage roundedCornerImageBordersizeBm:95] ? 1 : 0;
ret += [UIImage addRoundedRectToPathContextOvalwidthOvalheightBm:37] ? 1 : 0;
ret += [UIImage setImageScaleBm:89] ? 1 : 0;
ret += [UIImage resizedCameraIconImageInterpolationqualityBm:8] ? 1 : 0;
ret += [UIImage resizedAndClipImageInterpolationqualityBm:93] ? 1 : 0;
ret += [UIImage croppedImageBm:25] ? 1 : 0;
ret += [UIImage thumbnailImageTransparentborderCornerradiusInterpolationqualityBm:59] ? 1 : 0;
ret += [UIImage resizedImageInterpolationqualityBm:5] ? 1 : 0;
ret += [UIImage resizedImageWithContentModeBoundsInterpolationqualityBm:62] ? 1 : 0;
ret += [UIImage resizedImageTransformDrawtransposedInterpolationqualityBm:17] ? 1 : 0;
ret += [UIImage transformForOrientationBm:35] ? 1 : 0;
ret += [UIImage cropToSizeUsingmodeBm:33] ? 1 : 0;
ret += [UIImage getSizeWithRateLimitsizeBm:78] ? 1 : 0;
ret += [UIImage getSizeWithRateLimitlargesizeBm:2] ? 1 : 0;
ret += [UIImage animatedImageWithAnimatedGIFDataBm:73] ? 1 : 0;
ret += [UIImage animatedImageWithAnimatedGIFURLBm:44] ? 1 : 0;
ret += [UIImage ARGBDataBm:69] ? 1 : 0;
ret += [UIImage isPointTransparentBm:56] ? 1 : 0;
ret += [UIImage hasAlphaBm:88] ? 1 : 0;
ret += [UIImage imageWithAlphaBm:32] ? 1 : 0;
ret += [UIImage transparentBorderImageBm:17] ? 1 : 0;
ret += [UIImage newBorderMaskSizeBm:19] ? 1 : 0;
ret += [UIImage subImageWithRectBm:22] ? 1 : 0;
ret += [UIImage rescaleImageToSizeBm:70] ? 1 : 0;
ret += [UIImage rescaleImageToPXBm:53] ? 1 : 0;
ret += [UIImage getTiledImageWithSizeBm:28] ? 1 : 0;
ret += [UIImage imageFromViewBm:38] ? 1 : 0;
ret += [UIImage mergeImageWithimageBm:32] ? 1 : 0;
ret += [UIImage maskWithImageBm:88] ? 1 : 0;
ret += [UIImage fillSizeViewsizeBm:79] ? 1 : 0;
ret += [UIImage getBackgroundImageWithalphaWidthBm:69] ? 1 : 0;
ret += [UIImage getBackgroundImageWithalphaBm:64] ? 1 : 0;
ret += [UIImage getBackgroundImageBm:65] ? 1 : 0;
ret += [UIImage backgroundImageAlphaWidthBm:2] ? 1 : 0;
ret += [UIImage getEffectBgImageWithmaskcolorBm:1] ? 1 : 0;
ret += [UIImage imageWithTintColorBm:33] ? 1 : 0;
ret += [UIImage imageWithGradientTintColorBm:0] ? 1 : 0;
ret += [UIImage imageWithTintColorBlendmodeBm:43] ? 1 : 0;
ret += [UIImage getSizeWithRateLimitsizeBm:37] ? 1 : 0;
ret += [UIImage drawTextInimageAtpointBm:89] ? 1 : 0;
ret += [UIImage drawDateInimageFontPointBm:38] ? 1 : 0;
ret += [UIImage getNameCharNumBm:35] ? 1 : 0;
ret += [UIImage blurryImageWithblurlevelBm:48] ? 1 : 0;
ret += [UIImage drn_boxblurImageWithBlurBm:6] ? 1 : 0;
ret += [UIImage blurryImageWithLevelBm:38] ? 1 : 0;
ret += [UIImage scaleToSizeSizeBm:20] ? 1 : 0;
ret += [UIImage watermarkImageWithShowImageViewFrameSourceimageWatermarkimageTimeBm:23] ? 1 : 0;
ret += [UIImage imageWithImageWithcolormatrixBm:47] ? 1 : 0;
ret += [UIImage imageChangeBlackToTransparentBm:85] ? 1 : 0;
ret += [UIImage imageWithMaskImageBm:21] ? 1 : 0;
ret += [UIImage imageWithMaskImageMaskcolorBm:47] ? 1 : 0;
ret += [UIImage imageWithLayerMaskImageMaskcolorBm:53] ? 1 : 0;
ret += [UIImage imageWithColorBm:38] ? 1 : 0;
ret += [UIImage imageWithConrnerWithRadiusSizetofitBm:68] ? 1 : 0;
ret += [PHAsset latestAssetBm:47] ? 1 : 0;
ret += [PHAsset latestOriginImageBm:97] ? 1 : 0;
ret += [PHAsset latestImageWithSizeCompleteblockBm:87] ? 1 : 0;
ret += [UIColor colorWithRGBHexBm:73] ? 1 : 0;
ret += [UIColor colorWithRGBAHexBm:40] ? 1 : 0;
ret += [UIColor colorWithRGBHexStringBm:61] ? 1 : 0;
ret += [UIColor colorWithRGBAHexStringBm:31] ? 1 : 0;
ret += [UIColor colorWithRGBDecimalStringBm:78] ? 1 : 0;
ret += [UIColor colorWithRGBDecimalStringValueBm:81] ? 1 : 0;
ret += [UIColor colorWithRed255Green255Blue255Alpha255Bm:56] ? 1 : 0;
ret += [UIColor getRGBHexBm:53] ? 1 : 0;
ret += [UIColor getRGBAHexBm:55] ? 1 : 0;
ret += [UIColor RGBHexStringBm:57] ? 1 : 0;
ret += [UIColor RGBAHexStringBm:50] ? 1 : 0;
ret += [UIColor RGBHexADecStringBm:82] ? 1 : 0;
ret += [UIColor RGBAHexStringWithAplhaOffsetBm:65] ? 1 : 0;
ret += [UIColor colorWithSaturationBm:8] ? 1 : 0;
ret += [UIColor colorWithBrightnessBm:54] ? 1 : 0;
ret += [UIColor lightenColorWithValueBm:87] ? 1 : 0;
ret += [UIColor darkenColorWithValueBm:53] ? 1 : 0;
ret += [UIColor isLightColorBm:65] ? 1 : 0;
ret += [UIColor getRedValueBm:68] ? 1 : 0;
ret += [UIColor getGreenValueBm:99] ? 1 : 0;
ret += [UIColor getBlueValueBm:23] ? 1 : 0;
ret += [UIView setXBm:10] ? 1 : 0;
ret += [UIView setYBm:71] ? 1 : 0;
ret += [UIView xBm:72] ? 1 : 0;
ret += [UIView yBm:39] ? 1 : 0;
ret += [UIView setCenterXBm:74] ? 1 : 0;
ret += [UIView centerXBm:98] ? 1 : 0;
ret += [UIView setCenterYBm:7] ? 1 : 0;
ret += [UIView centerYBm:15] ? 1 : 0;
ret += [UIView setWidthBm:39] ? 1 : 0;
ret += [UIView setHeightBm:80] ? 1 : 0;
ret += [UIView heightBm:41] ? 1 : 0;
ret += [UIView widthBm:36] ? 1 : 0;
ret += [UIView setSizeBm:61] ? 1 : 0;
ret += [UIView sizeBm:4] ? 1 : 0;
ret += [UIView setOriginBm:22] ? 1 : 0;
ret += [UIView originBm:58] ? 1 : 0;
ret += [UIView originBm:20] ? 1 : 0;
ret += [UIView setOriginBm:98] ? 1 : 0;
ret += [UIView sizeBm:98] ? 1 : 0;
ret += [UIView setSizeBm:66] ? 1 : 0;
ret += [UIView bottomRightBm:95] ? 1 : 0;
ret += [UIView bottomLeftBm:53] ? 1 : 0;
ret += [UIView topRightBm:52] ? 1 : 0;
ret += [UIView heightBm:59] ? 1 : 0;
ret += [UIView setHeightBm:71] ? 1 : 0;
ret += [UIView widthBm:3] ? 1 : 0;
ret += [UIView setWidthBm:61] ? 1 : 0;
ret += [UIView topBm:67] ? 1 : 0;
ret += [UIView setTopBm:39] ? 1 : 0;
ret += [UIView leftBm:66] ? 1 : 0;
ret += [UIView setLeftBm:46] ? 1 : 0;
ret += [UIView bottomBm:21] ? 1 : 0;
ret += [UIView setBottomBm:62] ? 1 : 0;
ret += [UIView rightBm:46] ? 1 : 0;
ret += [UIView setRightBm:37] ? 1 : 0;
ret += [UIView moveByBm:53] ? 1 : 0;
ret += [UIView scaleByBm:64] ? 1 : 0;
ret += [UIView fitInSizeBm:91] ? 1 : 0;
ret += [UIView convertViewToImageBm:69] ? 1 : 0;
ret += [UIImageView dequeueBm:1] ? 1 : 0;
ret += [UIImageView enqueueBm:98] ? 1 : 0;
ret += [UIImageView setImageWithGraudatedAnimationBm:50] ? 1 : 0;
ret += [UIImageView setImageWithGraudatedAnimationDurationBm:73] ? 1 : 0;
ret += [UIImageView setImageWithGraudatedMainAnimationGraduatedviewDurationBm:97] ? 1 : 0;
ret += [UIImageView setImageWithGraudatedMainAnimationDurationBm:67] ? 1 : 0;
ret += [UIImageView setImageWithGraudatedMainAnimationDurationCompletionBm:9] ? 1 : 0;
ret += [UIImageView setGraudatedAnimationViewTransformBm:15] ? 1 : 0;
ret += [UIImageView setGraudatedAnimationViewFrameBm:15] ? 1 : 0;
ret += [UIImageView clearCatchesBm:94] ? 1 : 0;
ret += [QMCameraSettingViewController viewDidLoadBm:60] ? 1 : 0;
ret += [QMCameraSettingViewController prefersStatusBarHiddenBm:69] ? 1 : 0;
ret += [QMCameraSettingViewController preferredStatusBarStyleBm:41] ? 1 : 0;
ret += [QMCameraSettingViewController setupUIBm:5] ? 1 : 0;
ret += [QMCameraSettingViewController setupDatasBm:17] ? 1 : 0;
ret += [QMCameraSettingViewController backBtnTappedBm:95] ? 1 : 0;
ret += [QMCameraSettingViewController numberOfSectionsInTableViewBm:12] ? 1 : 0;
ret += [QMCameraSettingViewController tableViewNumberofrowsinsectionBm:61] ? 1 : 0;
ret += [QMCameraSettingViewController tableViewCellforrowatindexpathBm:77] ? 1 : 0;
ret += [QMCameraSettingViewController tableViewHeightforheaderinsectionBm:35] ? 1 : 0;
ret += [QMCameraSettingViewController tableViewViewforheaderinsectionBm:58] ? 1 : 0;
ret += [QMCameraSettingViewController tableViewDidselectrowatindexpathBm:51] ? 1 : 0;
ret += [QMSettingModel buildSettingModelsBm:66] ? 1 : 0;
ret += [QMSettingTableViewCell awakeFromNibBm:50] ? 1 : 0;
ret += [QMSettingTableViewCell setSettingModelTypeBm:26] ? 1 : 0;
ret += [QMPhotoClipViewController viewDidLoadBm:97] ? 1 : 0;
ret += [QMPhotoClipViewController prefersStatusBarHiddenBm:37] ? 1 : 0;
ret += [QMPhotoClipViewController preferredStatusBarStyleBm:36] ? 1 : 0;
ret += [QMPhotoClipViewController setupUIBm:38] ? 1 : 0;
ret += [QMPhotoClipViewController setupGestureBm:14] ? 1 : 0;
ret += [QMPhotoClipViewController buttonTappedBm:40] ? 1 : 0;
ret += [QMPhotoClipViewController handlePanGestureBm:92] ? 1 : 0;
ret += [QMPhotoClipViewController rotateImageBm:69] ? 1 : 0;
ret += [QMPhotoClipViewController scaleImageBm:33] ? 1 : 0;
ret += [QMPhotoEffectViewController deallocBm:25] ? 1 : 0;
ret += [QMPhotoEffectViewController initWithImageBm:34] ? 1 : 0;
ret += [QMPhotoEffectViewController viewDidLoadBm:62] ? 1 : 0;
ret += [QMPhotoEffectViewController prefersStatusBarHiddenBm:2] ? 1 : 0;
ret += [QMPhotoEffectViewController setupUIBm:35] ? 1 : 0;
ret += [QMPhotoEffectViewController setupGPUPictureBm:10] ? 1 : 0;
ret += [QMPhotoEffectViewController filterThemeViewBm:54] ? 1 : 0;
ret += [QMPhotoEffectViewController cropThemeViewBm:8] ? 1 : 0;
ret += [QMPhotoEffectViewController frameThemeViewBm:71] ? 1 : 0;
ret += [QMPhotoEffectViewController buttonTappedBm:73] ? 1 : 0;
ret += [QMPhotoEffectViewController changeFilterBm:83] ? 1 : 0;
ret += [QMPhotoEffectViewController changeFilterAlphaBm:15] ? 1 : 0;
ret += [QMPhotoEffectViewController changeImageBm:39] ? 1 : 0;
ret += [QMPhotoEffectViewController restoreImageBm:57] ? 1 : 0;
ret += [QMPhotoEffectViewController saveImageBm:34] ? 1 : 0;
ret += [QMPhotoEffectViewController hideDragViewBorderBm:44] ? 1 : 0;
ret += [QMPhotoEffectViewController generateFrameOnImageBm:27] ? 1 : 0;
ret += [QMPhotoEffectViewController generateEffectedImageWithCompleteBlockBm:38] ? 1 : 0;
ret += [QMProgressHUD showBm:48] ? 1 : 0;
ret += [QMProgressHUD hideBm:43] ? 1 : 0;
ret += [QMCustomSlider initWithFrameBm:82] ? 1 : 0;
ret += [QMCustomSlider onPanGestureRecognizerTrickBm:2] ? 1 : 0;
ret += [QMCustomSlider renderCompletecallbackBm:83] ? 1 : 0;
ret += [QMCustomSlider setValueBm:57] ? 1 : 0;
ret += [QMCustomSlider setThumbImageBm:97] ? 1 : 0;
ret += [QMCustomSlider setMaximumTrackTintColorBm:69] ? 1 : 0;
ret += [QMCustomSlider setMinimumTrackTintColorBm:9] ? 1 : 0;
ret += [QMCustomSlider setValueWantcallbackBm:33] ? 1 : 0;
ret += [QMSuspensionView initWithFrameBm:65] ? 1 : 0;
ret += [QMSuspensionView collectionViewForFlowLayoutBm:32] ? 1 : 0;
ret += [QMSuspensionView buildCollectionViewBm:87] ? 1 : 0;
ret += [QMSuspensionView reloadDataBm:48] ? 1 : 0;
ret += [QMSuspensionView toggleBelowInViewBm:55] ? 1 : 0;
ret += [QMSuspensionView showBelowInViewBm:81] ? 1 : 0;
ret += [QMSuspensionView hideBm:8] ? 1 : 0;
ret += [QMSuspensionView indicatorViewWithPositionBm:85] ? 1 : 0;
ret += [QMSuspensionView collectionViewNumberofitemsinsectionBm:21] ? 1 : 0;
ret += [QMSuspensionView collectionViewCellforitematindexpathBm:48] ? 1 : 0;
ret += [QMSuspensionView collectionViewDidselectitematindexpathBm:29] ? 1 : 0;
ret += [QMSuspensionModel buildSuspensionModelsWithJsonBm:74] ? 1 : 0;
ret += [QMSuspensionModel buildSuspensionModelsWithConfigBm:66] ? 1 : 0;
ret += [CKStillCameraPreview initWithFrameBm:45] ? 1 : 0;
ret += [CKStillCameraPreview setupGestureBm:67] ? 1 : 0;
ret += [CKStillCamera initBm:72] ? 1 : 0;
ret += [CKStillCamera registerObserverBm:22] ? 1 : 0;
ret += [CKStillCamera isFocusPointOfInterestSupportedBm:89] ? 1 : 0;
ret += [CKStillCamera focusAtPointBm:3] ? 1 : 0;
ret += [CKStillCamera setFocusModelBm:86] ? 1 : 0;
ret += [CKStillCamera isAutoFocusRangeRestrictionSupportedBm:61] ? 1 : 0;
ret += [CKStillCamera setAutoFocusRangeRestrictionModelBm:43] ? 1 : 0;
ret += [CKStillCamera isSmoothAutoFocusSupportedBm:97] ? 1 : 0;
ret += [CKStillCamera enableSmoothAutoFocusBm:53] ? 1 : 0;
ret += [CKStillCamera isExposurePointOfInterestSupportedBm:52] ? 1 : 0;
ret += [CKStillCamera setExposeModelBm:56] ? 1 : 0;
ret += [CKStillCamera exposeAtPointBm:4] ? 1 : 0;
ret += [CKStillCamera exposureTargetOffsetBm:19] ? 1 : 0;
ret += [CKStillCamera setExposureModeCustomWithDurationIsoCompletionhandlerBm:23] ? 1 : 0;
ret += [CKStillCamera currentISOPercentageBm:74] ? 1 : 0;
ret += [CKStillCamera currentFlashModelBm:4] ? 1 : 0;
ret += [CKStillCamera setFlashModelBm:91] ? 1 : 0;
ret += [CKStillCamera currentWhiteBalanceModeBm:94] ? 1 : 0;
ret += [CKStillCamera setWhiteBalanceModeBm:14] ? 1 : 0;
ret += [CKStillCamera currentTorchModelBm:89] ? 1 : 0;
ret += [CKStillCamera setTorchModelBm:73] ? 1 : 0;
ret += [CKStillCamera setTorchLevelBm:50] ? 1 : 0;
ret += [CKStillCamera videoCanZoomBm:81] ? 1 : 0;
ret += [CKStillCamera videoMaxZoomFactorBm:73] ? 1 : 0;
ret += [CKStillCamera videoZoomFactorBm:87] ? 1 : 0;
ret += [CKStillCamera setVideoZoomFactorBm:51] ? 1 : 0;
ret += [CKStillCamera rampZoomToFactorBm:4] ? 1 : 0;
ret += [CKStillCamera rotateCameraBm:97] ? 1 : 0;
ret += [CKStillCamera observeValueForKeyPathOfobjectChangeContextBm:16] ? 1 : 0;
ret += [QMFilterModel buildFilterModelWithFilterPathBm:58] ? 1 : 0;
ret += [QMFilterModel buildFilterModelsWithPathBm:19] ? 1 : 0;
ret += [QMFrameModel buildFrameModelsBm:24] ? 1 : 0;
ret += [QMCropModel buildCropModelsBm:66] ? 1 : 0;
ret += [QMFrameThemeView initBm:18] ? 1 : 0;
ret += [QMFrameThemeView initWithFrameBm:49] ? 1 : 0;
ret += [QMFrameThemeView buildCollectionViewBm:32] ? 1 : 0;
ret += [QMFrameThemeView reloadDataBm:44] ? 1 : 0;
ret += [QMFrameThemeView collectionViewNumberofitemsinsectionBm:84] ? 1 : 0;
ret += [QMFrameThemeView collectionViewCellforitematindexpathBm:40] ? 1 : 0;
ret += [QMFrameThemeView collectionViewDidselectitematindexpathBm:18] ? 1 : 0;
ret += [QMFrameThemeViewCell awakeFromNibBm:1] ? 1 : 0;
ret += [QMFilterThemeSilder initBm:28] ? 1 : 0;
ret += [QMFilterThemeSilder initWithFrameBm:73] ? 1 : 0;
ret += [QMFilterThemeSilder buildOneSliderBm:34] ? 1 : 0;
ret += [QMFilterThemeSilder sliderValueChangeBm:61] ? 1 : 0;
ret += [QMFilterThemeSilder sliderTouchEndBm:2] ? 1 : 0;
ret += [QMFilterThemeSilder showWithValueBm:25] ? 1 : 0;
ret += [QMFilterThemeView initBm:50] ? 1 : 0;
ret += [QMFilterThemeView initWithFrameBm:91] ? 1 : 0;
ret += [QMFilterThemeView buildCollectionViewBm:73] ? 1 : 0;
ret += [QMFilterThemeView reloadDataBm:64] ? 1 : 0;
ret += [QMFilterThemeView sliderThemeViewBm:66] ? 1 : 0;
ret += [QMFilterThemeView collectionViewNumberofitemsinsectionBm:45] ? 1 : 0;
ret += [QMFilterThemeView collectionViewCellforitematindexpathBm:78] ? 1 : 0;
ret += [QMFilterThemeView collectionViewDidselectitematindexpathBm:37] ? 1 : 0;
ret += [QMFilterThemeViewCell awakeFromNibBm:76] ? 1 : 0;
ret += [QMFilterThemeViewCell setSelectedBm:5] ? 1 : 0;
ret += [QMBaseThemeView initWithFrameBm:5] ? 1 : 0;
ret += [QMBaseThemeView buildContentViewBm:13] ? 1 : 0;
ret += [QMBaseThemeView buildToolBarBm:14] ? 1 : 0;
ret += [QMBaseThemeView buttonTappedBm:69] ? 1 : 0;
ret += [QMBaseThemeView showBm:40] ? 1 : 0;
ret += [QMBaseThemeView hideBm:60] ? 1 : 0;
ret += [QMBaseThemeView setTitleBm:48] ? 1 : 0;
ret += [QMDragView initWithFrameImageBm:89] ? 1 : 0;
ret += [QMDragView setupUIWithSizeBm:32] ? 1 : 0;
ret += [QMDragView buttonTappedBm:65] ? 1 : 0;
ret += [QMDragView onImageDragBm:38] ? 1 : 0;
ret += [QMDragView onButtonScaleBm:95] ? 1 : 0;
ret += [QMDragView onButtonRotateBm:98] ? 1 : 0;
ret += [QMDragView hitTestWitheventBm:45] ? 1 : 0;
ret += [QMDragView pointInsideWitheventBm:40] ? 1 : 0;
ret += [QMDragView flipImageBm:77] ? 1 : 0;
ret += [QMDragView showToolBarBm:70] ? 1 : 0;
ret += [QMDragView hideToolBarBm:77] ? 1 : 0;
ret += [QMDragView isToolBarHiddenBm:21] ? 1 : 0;
ret += [QMDragView copyWithScaleFactorRelativedviewBm:58] ? 1 : 0;
ret += [QMCropThemeViewCell awakeFromNibBm:99] ? 1 : 0;
ret += [QMCropThemeView initBm:39] ? 1 : 0;
ret += [QMCropThemeView initWithFrameBm:88] ? 1 : 0;
ret += [QMCropThemeView buildCollectionViewBm:7] ? 1 : 0;
ret += [QMCropThemeView setCropDataBm:0] ? 1 : 0;
ret += [QMCropThemeView reloadDataBm:22] ? 1 : 0;
ret += [QMCropThemeView collectionViewNumberofitemsinsectionBm:59] ? 1 : 0;
ret += [QMCropThemeView collectionViewCellforitematindexpathBm:43] ? 1 : 0;
ret += [QMCropThemeView collectionViewDidselectitematindexpathBm:53] ? 1 : 0;
ret += [QMImageFilter initWithFilterModelBm:25] ? 1 : 0;
ret += [QMImageFilter bindQMTextureBm:0] ? 1 : 0;
ret += [QMImageFilter setAlphaBm:72] ? 1 : 0;
ret += [QMShakeButton initWithFrameBm:86] ? 1 : 0;
ret += [QMShakeButton runShakeAnimationBm:18] ? 1 : 0;
ret += [QMShareManager shareThumbImageInviewcontrollerBm:37] ? 1 : 0;
ret += [QMCameraViewController viewDidLoadBm:91] ? 1 : 0;
ret += [QMCameraViewController viewDidAppearBm:26] ? 1 : 0;
ret += [QMCameraViewController prefersStatusBarHiddenBm:85] ? 1 : 0;
ret += [QMCameraViewController preferredStatusBarStyleBm:97] ? 1 : 0;
ret += [QMCameraViewController setupVarBm:76] ? 1 : 0;
ret += [QMCameraViewController setupUIBm:40] ? 1 : 0;
ret += [QMCameraViewController setupCameraBm:38] ? 1 : 0;
ret += [QMCameraViewController startCameraCaptureBm:65] ? 1 : 0;
ret += [QMCameraViewController stopCameraCaptureBm:47] ? 1 : 0;
ret += [QMCameraViewController choseImageFromPhotoLibraryBm:87] ? 1 : 0;
ret += [QMCameraViewController asyncLoadLatestImageFromPhotoLibBm:26] ? 1 : 0;
ret += [QMCameraViewController fixImageOrientationCompletionblockBm:8] ? 1 : 0;
ret += [QMCameraViewController setCameraRatioBm:31] ? 1 : 0;
ret += [QMCameraViewController ratioSuspensionViewBm:85] ? 1 : 0;
ret += [QMCameraViewController flashSuspensionViewBm:51] ? 1 : 0;
ret += [QMCameraViewController cameraFilterViewBm:95] ? 1 : 0;
ret += [QMCameraViewController cameraFocusViewBm:5] ? 1 : 0;
ret += [QMCameraViewController rt_imagePickerControllerDidfinishpickingimagesBm:49] ? 1 : 0;
ret += [QMCameraViewController rt_imagePickerControllerDidCancelBm:77] ? 1 : 0;
ret += [QMCameraViewController rt_imagePickerControllerDidselectassetBm:85] ? 1 : 0;
ret += [QMCameraViewController cropViewControllerDidcroptoimageWithrectAngleBm:38] ? 1 : 0;
ret += [QMPhotoDisplayViewController deallocBm:35] ? 1 : 0;
ret += [QMPhotoDisplayViewController viewDidLoadBm:55] ? 1 : 0;
ret += [QMPhotoDisplayViewController prefersStatusBarHiddenBm:40] ? 1 : 0;
ret += [QMPhotoDisplayViewController setupUIBm:67] ? 1 : 0;
ret += [QMPhotoDisplayViewController setPhotoRatioBm:82] ? 1 : 0;
ret += [QMPhotoDisplayViewController saveImageBm:99] ? 1 : 0;
ret += [QMPhotoDisplayViewController setImageBm:55] ? 1 : 0;
ret += [QMPhotoDisplayViewController backPhotoBtnTappedBm:71] ? 1 : 0;
ret += [QMPhotoDisplayViewController savePhotoBtnTappedBm:0] ? 1 : 0;
ret += [QMPhotoDisplayViewController filterPhotoBtnTappedBm:3] ? 1 : 0;
ret += [QMPhotoDisplayViewController sharePhotoBtnTappedBm:44] ? 1 : 0;
ret += [QMCameraFlashSuspensionView flashSuspensionViewBm:57] ? 1 : 0;
ret += [QMCameraFlashSuspensionView collectionViewForFlowLayoutBm:85] ? 1 : 0;
ret += [QMCameraFocusView focusViewBm:39] ? 1 : 0;
ret += [QMCameraFocusView initWithFrameBm:82] ? 1 : 0;
ret += [QMCameraFocusView renderBm:2] ? 1 : 0;
ret += [QMCameraFocusView setISOBm:82] ? 1 : 0;
ret += [QMCameraFocusView foucusAtPointBm:26] ? 1 : 0;
ret += [QMCameraFocusView hideFoucusViewBm:91] ? 1 : 0;
ret += [QMCameraFocusView luminanceViewBm:15] ? 1 : 0;
ret += [QMCameraFilterView cameraFilterViewBm:67] ? 1 : 0;
ret += [QMCameraFilterView initWithFrameBm:89] ? 1 : 0;
ret += [QMCameraFilterView collectionViewForFlowLayoutBm:15] ? 1 : 0;
ret += [QMCameraFilterView buildCollectionViewBm:75] ? 1 : 0;
ret += [QMCameraFilterView toggleSliderViewBm:31] ? 1 : 0;
ret += [QMCameraFilterView reloadDataBm:16] ? 1 : 0;
ret += [QMCameraFilterView toggleInViewBm:9] ? 1 : 0;
ret += [QMCameraFilterView showInViewBm:93] ? 1 : 0;
ret += [QMCameraFilterView hideBm:26] ? 1 : 0;
ret += [QMCameraFilterView setFilterValueAnimatedBm:41] ? 1 : 0;
ret += [QMCameraFilterView selectFilterAtIndexBm:82] ? 1 : 0;
ret += [QMCameraFilterView selectConllectionViewAtIndexBm:23] ? 1 : 0;
ret += [QMCameraFilterView deselectConllectionViewAtIndexBm:59] ? 1 : 0;
ret += [QMCameraFilterView collectionViewNumberofitemsinsectionBm:96] ? 1 : 0;
ret += [QMCameraFilterView collectionViewCellforitematindexpathBm:2] ? 1 : 0;
ret += [QMCameraFilterView collectionViewDidselectitematindexpathBm:15] ? 1 : 0;
ret += [QMCameraRatioSuspensionView ratioSuspensionViewBm:13] ? 1 : 0;
ret += [UIStepper rac_newValueChannelWithNilValueBmBm:44] ? 1 : 0;
ret += [RACKVOProxy sharedProxyBmBm:59] ? 1 : 0;
ret += [RACKVOProxy initBmBm:40] ? 1 : 0;
ret += [RACKVOProxy addObserverForcontextBmBm:62] ? 1 : 0;
ret += [RACKVOProxy removeObserverForcontextBmBm:92] ? 1 : 0;
ret += [RACKVOProxy observeValueForKeyPathOfobjectChangeContextBmBm:67] ? 1 : 0;
ret += [RACDynamicSignal createSignalBmBm:71] ? 1 : 0;
ret += [RACDynamicSignal subscribeBmBm:53] ? 1 : 0;
ret += [GPUImage3x3ConvolutionFilter initBmBm:45] ? 1 : 0;
ret += [GPUImage3x3ConvolutionFilter initWithFragmentShaderFromStringBmBm:53] ? 1 : 0;
ret += [GPUImage3x3ConvolutionFilter setConvolutionKernelBmBm:79] ? 1 : 0;
ret += [DGActivityIndicatorThreeDotsAnimation setupAnimationInLayerWithsizeTintcolorBmBm:54] ? 1 : 0;
ret += [NSNumber numberWithStringBmBm:4] ? 1 : 0;
ret += [RACTuple rac_sequenceBmBm:80] ? 1 : 0;
ret += [GPUImageHistogramFilter initWithHistogramTypeBmBm:15] ? 1 : 0;
ret += [GPUImageHistogramFilter initBmBm:12] ? 1 : 0;
ret += [GPUImageHistogramFilter initializeSecondaryAttributesBmBm:10] ? 1 : 0;
ret += [GPUImageHistogramFilter deallocBmBm:45] ? 1 : 0;
ret += [GPUImageHistogramFilter sizeOfFBOBmBm:56] ? 1 : 0;
ret += [GPUImageHistogramFilter newFrameReadyAtTimeAtindexBmBm:45] ? 1 : 0;
ret += [GPUImageHistogramFilter outputFrameSizeBmBm:85] ? 1 : 0;
ret += [GPUImageHistogramFilter setInputSizeAtindexBmBm:89] ? 1 : 0;
ret += [GPUImageHistogramFilter setInputRotationAtindexBmBm:7] ? 1 : 0;
ret += [GPUImageHistogramFilter renderToTextureWithVerticesTexturecoordinatesBmBm:4] ? 1 : 0;
ret += [GPUImageAverageLuminanceThresholdFilter initBmBm:30] ? 1 : 0;
ret += [NSString rac_sequenceBmBm:96] ? 1 : 0;
ret += [GPUImageLowPassFilter initBmBm:37] ? 1 : 0;
ret += [GPUImageLowPassFilter setFilterStrengthBmBm:40] ? 1 : 0;
ret += [GPUImageLowPassFilter filterStrengthBmBm:27] ? 1 : 0;
ret += [GPUImageLowPassFilter addTargetAttexturelocationBmBm:1] ? 1 : 0;
ret += [RACUnarySequence returnBmBm:85] ? 1 : 0;
ret += [RACUnarySequence tailBmBm:37] ? 1 : 0;
ret += [RACUnarySequence bindBmBm:41] ? 1 : 0;
ret += [RACUnarySequence classForCoderBmBm:17] ? 1 : 0;
ret += [RACUnarySequence initWithCoderBmBm:91] ? 1 : 0;
ret += [RACUnarySequence encodeWithCoderBmBm:41] ? 1 : 0;
ret += [RACUnarySequence descriptionBmBm:74] ? 1 : 0;
ret += [RACUnarySequence hashBmBm:23] ? 1 : 0;
ret += [RACUnarySequence isEqualBmBm:49] ? 1 : 0;
ret += [DGActivityIndicatorBallScaleAnimation setupAnimationInLayerWithsizeTintcolorBmBm:2] ? 1 : 0;
ret += [CALayer snapshotImageBmBm:4] ? 1 : 0;
ret += [CALayer snapshotPDFBmBm:7] ? 1 : 0;
ret += [CALayer setLayerShadowOffsetRadiusBmBm:24] ? 1 : 0;
ret += [CALayer removeAllSublayersBmBm:30] ? 1 : 0;
ret += [CALayer leftBmBm:31] ? 1 : 0;
ret += [CALayer setLeftBmBm:43] ? 1 : 0;
ret += [CALayer topBmBm:92] ? 1 : 0;
ret += [CALayer setTopBmBm:10] ? 1 : 0;
ret += [CALayer rightBmBm:78] ? 1 : 0;
ret += [CALayer setRightBmBm:89] ? 1 : 0;
ret += [CALayer bottomBmBm:84] ? 1 : 0;
ret += [CALayer setBottomBmBm:8] ? 1 : 0;
ret += [CALayer widthBmBm:85] ? 1 : 0;
ret += [CALayer setWidthBmBm:82] ? 1 : 0;
ret += [CALayer heightBmBm:40] ? 1 : 0;
ret += [CALayer setHeightBmBm:62] ? 1 : 0;
ret += [CALayer centerBmBm:30] ? 1 : 0;
ret += [CALayer setCenterBmBm:55] ? 1 : 0;
ret += [CALayer centerXBmBm:0] ? 1 : 0;
ret += [CALayer setCenterXBmBm:87] ? 1 : 0;
ret += [CALayer centerYBmBm:79] ? 1 : 0;
ret += [CALayer setCenterYBmBm:29] ? 1 : 0;
ret += [CALayer originBmBm:63] ? 1 : 0;
ret += [CALayer setOriginBmBm:85] ? 1 : 0;
ret += [CALayer frameSizeBmBm:82] ? 1 : 0;
ret += [CALayer setFrameSizeBmBm:35] ? 1 : 0;
ret += [CALayer transformRotationBmBm:86] ? 1 : 0;
ret += [CALayer setTransformRotationBmBm:32] ? 1 : 0;
ret += [CALayer transformRotationXBmBm:52] ? 1 : 0;
ret += [CALayer setTransformRotationXBmBm:11] ? 1 : 0;
ret += [CALayer transformRotationYBmBm:82] ? 1 : 0;
ret += [CALayer setTransformRotationYBmBm:75] ? 1 : 0;
ret += [CALayer transformRotationZBmBm:22] ? 1 : 0;
ret += [CALayer setTransformRotationZBmBm:56] ? 1 : 0;
ret += [CALayer transformScaleXBmBm:60] ? 1 : 0;
ret += [CALayer setTransformScaleXBmBm:0] ? 1 : 0;
ret += [CALayer transformScaleYBmBm:72] ? 1 : 0;
ret += [CALayer setTransformScaleYBmBm:44] ? 1 : 0;
ret += [CALayer transformScaleZBmBm:85] ? 1 : 0;
ret += [CALayer setTransformScaleZBmBm:3] ? 1 : 0;
ret += [CALayer transformScaleBmBm:24] ? 1 : 0;
ret += [CALayer setTransformScaleBmBm:22] ? 1 : 0;
ret += [CALayer transformTranslationXBmBm:74] ? 1 : 0;
ret += [CALayer setTransformTranslationXBmBm:93] ? 1 : 0;
ret += [CALayer transformTranslationYBmBm:43] ? 1 : 0;
ret += [CALayer setTransformTranslationYBmBm:7] ? 1 : 0;
ret += [CALayer transformTranslationZBmBm:80] ? 1 : 0;
ret += [CALayer setTransformTranslationZBmBm:10] ? 1 : 0;
ret += [CALayer transformDepthBmBm:38] ? 1 : 0;
ret += [CALayer setTransformDepthBmBm:23] ? 1 : 0;
ret += [CALayer contentModeBmBm:24] ? 1 : 0;
ret += [CALayer setContentModeBmBm:46] ? 1 : 0;
ret += [CALayer addFadeAnimationWithDurationCurveBmBm:17] ? 1 : 0;
ret += [CALayer removePreviousFadeAnimationBmBm:90] ? 1 : 0;
ret += [UIViewController parentIQContainerViewControllerBmBm:42] ? 1 : 0;
ret += [UIViewController setIQLayoutGuideConstraintBmBm:37] ? 1 : 0;
ret += [UIViewController IQLayoutGuideConstraintBmBm:30] ? 1 : 0;
ret += [GPUImageDivideBlendFilter initBmBm:98] ? 1 : 0;
ret += [MKAnnotationView rac_prepareForReuseSignalBmBm:11] ? 1 : 0;
ret += [UICollectionReusableView rac_prepareForReuseSignalBmBm:40] ? 1 : 0;
ret += [GPUImageRGBOpeningFilter initBmBm:20] ? 1 : 0;
ret += [GPUImageRGBOpeningFilter initWithRadiusBmBm:15] ? 1 : 0;
ret += [GPUImageFilterPipeline initWithConfigurationInputOutputBmBm:30] ? 1 : 0;
ret += [GPUImageFilterPipeline initWithConfigurationFileInputOutputBmBm:41] ? 1 : 0;
ret += [GPUImageFilterPipeline _parseConfigurationBmBm:10] ? 1 : 0;
ret += [GPUImageFilterPipeline initWithOrderedFiltersInputOutputBmBm:28] ? 1 : 0;
ret += [GPUImageFilterPipeline addFilterAtindexBmBm:18] ? 1 : 0;
ret += [GPUImageFilterPipeline addFilterBmBm:42] ? 1 : 0;
ret += [GPUImageFilterPipeline replaceFilterAtIndexWithfilterBmBm:3] ? 1 : 0;
ret += [GPUImageFilterPipeline removeFilterBmBm:30] ? 1 : 0;
ret += [GPUImageFilterPipeline removeFilterAtIndexBmBm:44] ? 1 : 0;
ret += [GPUImageFilterPipeline removeAllFiltersBmBm:46] ? 1 : 0;
ret += [GPUImageFilterPipeline replaceAllFiltersBmBm:35] ? 1 : 0;
ret += [GPUImageFilterPipeline _refreshFiltersBmBm:36] ? 1 : 0;
ret += [GPUImageFilterPipeline currentFilteredFrameBmBm:74] ? 1 : 0;
ret += [GPUImageFilterPipeline currentFilteredFrameWithOrientationBmBm:94] ? 1 : 0;
ret += [GPUImageFilterPipeline newCGImageFromCurrentFilteredFrameBmBm:10] ? 1 : 0;
ret += [NSArray mas_makeConstraintsBmBm:20] ? 1 : 0;
ret += [NSArray mas_updateConstraintsBmBm:26] ? 1 : 0;
ret += [NSArray mas_remakeConstraintsBmBm:78] ? 1 : 0;
ret += [NSArray mas_distributeViewsAlongAxisWithfixedspacingLeadspacingTailspacingBmBm:20] ? 1 : 0;
ret += [NSArray mas_distributeViewsAlongAxisWithfixeditemlengthLeadspacingTailspacingBmBm:23] ? 1 : 0;
ret += [NSArray mas_commonSuperviewOfViewsBmBm:84] ? 1 : 0;
ret += [GLProgram initWithVertexShaderStringFragmentshaderstringBmBm:94] ? 1 : 0;
ret += [GLProgram initWithVertexShaderStringFragmentshaderfilenameBmBm:56] ? 1 : 0;
ret += [GLProgram initWithVertexShaderFilenameFragmentshaderfilenameBmBm:32] ? 1 : 0;
ret += [GLProgram compileShaderTypeStringBmBm:6] ? 1 : 0;
ret += [GLProgram addAttributeBmBm:56] ? 1 : 0;
ret += [GLProgram attributeIndexBmBm:16] ? 1 : 0;
ret += [GLProgram uniformIndexBmBm:12] ? 1 : 0;
ret += [GLProgram linkBmBm:17] ? 1 : 0;
ret += [GLProgram useBmBm:79] ? 1 : 0;
ret += [GLProgram validateBmBm:64] ? 1 : 0;
ret += [GLProgram deallocBmBm:95] ? 1 : 0;
ret += [GPUImageTransformFilter initBmBm:55] ? 1 : 0;
ret += [GPUImageTransformFilter loadOrthoMatrixLeftRightBottomTopNearFarBmBm:6] ? 1 : 0;
ret += [GPUImageTransformFilter convert3DTransformTomatrixBmBm:0] ? 1 : 0;
ret += [GPUImageTransformFilter newFrameReadyAtTimeAtindexBmBm:78] ? 1 : 0;
ret += [GPUImageTransformFilter BmBm:1] ? 1 : 0;
ret += [GPUImageTransformFilter setupFilterForSizeBmBm:39] ? 1 : 0;
ret += [GPUImageTransformFilter setAffineTransformBmBm:48] ? 1 : 0;
ret += [GPUImageTransformFilter affineTransformBmBm:49] ? 1 : 0;
ret += [GPUImageTransformFilter setTransform3DBmBm:0] ? 1 : 0;
ret += [GPUImageTransformFilter setIgnoreAspectRatioBmBm:58] ? 1 : 0;
ret += [GPUImageTransformFilter setAnchorTopLeftBmBm:76] ? 1 : 0;
ret += [GPUImageBilateralFilter initBmBm:79] ? 1 : 0;
ret += [GPUImageBilateralFilter setDistanceNormalizationFactorBmBm:6] ? 1 : 0;
ret += [RACCommand allowsConcurrentExecutionBmBm:32] ? 1 : 0;
ret += [RACCommand setAllowsConcurrentExecutionBmBm:93] ? 1 : 0;
ret += [RACCommand initBmBm:95] ? 1 : 0;
ret += [RACCommand initWithSignalBlockBmBm:98] ? 1 : 0;
ret += [RACCommand deallocBmBm:46] ? 1 : 0;
ret += [RACCommand initWithEnabledSignalblockBmBm:84] ? 1 : 0;
ret += [RACCommand executeBmBm:41] ? 1 : 0;
ret += [NSKeyedUnarchiver unarchiveObjectWithDataExceptionBmBm:31] ? 1 : 0;
ret += [NSKeyedUnarchiver unarchiveObjectWithFileExceptionBmBm:43] ? 1 : 0;
ret += [GPUImageScreenBlendFilter initBmBm:2] ? 1 : 0;
ret += [MAS_VIEW mas_makeConstraintsBmBm:70] ? 1 : 0;
ret += [MAS_VIEW mas_updateConstraintsBmBm:20] ? 1 : 0;
ret += [MAS_VIEW mas_remakeConstraintsBmBm:29] ? 1 : 0;
ret += [MAS_VIEW mas_leftBmBm:13] ? 1 : 0;
ret += [MAS_VIEW mas_topBmBm:70] ? 1 : 0;
ret += [MAS_VIEW mas_rightBmBm:53] ? 1 : 0;
ret += [MAS_VIEW mas_bottomBmBm:72] ? 1 : 0;
ret += [MAS_VIEW mas_leadingBmBm:27] ? 1 : 0;
ret += [MAS_VIEW mas_trailingBmBm:64] ? 1 : 0;
ret += [MAS_VIEW mas_widthBmBm:81] ? 1 : 0;
ret += [MAS_VIEW mas_heightBmBm:14] ? 1 : 0;
ret += [MAS_VIEW mas_centerXBmBm:26] ? 1 : 0;
ret += [MAS_VIEW mas_centerYBmBm:90] ? 1 : 0;
ret += [MAS_VIEW mas_baselineBmBm:95] ? 1 : 0;
ret += [MAS_VIEW mas_attributeBmBm:59] ? 1 : 0;
ret += [MAS_VIEW mas_firstBaselineBmBm:22] ? 1 : 0;
ret += [MAS_VIEW mas_lastBaselineBmBm:22] ? 1 : 0;
ret += [MAS_VIEW mas_leftMarginBmBm:20] ? 1 : 0;
ret += [MAS_VIEW mas_rightMarginBmBm:92] ? 1 : 0;
ret += [MAS_VIEW mas_topMarginBmBm:3] ? 1 : 0;
ret += [MAS_VIEW mas_bottomMarginBmBm:60] ? 1 : 0;
ret += [MAS_VIEW mas_leadingMarginBmBm:43] ? 1 : 0;
ret += [MAS_VIEW mas_trailingMarginBmBm:30] ? 1 : 0;
ret += [MAS_VIEW mas_centerXWithinMarginsBmBm:86] ? 1 : 0;
ret += [MAS_VIEW mas_centerYWithinMarginsBmBm:33] ? 1 : 0;
ret += [MAS_VIEW mas_safeAreaLayoutGuideBmBm:43] ? 1 : 0;
ret += [MAS_VIEW mas_safeAreaLayoutGuideTopBmBm:77] ? 1 : 0;
ret += [MAS_VIEW mas_safeAreaLayoutGuideBottomBmBm:70] ? 1 : 0;
ret += [MAS_VIEW mas_safeAreaLayoutGuideLeftBmBm:20] ? 1 : 0;
ret += [MAS_VIEW mas_safeAreaLayoutGuideRightBmBm:28] ? 1 : 0;
ret += [MAS_VIEW mas_keyBmBm:97] ? 1 : 0;
ret += [MAS_VIEW setMas_keyBmBm:84] ? 1 : 0;
ret += [MAS_VIEW mas_closestCommonSuperviewBmBm:4] ? 1 : 0;
ret += [RACTuple objectAtIndexedSubscriptBmBm:52] ? 1 : 0;
ret += [GPUImageSubtractBlendFilter initBmBm:39] ? 1 : 0;
ret += [DGActivityIndicatorLineScalePulseOutAnimation setupAnimationInLayerWithsizeTintcolorBmBm:95] ? 1 : 0;
ret += [GPUImageChromaKeyFilter initBmBm:74] ? 1 : 0;
ret += [GPUImageChromaKeyFilter setColorToReplaceRedGreenBlueBmBm:59] ? 1 : 0;
ret += [GPUImageChromaKeyFilter setThresholdSensitivityBmBm:71] ? 1 : 0;
ret += [GPUImageChromaKeyFilter setSmoothingBmBm:85] ? 1 : 0;
ret += [NSTimer _yy_ExecBlockBmBm:27] ? 1 : 0;
ret += [NSTimer scheduledTimerWithTimeIntervalBlockRepeatsBmBm:69] ? 1 : 0;
ret += [NSTimer timerWithTimeIntervalBlockRepeatsBmBm:28] ? 1 : 0;
ret += [AFJSONResponseSerializer serializerBmBm:9] ? 1 : 0;
ret += [AFJSONResponseSerializer serializerWithReadingOptionsBmBm:97] ? 1 : 0;
ret += [AFJSONResponseSerializer initBmBm:48] ? 1 : 0;
ret += [AFJSONResponseSerializer responseObjectForResponseDataErrorBmBm:7] ? 1 : 0;
ret += [AFJSONResponseSerializer supportsSecureCodingBmBm:64] ? 1 : 0;
ret += [AFJSONResponseSerializer initWithCoderBmBm:25] ? 1 : 0;
ret += [AFJSONResponseSerializer encodeWithCoderBmBm:71] ? 1 : 0;
ret += [AFJSONResponseSerializer copyWithZoneBmBm:36] ? 1 : 0;
ret += [MASViewConstraint initWithFirstViewAttributeBmBm:70] ? 1 : 0;
ret += [MASViewConstraint copyWithZoneBmBm:74] ? 1 : 0;
ret += [MASViewConstraint installedConstraintsForViewBmBm:40] ? 1 : 0;
ret += [MASViewConstraint setLayoutConstantBmBm:86] ? 1 : 0;
ret += [MASViewConstraint setLayoutRelationBmBm:82] ? 1 : 0;
ret += [MASViewConstraint supportsActivePropertyBmBm:97] ? 1 : 0;
ret += [MASViewConstraint isActiveBmBm:10] ? 1 : 0;
ret += [MASViewConstraint hasBeenInstalledBmBm:88] ? 1 : 0;
ret += [MASViewConstraint setSecondViewAttributeBmBm:19] ? 1 : 0;
ret += [MASViewConstraint multipliedByBmBm:48] ? 1 : 0;
ret += [MASViewConstraint dividedByBmBm:21] ? 1 : 0;
ret += [MASViewConstraint priorityBmBm:71] ? 1 : 0;
ret += [MASViewConstraint equalToWithRelationBmBm:74] ? 1 : 0;
ret += [MASViewConstraint withBmBm:58] ? 1 : 0;
ret += [MASViewConstraint andBmBm:64] ? 1 : 0;
ret += [MASViewConstraint addConstraintWithLayoutAttributeBmBm:37] ? 1 : 0;
ret += [MASViewConstraint animatorBmBm:46] ? 1 : 0;
ret += [MASViewConstraint keyBmBm:15] ? 1 : 0;
ret += [MASViewConstraint setInsetsBmBm:40] ? 1 : 0;
ret += [MASViewConstraint setInsetBmBm:54] ? 1 : 0;
ret += [MASViewConstraint setOffsetBmBm:65] ? 1 : 0;
ret += [MASViewConstraint setSizeOffsetBmBm:90] ? 1 : 0;
ret += [MASViewConstraint setCenterOffsetBmBm:2] ? 1 : 0;
ret += [MASViewConstraint activateBmBm:57] ? 1 : 0;
ret += [MASViewConstraint deactivateBmBm:1] ? 1 : 0;
ret += [MASViewConstraint installBmBm:95] ? 1 : 0;
ret += [MASViewConstraint layoutConstraintSimilarToBmBm:2] ? 1 : 0;
ret += [MASViewConstraint uninstallBmBm:54] ? 1 : 0;
ret += [DGActivityIndicatorBallGridBeatAnimation setupAnimationInLayerWithsizeTintcolorBmBm:39] ? 1 : 0;
ret += [DGActivityIndicatorBallGridBeatAnimation createCirleWithColorBmBm:57] ? 1 : 0;
ret += [GPUImagePinchDistortionFilter initBmBm:69] ? 1 : 0;
ret += [GPUImagePinchDistortionFilter adjustAspectRatioBmBm:6] ? 1 : 0;
ret += [GPUImagePinchDistortionFilter forceProcessingAtSizeBmBm:38] ? 1 : 0;
ret += [GPUImagePinchDistortionFilter setInputSizeAtindexBmBm:29] ? 1 : 0;
ret += [GPUImagePinchDistortionFilter setInputRotationAtindexBmBm:35] ? 1 : 0;
ret += [GPUImagePinchDistortionFilter setAspectRatioBmBm:44] ? 1 : 0;
ret += [GPUImagePinchDistortionFilter setRadiusBmBm:93] ? 1 : 0;
ret += [GPUImagePinchDistortionFilter setScaleBmBm:75] ? 1 : 0;
ret += [GPUImagePinchDistortionFilter setCenterBmBm:68] ? 1 : 0;
ret += [MASCompositeConstraint initWithChildrenBmBm:47] ? 1 : 0;
ret += [MASCompositeConstraint constraintShouldbereplacedwithconstraintBmBm:5] ? 1 : 0;
ret += [MASCompositeConstraint constraintAddconstraintwithlayoutattributeBmBm:68] ? 1 : 0;
ret += [MASCompositeConstraint multipliedByBmBm:59] ? 1 : 0;
ret += [MASCompositeConstraint dividedByBmBm:90] ? 1 : 0;
ret += [MASCompositeConstraint priorityBmBm:46] ? 1 : 0;
ret += [MASCompositeConstraint equalToWithRelationBmBm:16] ? 1 : 0;
ret += [MASCompositeConstraint addConstraintWithLayoutAttributeBmBm:24] ? 1 : 0;
ret += [MASCompositeConstraint animatorBmBm:59] ? 1 : 0;
ret += [MASCompositeConstraint keyBmBm:12] ? 1 : 0;
ret += [MASCompositeConstraint setInsetsBmBm:1] ? 1 : 0;
ret += [MASCompositeConstraint setInsetBmBm:14] ? 1 : 0;
ret += [MASCompositeConstraint setOffsetBmBm:37] ? 1 : 0;
ret += [MASCompositeConstraint setSizeOffsetBmBm:82] ? 1 : 0;
ret += [MASCompositeConstraint setCenterOffsetBmBm:34] ? 1 : 0;
ret += [MASCompositeConstraint activateBmBm:8] ? 1 : 0;
ret += [MASCompositeConstraint deactivateBmBm:9] ? 1 : 0;
ret += [MASCompositeConstraint installBmBm:76] ? 1 : 0;
ret += [MASCompositeConstraint uninstallBmBm:51] ? 1 : 0;
ret += [GPUImageBrightnessFilter initBmBm:77] ? 1 : 0;
ret += [GPUImageBrightnessFilter setBrightnessBmBm:34] ? 1 : 0;
ret += [UIBezierPath bezierPathWithTextFontBmBm:21] ? 1 : 0;
ret += [GPUImageLookupFilter initBmBm:74] ? 1 : 0;
ret += [GPUImageLookupFilter setIntensityBmBm:81] ? 1 : 0;
ret += [GPUImageGaussianBlurFilter initWithFirstStageVertexShaderFromStringFirststagefragmentshaderfromstringSecondstagevertexshaderfromstringSecondstagefragmentshaderfromstringBmBm:52] ? 1 : 0;
ret += [GPUImageGaussianBlurFilter initBmBm:95] ? 1 : 0;
ret += [GPUImageGaussianBlurFilter vertexShaderForStandardBlurOfRadiusSigmaBmBm:32] ? 1 : 0;
ret += [GPUImageGaussianBlurFilter fragmentShaderForStandardBlurOfRadiusSigmaBmBm:27] ? 1 : 0;
ret += [GPUImageGaussianBlurFilter vertexShaderForOptimizedBlurOfRadiusSigmaBmBm:4] ? 1 : 0;
ret += [GPUImageGaussianBlurFilter fragmentShaderForOptimizedBlurOfRadiusSigmaBmBm:19] ? 1 : 0;
ret += [GPUImageGaussianBlurFilter setupFilterForSizeBmBm:95] ? 1 : 0;
ret += [GPUImageGaussianBlurFilter renderToTextureWithVerticesTexturecoordinatesBmBm:10] ? 1 : 0;
ret += [GPUImageGaussianBlurFilter switchToVertexShaderFragmentshaderBmBm:67] ? 1 : 0;
ret += [GPUImageGaussianBlurFilter setTexelSpacingMultiplierBmBm:13] ? 1 : 0;
ret += [GPUImageGaussianBlurFilter setBlurRadiusInPixelsBmBm:98] ? 1 : 0;
ret += [GPUImageGaussianBlurFilter setBlurRadiusAsFractionOfImageWidthBmBm:78] ? 1 : 0;
ret += [GPUImageGaussianBlurFilter setBlurRadiusAsFractionOfImageHeightBmBm:61] ? 1 : 0;
ret += [GPUImageAverageColor initBmBm:83] ? 1 : 0;
ret += [GPUImageAverageColor deallocBmBm:13] ? 1 : 0;
ret += [GPUImageAverageColor renderToTextureWithVerticesTexturecoordinatesBmBm:59] ? 1 : 0;
ret += [GPUImageAverageColor setInputRotationAtindexBmBm:0] ? 1 : 0;
ret += [GPUImageAverageColor extractAverageColorAtFrameTimeBmBm:54] ? 1 : 0;
ret += [GPUImageHSBFilter initBmBm:78] ? 1 : 0;
ret += [GPUImageHSBFilter resetBmBm:61] ? 1 : 0;
ret += [GPUImageHSBFilter rotateHueBmBm:84] ? 1 : 0;
ret += [GPUImageHSBFilter adjustSaturationBmBm:1] ? 1 : 0;
ret += [GPUImageHSBFilter adjustBrightnessBmBm:96] ? 1 : 0;
ret += [GPUImageHSBFilter _updateColorMatrixBmBm:15] ? 1 : 0;
ret += [GPUImageHSBFilter 0BmBm:13] ? 1 : 0;
ret += [RACTestScheduler initBmBm:57] ? 1 : 0;
ret += [RACTestScheduler deallocBmBm:27] ? 1 : 0;
ret += [RACTestScheduler stepBmBm:95] ? 1 : 0;
ret += [RACTestScheduler stepBmBm:72] ? 1 : 0;
ret += [RACTestScheduler stepAllBmBm:70] ? 1 : 0;
ret += [RACTestScheduler scheduleBmBm:60] ? 1 : 0;
ret += [RACTestScheduler afterScheduleBmBm:59] ? 1 : 0;
ret += [RACTestScheduler afterRepeatingeveryWithleewayScheduleBmBm:47] ? 1 : 0;
ret += [UIRefreshControl af_notificationObserverBmBm:80] ? 1 : 0;
ret += [UIRefreshControl setRefreshingWithStateOfTaskBmBm:19] ? 1 : 0;
ret += [GPUImageFalseColorFilter initBmBm:74] ? 1 : 0;
ret += [GPUImageFalseColorFilter setFirstColorBmBm:71] ? 1 : 0;
ret += [GPUImageFalseColorFilter setSecondColorBmBm:84] ? 1 : 0;
ret += [GPUImageFalseColorFilter setFirstColorRedGreenBlueBmBm:16] ? 1 : 0;
ret += [GPUImageFalseColorFilter setSecondColorRedGreenBlueBmBm:78] ? 1 : 0;
ret += [RACMulticastConnection initWithSourceSignalSubjectBmBm:51] ? 1 : 0;
ret += [RACMulticastConnection connectBmBm:30] ? 1 : 0;
ret += [RACMulticastConnection autoconnectBmBm:30] ? 1 : 0;
ret += [UIBarButtonItem setActionBlockBmBm:74] ? 1 : 0;
ret += [UIBarButtonItem actionBlockBmBm:44] ? 1 : 0;
ret += [GPUImageLaplacianFilter initBmBm:32] ? 1 : 0;
ret += [GPUImageToonFilter initBmBm:99] ? 1 : 0;
ret += [GPUImageToonFilter setThresholdBmBm:54] ? 1 : 0;
ret += [GPUImageToonFilter setQuantizationLevelsBmBm:35] ? 1 : 0;
ret += [DGActivityIndicatorBallGridPulseAnimation setupAnimationInLayerWithsizeTintcolorBmBm:6] ? 1 : 0;
ret += [DGActivityIndicatorBallGridPulseAnimation createCirleWithColorBmBm:59] ? 1 : 0;
ret += [IQTextView initializeBmBm:68] ? 1 : 0;
ret += [IQTextView deallocBmBm:30] ? 1 : 0;
ret += [IQTextView initBmBm:95] ? 1 : 0;
ret += [IQTextView awakeFromNibBmBm:49] ? 1 : 0;
ret += [IQTextView refreshPlaceholderBmBm:14] ? 1 : 0;
ret += [IQTextView setTextBmBm:85] ? 1 : 0;
ret += [IQTextView setAttributedTextBmBm:77] ? 1 : 0;
ret += [IQTextView setFontBmBm:64] ? 1 : 0;
ret += [IQTextView setTextAlignmentBmBm:58] ? 1 : 0;
ret += [IQTextView layoutSubviewsBmBm:2] ? 1 : 0;
ret += [IQTextView setPlaceholderBmBm:19] ? 1 : 0;
ret += [IQTextView setAttributedPlaceholderBmBm:44] ? 1 : 0;
ret += [IQTextView setPlaceholderTextColorBmBm:80] ? 1 : 0;
ret += [IQTextView placeholderInsetsBmBm:61] ? 1 : 0;
ret += [IQTextView placeholderExpectedFrameBmBm:13] ? 1 : 0;
ret += [IQTextView IQ_PlaceholderLabelBmBm:17] ? 1 : 0;
ret += [IQTextView delegateBmBm:73] ? 1 : 0;
ret += [IQTextView intrinsicContentSizeBmBm:75] ? 1 : 0;
ret += [UIAlertView rac_delegateProxyBmBm:64] ? 1 : 0;
ret += [UIAlertView rac_buttonClickedSignalBmBm:73] ? 1 : 0;
ret += [UIAlertView rac_willDismissSignalBmBm:43] ? 1 : 0;
ret += [GPUImageHistogramGenerator initBmBm:30] ? 1 : 0;
ret += [GPUImageHistogramGenerator setBackgroundColorRedGreenBlueAlphaBmBm:89] ? 1 : 0;
ret += [GPUImageRGBErosionFilter initWithRadiusBmBm:62] ? 1 : 0;
ret += [GPUImageRGBErosionFilter initBmBm:74] ? 1 : 0;
ret += [GPUImageMissEtikateFilter initBmBm:32] ? 1 : 0;
ret += [UIProgressView af_uploadProgressAnimatedBmBm:17] ? 1 : 0;
ret += [UIProgressView af_setUploadProgressAnimatedBmBm:59] ? 1 : 0;
ret += [UIProgressView af_downloadProgressAnimatedBmBm:62] ? 1 : 0;
ret += [UIProgressView af_setDownloadProgressAnimatedBmBm:72] ? 1 : 0;
ret += [UIProgressView setProgressWithUploadProgressOfTaskAnimatedBmBm:7] ? 1 : 0;
ret += [UIProgressView setProgressWithDownloadProgressOfTaskAnimatedBmBm:87] ? 1 : 0;
ret += [UIProgressView observeValueForKeyPathOfobjectChangeContextBmBm:70] ? 1 : 0;
ret += [UIImageView af_activeImageDownloadReceiptBmBm:51] ? 1 : 0;
ret += [UIImageView af_setActiveImageDownloadReceiptBmBm:11] ? 1 : 0;
ret += [AFPropertyListRequestSerializer serializerBmBm:83] ? 1 : 0;
ret += [AFPropertyListRequestSerializer serializerWithFormatWriteoptionsBmBm:86] ? 1 : 0;
ret += [AFPropertyListRequestSerializer requestBySerializingRequestWithparametersErrorBmBm:37] ? 1 : 0;
ret += [AFPropertyListRequestSerializer initWithCoderBmBm:24] ? 1 : 0;
ret += [AFPropertyListRequestSerializer encodeWithCoderBmBm:25] ? 1 : 0;
ret += [AFPropertyListRequestSerializer copyWithZoneBmBm:41] ? 1 : 0;
ret += [DGActivityIndicatorBallScaleMultipleAnimation setupAnimationInLayerWithsizeTintcolorBmBm:73] ? 1 : 0;
ret += [GPUImageDirectionalSobelEdgeDetectionFilter initBmBm:39] ? 1 : 0;
ret += [RACArraySequence sequenceWithArrayOffsetBmBm:84] ? 1 : 0;
ret += [RACArraySequence headBmBm:69] ? 1 : 0;
ret += [RACArraySequence tailBmBm:18] ? 1 : 0;
ret += [RACArraySequence countByEnumeratingWithStateObjectsCountBmBm:41] ? 1 : 0;
ret += [RACArraySequence arrayBmBm:82] ? 1 : 0;
ret += [RACArraySequence initWithCoderBmBm:11] ? 1 : 0;
ret += [RACArraySequence encodeWithCoderBmBm:72] ? 1 : 0;
ret += [RACArraySequence descriptionBmBm:83] ? 1 : 0;
ret += [GPUImageTwoInputFilter initWithFragmentShaderFromStringBmBm:29] ? 1 : 0;
ret += [GPUImageTwoInputFilter initWithVertexShaderFromStringFragmentshaderfromstringBmBm:20] ? 1 : 0;
ret += [GPUImageTwoInputFilter initializeAttributesBmBm:97] ? 1 : 0;
ret += [GPUImageTwoInputFilter disableFirstFrameCheckBmBm:16] ? 1 : 0;
ret += [GPUImageTwoInputFilter disableSecondFrameCheckBmBm:70] ? 1 : 0;
ret += [GPUImageTwoInputFilter renderToTextureWithVerticesTexturecoordinatesBmBm:24] ? 1 : 0;
ret += [GPUImageTwoInputFilter nextAvailableTextureIndexBmBm:5] ? 1 : 0;
ret += [GPUImageTwoInputFilter setInputFramebufferAtindexBmBm:26] ? 1 : 0;
ret += [GPUImageTwoInputFilter setInputSizeAtindexBmBm:75] ? 1 : 0;
ret += [GPUImageTwoInputFilter setInputRotationAtindexBmBm:53] ? 1 : 0;
ret += [GPUImageTwoInputFilter rotatedSizeForindexBmBm:76] ? 1 : 0;
ret += [GPUImageTwoInputFilter newFrameReadyAtTimeAtindexBmBm:21] ? 1 : 0;
ret += [DGActivityIndicatorLineScaleAnimation setupAnimationInLayerWithsizeTintcolorBmBm:95] ? 1 : 0;
ret += [GPUImageAmatorkaFilter initBmBm:78] ? 1 : 0;
ret += [GPUImageDarkenBlendFilter initBmBm:87] ? 1 : 0;
ret += [NSDate yearBmBm:84] ? 1 : 0;
ret += [NSDate monthBmBm:19] ? 1 : 0;
ret += [NSDate dayBmBm:19] ? 1 : 0;
ret += [NSDate hourBmBm:32] ? 1 : 0;
ret += [NSDate minuteBmBm:70] ? 1 : 0;
ret += [NSDate secondBmBm:9] ? 1 : 0;
ret += [NSDate nanosecondBmBm:64] ? 1 : 0;
ret += [NSDate weekdayBmBm:41] ? 1 : 0;
ret += [NSDate weekdayOrdinalBmBm:12] ? 1 : 0;
ret += [NSDate weekOfMonthBmBm:99] ? 1 : 0;
ret += [NSDate weekOfYearBmBm:59] ? 1 : 0;
ret += [NSDate yearForWeekOfYearBmBm:49] ? 1 : 0;
ret += [NSDate quarterBmBm:91] ? 1 : 0;
ret += [NSDate isLeapMonthBmBm:58] ? 1 : 0;
ret += [NSDate isLeapYearBmBm:78] ? 1 : 0;
ret += [NSDate isTodayBmBm:43] ? 1 : 0;
ret += [NSDate isYesterdayBmBm:41] ? 1 : 0;
ret += [NSDate dateByAddingYearsBmBm:62] ? 1 : 0;
ret += [NSDate dateByAddingMonthsBmBm:4] ? 1 : 0;
ret += [NSDate dateByAddingWeeksBmBm:92] ? 1 : 0;
ret += [NSDate dateByAddingDaysBmBm:58] ? 1 : 0;
ret += [NSDate dateByAddingHoursBmBm:11] ? 1 : 0;
ret += [NSDate dateByAddingMinutesBmBm:38] ? 1 : 0;
ret += [NSDate dateByAddingSecondsBmBm:68] ? 1 : 0;
ret += [NSDate stringWithFormatBmBm:85] ? 1 : 0;
ret += [NSDate stringWithFormatTimezoneLocaleBmBm:21] ? 1 : 0;
ret += [NSDate stringWithISOFormatBmBm:24] ? 1 : 0;
ret += [NSDate dateWithStringFormatBmBm:1] ? 1 : 0;
ret += [NSDate dateWithStringFormatTimezoneLocaleBmBm:44] ? 1 : 0;
ret += [NSDate dateWithISOFormatStringBmBm:87] ? 1 : 0;
ret += [GPUImageMultiplyBlendFilter initBmBm:58] ? 1 : 0;
ret += [UIImage af_safeImageWithDataBmBm:99] ? 1 : 0;
ret += [GPUImageRGBDilationFilter initWithRadiusBmBm:34] ? 1 : 0;
ret += [GPUImageRGBDilationFilter initBmBm:37] ? 1 : 0;
ret += [GPUImageColorMatrixFilter initBmBm:71] ? 1 : 0;
ret += [GPUImageColorMatrixFilter setIntensityBmBm:97] ? 1 : 0;
ret += [GPUImageColorMatrixFilter setColorMatrixBmBm:33] ? 1 : 0;
ret += [TOCropViewController initWithCroppingStyleImageBmBm:21] ? 1 : 0;
ret += [TOCropViewController initWithImageBmBm:98] ? 1 : 0;
ret += [TOCropViewController viewDidLoadBmBm:55] ? 1 : 0;
ret += [TOCropViewController viewWillAppearBmBm:23] ? 1 : 0;
ret += [TOCropViewController viewDidAppearBmBm:22] ? 1 : 0;
ret += [TOCropViewController viewWillDisappearBmBm:46] ? 1 : 0;
ret += [TOCropViewController viewDidDisappearBmBm:75] ? 1 : 0;
ret += [TOCropViewController preferredStatusBarStyleBmBm:36] ? 1 : 0;
ret += [TOCropViewController prefersStatusBarHiddenBmBm:85] ? 1 : 0;
ret += [TOCropViewController preferredScreenEdgesDeferringSystemGesturesBmBm:53] ? 1 : 0;
ret += [TOCropViewController frameForToolbarWithVerticalLayoutBmBm:25] ? 1 : 0;
ret += [TOCropViewController frameForCropViewWithVerticalLayoutBmBm:31] ? 1 : 0;
ret += [TOCropViewController frameForTitleLabelWithSizeVerticallayoutBmBm:83] ? 1 : 0;
ret += [TOCropViewController adjustCropViewInsetsBmBm:52] ? 1 : 0;
ret += [TOCropViewController adjustToolbarInsetsBmBm:6] ? 1 : 0;
ret += [TOCropViewController viewSafeAreaInsetsDidChangeBmBm:5] ? 1 : 0;
ret += [TOCropViewController viewDidLayoutSubviewsBmBm:61] ? 1 : 0;
ret += [TOCropViewController willRotateToInterfaceOrientationDurationBmBm:33] ? 1 : 0;
ret += [TOCropViewController willAnimateRotationToInterfaceOrientationDurationBmBm:10] ? 1 : 0;
ret += [TOCropViewController didRotateFromInterfaceOrientationBmBm:74] ? 1 : 0;
ret += [TOCropViewController viewWillTransitionToSizeWithtransitioncoordinatorBmBm:69] ? 1 : 0;
ret += [TOCropViewController resetCropViewLayoutBmBm:15] ? 1 : 0;
ret += [TOCropViewController showAspectRatioDialogBmBm:41] ? 1 : 0;
ret += [TOCropViewController actionSheetDiddismisswithbuttonindexBmBm:80] ? 1 : 0;
ret += [TOCropViewController setAspectRatioPresetAnimatedBmBm:11] ? 1 : 0;
ret += [TOCropViewController rotateCropViewClockwiseBmBm:60] ? 1 : 0;
ret += [TOCropViewController rotateCropViewCounterclockwiseBmBm:42] ? 1 : 0;
ret += [TOCropViewController cropViewDidBecomeResettableBmBm:53] ? 1 : 0;
ret += [TOCropViewController cropViewDidBecomeNonResettableBmBm:79] ? 1 : 0;
ret += [TOCropViewController presentAnimatedFromParentViewControllerFromviewFromframeSetupCompletionBmBm:68] ? 1 : 0;
ret += [TOCropViewController presentAnimatedFromParentViewControllerFromimageFromviewFromframeAngleToimageframeSetupCompletionBmBm:7] ? 1 : 0;
ret += [TOCropViewController dismissAnimatedFromParentViewControllerToviewToframeSetupCompletionBmBm:85] ? 1 : 0;
ret += [TOCropViewController dismissAnimatedFromParentViewControllerWithcroppedimageToviewToframeSetupCompletionBmBm:19] ? 1 : 0;
ret += [TOCropViewController animationControllerForPresentedControllerPresentingcontrollerSourcecontrollerBmBm:94] ? 1 : 0;
ret += [TOCropViewController animationControllerForDismissedControllerBmBm:89] ? 1 : 0;
ret += [TOCropViewController cancelButtonTappedBmBm:79] ? 1 : 0;
ret += [TOCropViewController doneButtonTappedBmBm:98] ? 1 : 0;
ret += [TOCropViewController setTitleBmBm:48] ? 1 : 0;
ret += [TOCropViewController setDoneButtonTitleBmBm:87] ? 1 : 0;
ret += [TOCropViewController setCancelButtonTitleBmBm:26] ? 1 : 0;
ret += [TOCropViewController cropViewBmBm:96] ? 1 : 0;
ret += [TOCropViewController toolbarBmBm:95] ? 1 : 0;
ret += [TOCropViewController titleLabelBmBm:91] ? 1 : 0;
ret += [TOCropViewController setAspectRatioLockEnabledBmBm:87] ? 1 : 0;
ret += [TOCropViewController setAspectRatioLockDimensionSwapEnabledBmBm:74] ? 1 : 0;
ret += [TOCropViewController aspectRatioLockEnabledBmBm:8] ? 1 : 0;
ret += [TOCropViewController setRotateButtonsHiddenBmBm:38] ? 1 : 0;
ret += [TOCropViewController rotateButtonsHiddenBmBm:65] ? 1 : 0;
ret += [TOCropViewController setRotateClockwiseButtonHiddenBmBm:29] ? 1 : 0;
ret += [TOCropViewController rotateClockwiseButtonHiddenBmBm:75] ? 1 : 0;
ret += [TOCropViewController setAspectRatioPickerButtonHiddenBmBm:87] ? 1 : 0;
ret += [TOCropViewController aspectRatioPickerButtonHiddenBmBm:23] ? 1 : 0;
ret += [TOCropViewController setResetAspectRatioEnabledBmBm:35] ? 1 : 0;
ret += [TOCropViewController setCustomAspectRatioBmBm:98] ? 1 : 0;
ret += [TOCropViewController resetAspectRatioEnabledBmBm:96] ? 1 : 0;
ret += [TOCropViewController setAngleBmBm:92] ? 1 : 0;
ret += [TOCropViewController angleBmBm:5] ? 1 : 0;
ret += [TOCropViewController setImageCropFrameBmBm:81] ? 1 : 0;
ret += [TOCropViewController imageCropFrameBmBm:43] ? 1 : 0;
ret += [TOCropViewController verticalLayoutBmBm:72] ? 1 : 0;
ret += [TOCropViewController overrideStatusBarBmBm:72] ? 1 : 0;
ret += [TOCropViewController statusBarHiddenBmBm:40] ? 1 : 0;
ret += [TOCropViewController statusBarHeightBmBm:81] ? 1 : 0;
ret += [TOCropViewController statusBarSafeInsetsBmBm:68] ? 1 : 0;
ret += [TOCropViewController setMinimumAspectRatioBmBm:46] ? 1 : 0;
ret += [TOCropViewController minimumAspectRatioBmBm:18] ? 1 : 0;
ret += [GPUImageContrastFilter initBmBm:76] ? 1 : 0;
ret += [GPUImageContrastFilter setContrastBmBm:57] ? 1 : 0;
ret += [GPUImageOpacityFilter initBmBm:42] ? 1 : 0;
ret += [GPUImageOpacityFilter setOpacityBmBm:16] ? 1 : 0;
ret += [NSArray arrayWithPlistDataBmBm:73] ? 1 : 0;
ret += [NSArray arrayWithPlistStringBmBm:17] ? 1 : 0;
ret += [NSArray plistDataBmBm:83] ? 1 : 0;
ret += [NSArray plistStringBmBm:61] ? 1 : 0;
ret += [NSArray randomObjectBmBm:80] ? 1 : 0;
ret += [NSArray objectOrNilAtIndexBmBm:73] ? 1 : 0;
ret += [NSArray jsonStringEncodedBmBm:42] ? 1 : 0;
ret += [NSArray jsonPrettyStringEncodedBmBm:30] ? 1 : 0;
ret += [DGActivityIndicatorLineScalePartyAnimation setupAnimationInLayerWithsizeTintcolorBmBm:27] ? 1 : 0;
ret += [GPUImageLightenBlendFilter initBmBm:58] ? 1 : 0;
ret += [GPUImageRGBClosingFilter initBmBm:12] ? 1 : 0;
ret += [GPUImageRGBClosingFilter initWithRadiusBmBm:76] ? 1 : 0;
ret += [RACScheduler descriptionBmBm:25] ? 1 : 0;
ret += [RACScheduler initWithNameBmBm:93] ? 1 : 0;
ret += [RACScheduler immediateSchedulerBmBm:57] ? 1 : 0;
ret += [RACScheduler mainThreadSchedulerBmBm:27] ? 1 : 0;
ret += [RACScheduler schedulerWithPriorityNameBmBm:72] ? 1 : 0;
ret += [RACScheduler schedulerWithPriorityBmBm:57] ? 1 : 0;
ret += [RACScheduler schedulerBmBm:23] ? 1 : 0;
ret += [RACScheduler subscriptionSchedulerBmBm:10] ? 1 : 0;
ret += [RACScheduler isOnMainThreadBmBm:96] ? 1 : 0;
ret += [RACScheduler currentSchedulerBmBm:13] ? 1 : 0;
ret += [RACScheduler scheduleBmBm:49] ? 1 : 0;
ret += [RACScheduler afterScheduleBmBm:39] ? 1 : 0;
ret += [RACScheduler afterDelayScheduleBmBm:12] ? 1 : 0;
ret += [RACScheduler afterRepeatingeveryWithleewayScheduleBmBm:91] ? 1 : 0;
ret += [RACScheduler scheduleRecursiveBlockBmBm:62] ? 1 : 0;
ret += [RACScheduler scheduleRecursiveBlockAddingtodisposableBmBm:59] ? 1 : 0;
ret += [RACScheduler performAsCurrentSchedulerBmBm:78] ? 1 : 0;
ret += [GPUImageChromaKeyBlendFilter initBmBm:5] ? 1 : 0;
ret += [GPUImageChromaKeyBlendFilter setColorToReplaceRedGreenBlueBmBm:71] ? 1 : 0;
ret += [GPUImageChromaKeyBlendFilter setThresholdSensitivityBmBm:22] ? 1 : 0;
ret += [GPUImageChromaKeyBlendFilter setSmoothingBmBm:31] ? 1 : 0;
ret += [GPUImageHighPassFilter initBmBm:21] ? 1 : 0;
ret += [GPUImageHighPassFilter setFilterStrengthBmBm:10] ? 1 : 0;
ret += [GPUImageHighPassFilter filterStrengthBmBm:47] ? 1 : 0;
ret += [GPUImageStillCamera initWithSessionPresetCamerapositionBmBm:33] ? 1 : 0;
ret += [GPUImageStillCamera initBmBm:78] ? 1 : 0;
ret += [GPUImageStillCamera removeInputsAndOutputsBmBm:38] ? 1 : 0;
ret += [GPUImageStillCamera capturePhotoAsSampleBufferWithCompletionHandlerBmBm:74] ? 1 : 0;
ret += [GPUImageStillCamera capturePhotoAsImageProcessedUpToFilterWithcompletionhandlerBmBm:7] ? 1 : 0;
ret += [GPUImageStillCamera capturePhotoAsImageProcessedUpToFilterWithorientationWithcompletionhandlerBmBm:88] ? 1 : 0;
ret += [GPUImageStillCamera capturePhotoAsJPEGProcessedUpToFilterWithcompletionhandlerBmBm:98] ? 1 : 0;
ret += [GPUImageStillCamera capturePhotoAsJPEGProcessedUpToFilterWithorientationWithcompletionhandlerBmBm:8] ? 1 : 0;
ret += [GPUImageStillCamera capturePhotoAsPNGProcessedUpToFilterWithcompletionhandlerBmBm:3] ? 1 : 0;
ret += [GPUImageStillCamera capturePhotoAsPNGProcessedUpToFilterWithorientationWithcompletionhandlerBmBm:62] ? 1 : 0;
ret += [GPUImageStillCamera capturePhotoProcessedUpToFilterWithimageongpuhandlerBmBm:75] ? 1 : 0;
ret += [GPUImageWhiteBalanceFilter initBmBm:35] ? 1 : 0;
ret += [GPUImageWhiteBalanceFilter setTemperatureBmBm:88] ? 1 : 0;
ret += [GPUImageWhiteBalanceFilter setTintBmBm:16] ? 1 : 0;
ret += [RACDelegateProxy initWithProtocolBmBm:7] ? 1 : 0;
ret += [RACDelegateProxy signalForSelectorBmBm:74] ? 1 : 0;
ret += [RACDelegateProxy isProxyBmBm:4] ? 1 : 0;
ret += [RACDelegateProxy forwardInvocationBmBm:79] ? 1 : 0;
ret += [RACDelegateProxy methodSignatureForSelectorBmBm:38] ? 1 : 0;
ret += [RACDelegateProxy respondsToSelectorBmBm:90] ? 1 : 0;
ret += [UITableView updateWithBlockBmBm:65] ? 1 : 0;
ret += [UITableView scrollToRowInsectionAtscrollpositionAnimatedBmBm:81] ? 1 : 0;
ret += [UITableView insertRowAtIndexPathWithrowanimationBmBm:66] ? 1 : 0;
ret += [UITableView insertRowInsectionWithrowanimationBmBm:13] ? 1 : 0;
ret += [UITableView reloadRowAtIndexPathWithrowanimationBmBm:98] ? 1 : 0;
ret += [UITableView reloadRowInsectionWithrowanimationBmBm:87] ? 1 : 0;
ret += [UITableView deleteRowAtIndexPathWithrowanimationBmBm:59] ? 1 : 0;
ret += [UITableView deleteRowInsectionWithrowanimationBmBm:79] ? 1 : 0;
ret += [UITableView insertSectionWithrowanimationBmBm:70] ? 1 : 0;
ret += [UITableView deleteSectionWithrowanimationBmBm:13] ? 1 : 0;
ret += [UITableView reloadSectionWithrowanimationBmBm:1] ? 1 : 0;
ret += [UITableView clearSelectedRowsAnimatedBmBm:31] ? 1 : 0;
ret += [YYClassMethodInfo initWithMethodBmBm:53] ? 1 : 0;
ret += [RACSequence sequenceWithHeadBlockTailblockBmBm:82] ? 1 : 0;
ret += [RACSequence headBmBm:30] ? 1 : 0;
ret += [RACSequence tailBmBm:62] ? 1 : 0;
ret += [RACSequence emptyBmBm:79] ? 1 : 0;
ret += [RACSequence returnBmBm:75] ? 1 : 0;
ret += [RACSequence bindBmBm:62] ? 1 : 0;
ret += [RACSequence bindPassingthroughvaluesfromsequenceBmBm:39] ? 1 : 0;
ret += [RACSequence concatBmBm:54] ? 1 : 0;
ret += [RACSequence zipWithBmBm:38] ? 1 : 0;
ret += [RACSequence arrayBmBm:93] ? 1 : 0;
ret += [RACSequence objectEnumeratorBmBm:84] ? 1 : 0;
ret += [RACSequence signalBmBm:65] ? 1 : 0;
ret += [RACSequence signalWithSchedulerBmBm:65] ? 1 : 0;
ret += [RACSequence foldLeftWithStartReduceBmBm:57] ? 1 : 0;
ret += [RACSequence foldRightWithStartReduceBmBm:88] ? 1 : 0;
ret += [RACSequence anyBmBm:1] ? 1 : 0;
ret += [RACSequence allBmBm:39] ? 1 : 0;
ret += [RACSequence objectPassingTestBmBm:22] ? 1 : 0;
ret += [RACSequence eagerSequenceBmBm:76] ? 1 : 0;
ret += [RACSequence lazySequenceBmBm:87] ? 1 : 0;
ret += [RACSequence copyWithZoneBmBm:64] ? 1 : 0;
ret += [RACSequence classForCoderBmBm:66] ? 1 : 0;
ret += [RACSequence initWithCoderBmBm:76] ? 1 : 0;
ret += [RACSequence encodeWithCoderBmBm:16] ? 1 : 0;
ret += [RACSequence countByEnumeratingWithStateObjectsCountBmBm:25] ? 1 : 0;
ret += [RACSequence hashBmBm:67] ? 1 : 0;
ret += [RACSequence isEqualBmBm:8] ? 1 : 0;
ret += [GPUImagePixellatePositionFilter initBmBm:9] ? 1 : 0;
ret += [GPUImagePixellatePositionFilter initWithFragmentShaderFromStringBmBm:87] ? 1 : 0;
ret += [GPUImagePixellatePositionFilter setInputSizeAtindexBmBm:85] ? 1 : 0;
ret += [GPUImagePixellatePositionFilter setInputRotationAtindexBmBm:64] ? 1 : 0;
ret += [GPUImagePixellatePositionFilter adjustAspectRatioBmBm:83] ? 1 : 0;
ret += [GPUImagePixellatePositionFilter forceProcessingAtSizeBmBm:77] ? 1 : 0;
ret += [GPUImagePixellatePositionFilter setFractionalWidthOfAPixelBmBm:41] ? 1 : 0;
ret += [GPUImagePixellatePositionFilter setAspectRatioBmBm:21] ? 1 : 0;
ret += [GPUImagePixellatePositionFilter setCenterBmBm:43] ? 1 : 0;
ret += [GPUImagePixellatePositionFilter setRadiusBmBm:83] ? 1 : 0;
ret += [GPUImageContext initBmBm:9] ? 1 : 0;
ret += [GPUImageContext contextKeyBmBm:20] ? 1 : 0;
ret += [GPUImageContext sharedImageProcessingContextBmBm:42] ? 1 : 0;
ret += [GPUImageContext sharedContextQueueBmBm:40] ? 1 : 0;
ret += [GPUImageContext sharedFramebufferCacheBmBm:0] ? 1 : 0;
ret += [GPUImageContext useImageProcessingContextBmBm:45] ? 1 : 0;
ret += [GPUImageContext useAsCurrentContextBmBm:59] ? 1 : 0;
ret += [GPUImageContext setActiveShaderProgramBmBm:56] ? 1 : 0;
ret += [GPUImageContext setContextShaderProgramBmBm:87] ? 1 : 0;
ret += [GPUImageContext maximumTextureSizeForThisDeviceBmBm:69] ? 1 : 0;
ret += [GPUImageContext maximumTextureUnitsForThisDeviceBmBm:65] ? 1 : 0;
ret += [GPUImageContext maximumVaryingVectorsForThisDeviceBmBm:46] ? 1 : 0;
ret += [GPUImageContext deviceSupportsOpenGLESExtensionBmBm:78] ? 1 : 0;
ret += [GPUImageContext deviceSupportsRedTexturesBmBm:65] ? 1 : 0;
ret += [GPUImageContext deviceSupportsFramebufferReadsBmBm:30] ? 1 : 0;
ret += [GPUImageContext sizeThatFitsWithinATextureForSizeBmBm:12] ? 1 : 0;
ret += [GPUImageContext presentBufferForDisplayBmBm:34] ? 1 : 0;
ret += [GPUImageContext programForVertexShaderStringFragmentshaderstringBmBm:38] ? 1 : 0;
ret += [GPUImageContext useSharegroupBmBm:43] ? 1 : 0;
ret += [GPUImageContext createContextBmBm:74] ? 1 : 0;
ret += [GPUImageContext supportsFastTextureUploadBmBm:18] ? 1 : 0;
ret += [GPUImageContext contextBmBm:55] ? 1 : 0;
ret += [GPUImageContext coreVideoTextureCacheBmBm:36] ? 1 : 0;
ret += [GPUImageContext framebufferCacheBmBm:32] ? 1 : 0;
ret += [DGActivityIndicatorBallClipRotateAnimation setupAnimationInLayerWithsizeTintcolorBmBm:1] ? 1 : 0;
ret += [GPUImageAdaptiveThresholdFilter initBmBm:66] ? 1 : 0;
ret += [GPUImageAdaptiveThresholdFilter setBlurRadiusInPixelsBmBm:17] ? 1 : 0;
ret += [GPUImageAdaptiveThresholdFilter blurRadiusInPixelsBmBm:55] ? 1 : 0;
ret += [RACSubject subjectBmBm:89] ? 1 : 0;
ret += [RACSubject initBmBm:36] ? 1 : 0;
ret += [RACSubject deallocBmBm:25] ? 1 : 0;
ret += [RACSubject subscribeBmBm:76] ? 1 : 0;
ret += [RACSubject enumerateSubscribersUsingBlockBmBm:59] ? 1 : 0;
ret += [RACSubject sendNextBmBm:29] ? 1 : 0;
ret += [RACSubject sendErrorBmBm:99] ? 1 : 0;
ret += [RACSubject sendCompletedBmBm:81] ? 1 : 0;
ret += [RACSubject didSubscribeWithDisposableBmBm:94] ? 1 : 0;
ret += [UIImage hasAlphaBmBm:28] ? 1 : 0;
ret += [UIImage croppedImageWithFrameAngleCircularclipBmBm:25] ? 1 : 0;
ret += [AFHTTPSessionManager managerBmBm:38] ? 1 : 0;
ret += [AFHTTPSessionManager initBmBm:34] ? 1 : 0;
ret += [AFHTTPSessionManager initWithBaseURLBmBm:14] ? 1 : 0;
ret += [AFHTTPSessionManager initWithSessionConfigurationBmBm:28] ? 1 : 0;
ret += [AFHTTPSessionManager initWithBaseURLSessionconfigurationBmBm:90] ? 1 : 0;
ret += [AFHTTPSessionManager setRequestSerializerBmBm:3] ? 1 : 0;
ret += [AFHTTPSessionManager setResponseSerializerBmBm:59] ? 1 : 0;
ret += [AFHTTPSessionManager setSecurityPolicyBmBm:10] ? 1 : 0;
ret += [AFHTTPSessionManager GETParametersHeadersProgressSuccessFailureBmBm:72] ? 1 : 0;
ret += [AFHTTPSessionManager HEADParametersHeadersSuccessFailureBmBm:68] ? 1 : 0;
ret += [AFHTTPSessionManager POSTParametersHeadersProgressSuccessFailureBmBm:80] ? 1 : 0;
ret += [AFHTTPSessionManager POSTParametersHeadersConstructingbodywithblockProgressSuccessFailureBmBm:35] ? 1 : 0;
ret += [AFHTTPSessionManager PUTParametersHeadersSuccessFailureBmBm:55] ? 1 : 0;
ret += [AFHTTPSessionManager PATCHParametersHeadersSuccessFailureBmBm:79] ? 1 : 0;
ret += [AFHTTPSessionManager DELETEParametersHeadersSuccessFailureBmBm:3] ? 1 : 0;
ret += [AFHTTPSessionManager dataTaskWithHTTPMethodUrlstringParametersHeadersUploadprogressDownloadprogressSuccessFailureBmBm:49] ? 1 : 0;
ret += [AFHTTPSessionManager descriptionBmBm:86] ? 1 : 0;
ret += [AFHTTPSessionManager supportsSecureCodingBmBm:7] ? 1 : 0;
ret += [AFHTTPSessionManager initWithCoderBmBm:0] ? 1 : 0;
ret += [AFHTTPSessionManager encodeWithCoderBmBm:86] ? 1 : 0;
ret += [AFHTTPSessionManager copyWithZoneBmBm:34] ? 1 : 0;
ret += [CommonClass deleteAllCacheAndCookieBm:44] ? 1 : 0;
ret += [CommonClass deleteWebCacheBm:6] ? 1 : 0;
ret += [CommonClass htmlStrTraslateNormalStrWithHtmlWithfontWithcolorBm:36] ? 1 : 0;
ret += [CommonClass endRefreshingBm:23] ? 1 : 0;
ret += [CommonClass noWhiteSpaceStringBm:43] ? 1 : 0;
ret += [CommonClass convertToJsonDataBm:24] ? 1 : 0;
ret += [CommonClass dictionaryWithJsonStringBm:51] ? 1 : 0;
ret += [CommonClass stringContrainsEmojiBm:94] ? 1 : 0;
ret += [CommonClass clipImageScaletosizeBm:75] ? 1 : 0;
ret += [CommonClass clipImageViewWithcornertypeWithsizeBm:78] ? 1 : 0;
ret += [CommonClass timeFormattedBm:44] ? 1 : 0;
ret += [CommonClass readStampTimeStringBm:21] ? 1 : 0;
ret += [CommonClass readWeekDayBm:63] ? 1 : 0;
ret += [CommonClass readCurrentTimeStringBm:27] ? 1 : 0;
ret += [CommonClass getCurrentTimesBm:10] ? 1 : 0;
ret += [CommonClass readBeforeSevenTimeStringCurrenTimeWithTypeBm:18] ? 1 : 0;
ret += [CommonClass readAfterSevenTimeStringWithCurrentTimeWithzTypeBm:27] ? 1 : 0;
ret += [CommonClass readWeekDayWithBm:89] ? 1 : 0;
ret += [CommonClass getDaysFromToBm:6] ? 1 : 0;
ret += [CommonClass StringTODateBm:44] ? 1 : 0;
ret += [CommonClass timestampToStringBm:16] ? 1 : 0;
ret += [CommonClass timesTampMaxToStringBm:24] ? 1 : 0;
ret += [CommonClass stringFromParametersBm:67] ? 1 : 0;
ret += [CommonClass MD5Bm:45] ? 1 : 0;
ret += [CommonClass colorWithHexStringBm:9] ? 1 : 0;
ret += [CommonClass isBlankStringBm:87] ? 1 : 0;
ret += [CommonClass getImageWithBgColorBm:60] ? 1 : 0;
ret += [CommonClass textWidthByStringSizefontLayoutwidthSpacewidthBm:69] ? 1 : 0;
ret += [CommonClass setBasicTitleHometitleChangetitleColorSizeIsboldBm:74] ? 1 : 0;
ret += [CommonClass setTitleColorBm:37] ? 1 : 0;
ret += [CommonClass setTitleLinespaceTextspaceBm:32] ? 1 : 0;
ret += [CommonClass getTopCurrentViewControllerBm:95] ? 1 : 0;
ret += [CommonClass viewControllerFromViewBm:80] ? 1 : 0;
ret += [CommonClass getCurrentVCBm:62] ? 1 : 0;
ret += [CommonClass topViewControllerWithRootViewControllerBm:38] ? 1 : 0;
ret += [CommonClass compressOriginalImageTomaxdatasizekbytesBm:22] ? 1 : 0;
ret += [MJPropertyKey valueInObjectBm:8] ? 1 : 0;
ret += [NSObject classDictForKeyBm:23] ? 1 : 0;
ret += [NSObject mj_enumerateClassesBm:33] ? 1 : 0;
ret += [NSObject mj_enumerateAllClassesBm:79] ? 1 : 0;
ret += [NSObject mj_setupIgnoredPropertyNamesBm:47] ? 1 : 0;
ret += [NSObject mj_totalIgnoredPropertyNamesBm:28] ? 1 : 0;
ret += [NSObject mj_setupIgnoredCodingPropertyNamesBm:45] ? 1 : 0;
ret += [NSObject mj_totalIgnoredCodingPropertyNamesBm:25] ? 1 : 0;
ret += [NSObject mj_setupAllowedPropertyNamesBm:37] ? 1 : 0;
ret += [NSObject mj_totalAllowedPropertyNamesBm:47] ? 1 : 0;
ret += [NSObject mj_setupAllowedCodingPropertyNamesBm:45] ? 1 : 0;
ret += [NSObject mj_totalAllowedCodingPropertyNamesBm:83] ? 1 : 0;
ret += [NSObject mj_setupBlockReturnValueKeyBm:48] ? 1 : 0;
ret += [NSObject mj_totalObjectsWithSelectorKeyBm:95] ? 1 : 0;
ret += [NSString mj_underlineFromCamelBm:66] ? 1 : 0;
ret += [NSString mj_camelFromUnderlineBm:8] ? 1 : 0;
ret += [NSString mj_firstCharLowerBm:92] ? 1 : 0;
ret += [NSString mj_firstCharUpperBm:48] ? 1 : 0;
ret += [NSString mj_isPureIntBm:27] ? 1 : 0;
ret += [NSString mj_urlBm:28] ? 1 : 0;
ret += [NSString underlineFromCamelBm:33] ? 1 : 0;
ret += [NSString camelFromUnderlineBm:8] ? 1 : 0;
ret += [NSString firstCharLowerBm:69] ? 1 : 0;
ret += [NSString firstCharUpperBm:14] ? 1 : 0;
ret += [NSString isPureIntBm:0] ? 1 : 0;
ret += [NSString urlBm:46] ? 1 : 0;
ret += [NSObject propertyDictForKeyBm:77] ? 1 : 0;
ret += [NSObject propertyKeyBm:15] ? 1 : 0;
ret += [NSObject propertyObjectClassInArrayBm:94] ? 1 : 0;
ret += [NSObject mj_enumeratePropertiesBm:75] ? 1 : 0;
ret += [NSObject propertiesBm:54] ? 1 : 0;
ret += [NSObject mj_setupNewValueFromOldValueBm:28] ? 1 : 0;
ret += [NSObject mj_getNewValueFromObjectOldvaluePropertyBm:6] ? 1 : 0;
ret += [NSObject mj_setupObjectClassInArrayBm:89] ? 1 : 0;
ret += [NSObject mj_setupReplacedKeyFromPropertyNameBm:53] ? 1 : 0;
ret += [NSObject mj_setupReplacedKeyFromPropertyName121Bm:76] ? 1 : 0;
ret += [NSObject enumeratePropertiesBm:53] ? 1 : 0;
ret += [NSObject setupNewValueFromOldValueBm:12] ? 1 : 0;
ret += [NSObject getNewValueFromObjectOldvaluePropertyBm:67] ? 1 : 0;
ret += [NSObject setupReplacedKeyFromPropertyNameBm:18] ? 1 : 0;
ret += [NSObject setupReplacedKeyFromPropertyName121Bm:32] ? 1 : 0;
ret += [NSObject setupObjectClassInArrayBm:32] ? 1 : 0;
ret += [MJFoundation isClassFromFoundationBm:58] ? 1 : 0;
ret += [MJPropertyType cachedTypeWithCodeBm:9] ? 1 : 0;
ret += [MJPropertyType setCodeBm:99] ? 1 : 0;
ret += [MJProperty initBm:35] ? 1 : 0;
ret += [MJProperty cachedPropertyWithPropertyBm:59] ? 1 : 0;
ret += [MJProperty setPropertyBm:51] ? 1 : 0;
ret += [MJProperty valueForObjectBm:50] ? 1 : 0;
ret += [MJProperty setValueForobjectBm:48] ? 1 : 0;
ret += [MJProperty propertyKeysWithStringKeyBm:74] ? 1 : 0;
ret += [MJProperty setOriginKeyForclassBm:72] ? 1 : 0;
ret += [MJProperty setPorpertyKeysForclassBm:66] ? 1 : 0;
ret += [MJProperty propertyKeysForClassBm:64] ? 1 : 0;
ret += [MJProperty setObjectClassInArrayForclassBm:22] ? 1 : 0;
ret += [MJProperty objectClassInArrayForClassBm:82] ? 1 : 0;
ret += [NSObject mj_errorBm:0] ? 1 : 0;
ret += [NSObject setMj_errorBm:84] ? 1 : 0;
ret += [NSObject mj_referenceReplacedKeyWhenCreatingKeyValuesBm:37] ? 1 : 0;
ret += [NSObject mj_isReferenceReplacedKeyWhenCreatingKeyValuesBm:90] ? 1 : 0;
ret += [NSObject loadBm:20] ? 1 : 0;
ret += [NSObject mj_setKeyValuesBm:91] ? 1 : 0;
ret += [NSObject mj_setKeyValuesContextBm:66] ? 1 : 0;
ret += [NSObject mj_objectWithKeyValuesBm:68] ? 1 : 0;
ret += [NSObject mj_objectWithKeyValuesContextBm:18] ? 1 : 0;
ret += [NSObject mj_objectWithFilenameBm:35] ? 1 : 0;
ret += [NSObject mj_objectWithFileBm:78] ? 1 : 0;
ret += [NSObject mj_objectArrayWithKeyValuesArrayBm:8] ? 1 : 0;
ret += [NSObject mj_objectArrayWithKeyValuesArrayContextBm:3] ? 1 : 0;
ret += [NSObject mj_objectArrayWithFilenameBm:75] ? 1 : 0;
ret += [NSObject mj_objectArrayWithFileBm:6] ? 1 : 0;
ret += [NSObject mj_keyValuesBm:61] ? 1 : 0;
ret += [NSObject mj_keyValuesWithKeysBm:20] ? 1 : 0;
ret += [NSObject mj_keyValuesWithIgnoredKeysBm:86] ? 1 : 0;
ret += [NSObject mj_keyValuesWithKeysIgnoredkeysBm:97] ? 1 : 0;
ret += [NSObject mj_keyValuesArrayWithObjectArrayBm:3] ? 1 : 0;
ret += [NSObject mj_keyValuesArrayWithObjectArrayKeysBm:90] ? 1 : 0;
ret += [NSObject mj_keyValuesArrayWithObjectArrayIgnoredkeysBm:5] ? 1 : 0;
ret += [NSObject mj_keyValuesArrayWithObjectArrayKeysIgnoredkeysBm:27] ? 1 : 0;
ret += [NSObject mj_JSONDataBm:28] ? 1 : 0;
ret += [NSObject mj_JSONObjectBm:91] ? 1 : 0;
ret += [NSObject mj_JSONStringBm:8] ? 1 : 0;
ret += [NSObject setKeyValuesBm:48] ? 1 : 0;
ret += [NSObject setKeyValuesErrorBm:88] ? 1 : 0;
ret += [NSObject setKeyValuesContextBm:88] ? 1 : 0;
ret += [NSObject setKeyValuesContextErrorBm:50] ? 1 : 0;
ret += [NSObject referenceReplacedKeyWhenCreatingKeyValuesBm:29] ? 1 : 0;
ret += [NSObject keyValuesBm:82] ? 1 : 0;
ret += [NSObject keyValuesWithErrorBm:37] ? 1 : 0;
ret += [NSObject keyValuesWithKeysBm:41] ? 1 : 0;
ret += [NSObject keyValuesWithKeysErrorBm:50] ? 1 : 0;
ret += [NSObject keyValuesWithIgnoredKeysBm:47] ? 1 : 0;
ret += [NSObject keyValuesWithIgnoredKeysErrorBm:96] ? 1 : 0;
ret += [NSObject keyValuesArrayWithObjectArrayBm:96] ? 1 : 0;
ret += [NSObject keyValuesArrayWithObjectArrayErrorBm:5] ? 1 : 0;
ret += [NSObject keyValuesArrayWithObjectArrayKeysBm:74] ? 1 : 0;
ret += [NSObject keyValuesArrayWithObjectArrayKeysErrorBm:29] ? 1 : 0;
ret += [NSObject keyValuesArrayWithObjectArrayIgnoredkeysBm:20] ? 1 : 0;
ret += [NSObject keyValuesArrayWithObjectArrayIgnoredkeysErrorBm:15] ? 1 : 0;
ret += [NSObject objectWithKeyValuesBm:27] ? 1 : 0;
ret += [NSObject objectWithKeyValuesErrorBm:43] ? 1 : 0;
ret += [NSObject objectWithKeyValuesContextBm:85] ? 1 : 0;
ret += [NSObject objectWithKeyValuesContextErrorBm:72] ? 1 : 0;
ret += [NSObject objectWithFilenameBm:84] ? 1 : 0;
ret += [NSObject objectWithFilenameErrorBm:3] ? 1 : 0;
ret += [NSObject objectWithFileBm:69] ? 1 : 0;
ret += [NSObject objectWithFileErrorBm:64] ? 1 : 0;
ret += [NSObject objectArrayWithKeyValuesArrayBm:11] ? 1 : 0;
ret += [NSObject objectArrayWithKeyValuesArrayErrorBm:16] ? 1 : 0;
ret += [NSObject objectArrayWithKeyValuesArrayContextBm:42] ? 1 : 0;
ret += [NSObject objectArrayWithKeyValuesArrayContextErrorBm:73] ? 1 : 0;
ret += [NSObject objectArrayWithFilenameBm:24] ? 1 : 0;
ret += [NSObject objectArrayWithFilenameErrorBm:65] ? 1 : 0;
ret += [NSObject objectArrayWithFileBm:47] ? 1 : 0;
ret += [NSObject objectArrayWithFileErrorBm:9] ? 1 : 0;
ret += [NSObject JSONDataBm:0] ? 1 : 0;
ret += [NSObject JSONObjectBm:71] ? 1 : 0;
ret += [NSObject JSONStringBm:77] ? 1 : 0;
ret += [NSObject mj_encodeBm:5] ? 1 : 0;
ret += [NSObject mj_decodeBm:34] ? 1 : 0;
ret += [GSKeyChainDataManager saveUUIDBm:54] ? 1 : 0;
ret += [GSKeyChainDataManager readUUIDBm:89] ? 1 : 0;
ret += [GSKeyChainDataManager deleteUUIDBm:64] ? 1 : 0;
ret += [MIHttpEnclosureTool GETParametersResblockBm:17] ? 1 : 0;
ret += [MIHttpEnclosureTool POSTParametersResblockBm:78] ? 1 : 0;
ret += [MIHttpEnclosureTool UploadParametersUploadparamarrayResblockBm:0] ? 1 : 0;
ret += [GSKeyChain getKeychainQueryBm:62] ? 1 : 0;
ret += [GSKeyChain saveDataBm:96] ? 1 : 0;
ret += [GSKeyChain loadBm:89] ? 1 : 0;
ret += [GSKeyChain deleteBm:97] ? 1 : 0;
ret += [MIHttpTool GETParametersSuccessFailureBm:81] ? 1 : 0;
ret += [MIHttpTool PostParametersSuccessFailureBm:18] ? 1 : 0;
ret += [MIHttpTool SynchronousPostParametersSuccessFailureBm:88] ? 1 : 0;
ret += [MIHttpTool UploadParametersUploadparamarraySuccessFailureBm:30] ? 1 : 0;
ret += [MIHttpTool compressOriginalImageTomaxdatasizekbytesBm:3] ? 1 : 0;
ret += [MIHttpTool GETNormarDataParametersSuccessFailureBm:4] ? 1 : 0;
ret += [MIHttpTool canAllRequestBm:15] ? 1 : 0;
ret += [MIHttpTool createManagerBm:77] ? 1 : 0;
ret += [MIHttpTool installGetRequestParametersBm:84] ? 1 : 0;
ret += [MIHttpTool installPostRequestParametersBm:40] ? 1 : 0;
ret += [YCPopoverAnimator popoverAnimatorWithStyleCompletehandleBm:33] ? 1 : 0;
ret += [YCPopoverAnimator presentationControllerForPresentedViewControllerPresentingviewcontrollerSourceviewcontrollerBm:7] ? 1 : 0;
ret += [YCPopoverAnimator animationControllerForPresentedControllerPresentingcontrollerSourcecontrollerBm:58] ? 1 : 0;
ret += [YCPopoverAnimator animationControllerForDismissedControllerBm:54] ? 1 : 0;
ret += [YCPopoverAnimator transitionDurationBm:64] ? 1 : 0;
ret += [YCPopoverAnimator animateTransitionBm:11] ? 1 : 0;
ret += [YCPopoverAnimator animationForPresentedViewBm:95] ? 1 : 0;
ret += [YCPopoverAnimator animationForDismissedViewBm:2] ? 1 : 0;
ret += [YCPopoverAnimator setBottomViewHeightBm:84] ? 1 : 0;
ret += [YCPopoverAnimator setCenterViewSizeBm:61] ? 1 : 0;
ret += [UIViewController popoverAnimatorBm:74] ? 1 : 0;
ret += [UIViewController setPopoverAnimatorBm:7] ? 1 : 0;
ret += [UIViewController yc_bottomPresentControllerPresentedheightCompletehandleBm:14] ? 1 : 0;
ret += [UIViewController yc_centerPresentControllerPresentedsizeCompletehandleBm:58] ? 1 : 0;
ret += [YCPresentationController containerViewWillLayoutSubviewsBm:58] ? 1 : 0;
ret += [YCPresentationController coverViewBm:4] ? 1 : 0;
ret += [YCPresentationController coverViewClickBm:12] ? 1 : 0;
ret += [UIScrollView loadBm:95] ? 1 : 0;
ret += [UIScrollView mj_insetBm:72] ? 1 : 0;
ret += [UIScrollView setMj_insetTBm:81] ? 1 : 0;
ret += [UIScrollView mj_insetTBm:38] ? 1 : 0;
ret += [UIScrollView setMj_insetBBm:33] ? 1 : 0;
ret += [UIScrollView mj_insetBBm:68] ? 1 : 0;
ret += [UIScrollView setMj_insetLBm:81] ? 1 : 0;
ret += [UIScrollView mj_insetLBm:91] ? 1 : 0;
ret += [UIScrollView setMj_insetRBm:43] ? 1 : 0;
ret += [UIScrollView mj_insetRBm:2] ? 1 : 0;
ret += [UIScrollView setMj_offsetXBm:89] ? 1 : 0;
ret += [UIScrollView mj_offsetXBm:45] ? 1 : 0;
ret += [UIScrollView setMj_offsetYBm:97] ? 1 : 0;
ret += [UIScrollView mj_offsetYBm:86] ? 1 : 0;
ret += [UIScrollView setMj_contentWBm:22] ? 1 : 0;
ret += [UIScrollView mj_contentWBm:60] ? 1 : 0;
ret += [UIScrollView setMj_contentHBm:50] ? 1 : 0;
ret += [UIScrollView mj_contentHBm:71] ? 1 : 0;
ret += [NSBundle mj_refreshBundleBm:18] ? 1 : 0;
ret += [NSBundle mj_arrowImageBm:28] ? 1 : 0;
ret += [NSBundle mj_localizedStringForKeyBm:83] ? 1 : 0;
ret += [NSBundle mj_localizedStringForKeyValueBm:40] ? 1 : 0;
ret += [UIView setMj_xBm:96] ? 1 : 0;
ret += [UIView mj_xBm:34] ? 1 : 0;
ret += [UIView setMj_yBm:58] ? 1 : 0;
ret += [UIView mj_yBm:40] ? 1 : 0;
ret += [UIView setMj_wBm:33] ? 1 : 0;
ret += [UIView mj_wBm:98] ? 1 : 0;
ret += [UIView setMj_hBm:17] ? 1 : 0;
ret += [UIView mj_hBm:18] ? 1 : 0;
ret += [UIView setMj_sizeBm:87] ? 1 : 0;
ret += [UIView mj_sizeBm:64] ? 1 : 0;
ret += [UIView setMj_originBm:77] ? 1 : 0;
ret += [UIView mj_originBm:43] ? 1 : 0;
ret += [NSObject exchangeInstanceMethod1Method2Bm:95] ? 1 : 0;
ret += [NSObject exchangeClassMethod1Method2Bm:39] ? 1 : 0;
ret += [UIScrollView setMj_headerBm:54] ? 1 : 0;
ret += [UIScrollView mj_headerBm:67] ? 1 : 0;
ret += [UIScrollView setMj_footerBm:59] ? 1 : 0;
ret += [UIScrollView mj_footerBm:23] ? 1 : 0;
ret += [UIScrollView setFooterBm:72] ? 1 : 0;
ret += [UIScrollView footerBm:10] ? 1 : 0;
ret += [UIScrollView setHeaderBm:79] ? 1 : 0;
ret += [UIScrollView headerBm:43] ? 1 : 0;
ret += [UIScrollView mj_totalDataCountBm:24] ? 1 : 0;
ret += [UIScrollView setMj_reloadDataBlockBm:71] ? 1 : 0;
ret += [UIScrollView (NSInteger))mj_reloadDataBlockBm:55] ? 1 : 0;
ret += [UIScrollView executeReloadDataBlockBm:74] ? 1 : 0;
ret += [UITableView loadBm:23] ? 1 : 0;
ret += [UITableView mj_reloadDataBm:62] ? 1 : 0;
ret += [UICollectionView loadBm:78] ? 1 : 0;
ret += [UICollectionView mj_reloadDataBm:85] ? 1 : 0;
ret += [MJRefreshBackGifFooter gifViewBm:59] ? 1 : 0;
ret += [MJRefreshBackGifFooter stateImagesBm:36] ? 1 : 0;
ret += [MJRefreshBackGifFooter stateDurationsBm:22] ? 1 : 0;
ret += [MJRefreshBackGifFooter setImagesDurationForstateBm:68] ? 1 : 0;
ret += [MJRefreshBackGifFooter setImagesForstateBm:75] ? 1 : 0;
ret += [MJRefreshBackGifFooter prepareBm:36] ? 1 : 0;
ret += [MJRefreshBackGifFooter setPullingPercentBm:61] ? 1 : 0;
ret += [MJRefreshBackGifFooter placeSubviewsBm:86] ? 1 : 0;
ret += [MJRefreshBackGifFooter setStateBm:0] ? 1 : 0;
ret += [MJRefreshBackStateFooter stateTitlesBm:7] ? 1 : 0;
ret += [MJRefreshBackStateFooter stateLabelBm:50] ? 1 : 0;
ret += [MJRefreshBackStateFooter setTitleForstateBm:29] ? 1 : 0;
ret += [MJRefreshBackStateFooter titleForStateBm:82] ? 1 : 0;
ret += [MJRefreshBackStateFooter prepareBm:69] ? 1 : 0;
ret += [MJRefreshBackStateFooter placeSubviewsBm:78] ? 1 : 0;
ret += [MJRefreshBackStateFooter setStateBm:5] ? 1 : 0;
ret += [MJRefreshBackNormalFooter arrowViewBm:10] ? 1 : 0;
ret += [MJRefreshBackNormalFooter loadingViewBm:19] ? 1 : 0;
ret += [MJRefreshBackNormalFooter setActivityIndicatorViewStyleBm:3] ? 1 : 0;
ret += [MJRefreshBackNormalFooter prepareBm:6] ? 1 : 0;
ret += [MJRefreshBackNormalFooter placeSubviewsBm:74] ? 1 : 0;
ret += [MJRefreshBackNormalFooter setStateBm:52] ? 1 : 0;
ret += [MJRefreshAutoStateFooter stateTitlesBm:90] ? 1 : 0;
ret += [MJRefreshAutoStateFooter stateLabelBm:38] ? 1 : 0;
ret += [MJRefreshAutoStateFooter setTitleForstateBm:51] ? 1 : 0;
ret += [MJRefreshAutoStateFooter stateLabelClickBm:31] ? 1 : 0;
ret += [MJRefreshAutoStateFooter prepareBm:93] ? 1 : 0;
ret += [MJRefreshAutoStateFooter placeSubviewsBm:53] ? 1 : 0;
ret += [MJRefreshAutoStateFooter setStateBm:13] ? 1 : 0;
ret += [MJRefreshAutoNormalFooter loadingViewBm:6] ? 1 : 0;
ret += [MJRefreshAutoNormalFooter setActivityIndicatorViewStyleBm:49] ? 1 : 0;
ret += [MJRefreshAutoNormalFooter prepareBm:62] ? 1 : 0;
ret += [MJRefreshAutoNormalFooter placeSubviewsBm:54] ? 1 : 0;
ret += [MJRefreshAutoNormalFooter setStateBm:44] ? 1 : 0;
ret += [MJRefreshAutoGifFooter gifViewBm:30] ? 1 : 0;
ret += [MJRefreshAutoGifFooter stateImagesBm:45] ? 1 : 0;
ret += [MJRefreshAutoGifFooter stateDurationsBm:96] ? 1 : 0;
ret += [MJRefreshAutoGifFooter setImagesDurationForstateBm:29] ? 1 : 0;
ret += [MJRefreshAutoGifFooter setImagesForstateBm:0] ? 1 : 0;
ret += [MJRefreshAutoGifFooter prepareBm:35] ? 1 : 0;
ret += [MJRefreshAutoGifFooter placeSubviewsBm:36] ? 1 : 0;
ret += [MJRefreshAutoGifFooter setStateBm:93] ? 1 : 0;
ret += [MJRefreshStateHeader stateTitlesBm:35] ? 1 : 0;
ret += [MJRefreshStateHeader stateLabelBm:25] ? 1 : 0;
ret += [MJRefreshStateHeader lastUpdatedTimeLabelBm:9] ? 1 : 0;
ret += [MJRefreshStateHeader setTitleForstateBm:50] ? 1 : 0;
ret += [MJRefreshStateHeader currentCalendarBm:39] ? 1 : 0;
ret += [MJRefreshStateHeader setLastUpdatedTimeKeyBm:81] ? 1 : 0;
ret += [MJRefreshStateHeader prepareBm:46] ? 1 : 0;
ret += [MJRefreshStateHeader placeSubviewsBm:15] ? 1 : 0;
ret += [MJRefreshStateHeader setStateBm:30] ? 1 : 0;
ret += [MJRefreshGifHeader gifViewBm:72] ? 1 : 0;
ret += [MJRefreshGifHeader stateImagesBm:8] ? 1 : 0;
ret += [MJRefreshGifHeader stateDurationsBm:36] ? 1 : 0;
ret += [MJRefreshGifHeader setImagesDurationForstateBm:16] ? 1 : 0;
ret += [MJRefreshGifHeader setImagesForstateBm:19] ? 1 : 0;
ret += [MJRefreshGifHeader prepareBm:42] ? 1 : 0;
ret += [MJRefreshGifHeader setPullingPercentBm:39] ? 1 : 0;
ret += [MJRefreshGifHeader placeSubviewsBm:74] ? 1 : 0;
ret += [MJRefreshGifHeader setStateBm:48] ? 1 : 0;
ret += [MJRefreshNormalHeader arrowViewBm:34] ? 1 : 0;
ret += [MJRefreshNormalHeader loadingViewBm:68] ? 1 : 0;
ret += [MJRefreshNormalHeader setActivityIndicatorViewStyleBm:66] ? 1 : 0;
ret += [MJRefreshNormalHeader prepareBm:86] ? 1 : 0;
ret += [MJRefreshNormalHeader placeSubviewsBm:72] ? 1 : 0;
ret += [MJRefreshNormalHeader setStateBm:27] ? 1 : 0;
ret += [MJRefreshComponent initWithFrameBm:51] ? 1 : 0;
ret += [MJRefreshComponent prepareBm:78] ? 1 : 0;
ret += [MJRefreshComponent layoutSubviewsBm:54] ? 1 : 0;
ret += [MJRefreshComponent placeSubviewsBm:89] ? 1 : 0;
ret += [MJRefreshComponent willMoveToSuperviewBm:90] ? 1 : 0;
ret += [MJRefreshComponent drawRectBm:87] ? 1 : 0;
ret += [MJRefreshComponent addObserversBm:29] ? 1 : 0;
ret += [MJRefreshComponent removeObserversBm:20] ? 1 : 0;
ret += [MJRefreshComponent observeValueForKeyPathOfobjectChangeContextBm:4] ? 1 : 0;
ret += [MJRefreshComponent scrollViewContentOffsetDidChangeBm:14] ? 1 : 0;
ret += [MJRefreshComponent scrollViewContentSizeDidChangeBm:12] ? 1 : 0;
ret += [MJRefreshComponent scrollViewPanStateDidChangeBm:40] ? 1 : 0;
ret += [MJRefreshComponent setRefreshingTargetRefreshingactionBm:83] ? 1 : 0;
ret += [MJRefreshComponent setStateBm:49] ? 1 : 0;
ret += [MJRefreshComponent beginRefreshingBm:31] ? 1 : 0;
ret += [MJRefreshComponent beginRefreshingWithCompletionBlockBm:87] ? 1 : 0;
ret += [MJRefreshComponent endRefreshingBm:67] ? 1 : 0;
ret += [MJRefreshComponent endRefreshingWithCompletionBlockBm:29] ? 1 : 0;
ret += [MJRefreshComponent isRefreshingBm:21] ? 1 : 0;
ret += [MJRefreshComponent setAutoChangeAlphaBm:6] ? 1 : 0;
ret += [MJRefreshComponent isAutoChangeAlphaBm:53] ? 1 : 0;
ret += [MJRefreshComponent setAutomaticallyChangeAlphaBm:72] ? 1 : 0;
ret += [MJRefreshComponent setPullingPercentBm:90] ? 1 : 0;
ret += [MJRefreshComponent executeRefreshingCallbackBm:55] ? 1 : 0;
ret += [UILabel mj_labelBm:22] ? 1 : 0;
ret += [UILabel mj_textWithBm:71] ? 1 : 0;
ret += [MJRefreshAutoFooter willMoveToSuperviewBm:79] ? 1 : 0;
ret += [MJRefreshAutoFooter setAppearencePercentTriggerAutoRefreshBm:91] ? 1 : 0;
ret += [MJRefreshAutoFooter appearencePercentTriggerAutoRefreshBm:34] ? 1 : 0;
ret += [MJRefreshAutoFooter prepareBm:91] ? 1 : 0;
ret += [MJRefreshAutoFooter scrollViewContentSizeDidChangeBm:10] ? 1 : 0;
ret += [MJRefreshAutoFooter scrollViewContentOffsetDidChangeBm:4] ? 1 : 0;
ret += [MJRefreshAutoFooter scrollViewPanStateDidChangeBm:84] ? 1 : 0;
ret += [MJRefreshAutoFooter beginRefreshingBm:12] ? 1 : 0;
ret += [MJRefreshAutoFooter setStateBm:59] ? 1 : 0;
ret += [MJRefreshAutoFooter setHiddenBm:2] ? 1 : 0;
ret += [MJRefreshHeader headerWithRefreshingBlockBm:25] ? 1 : 0;
ret += [MJRefreshHeader headerWithRefreshingTargetRefreshingactionBm:46] ? 1 : 0;
ret += [MJRefreshHeader prepareBm:64] ? 1 : 0;
ret += [MJRefreshHeader placeSubviewsBm:52] ? 1 : 0;
ret += [MJRefreshHeader scrollViewContentOffsetDidChangeBm:78] ? 1 : 0;
ret += [MJRefreshHeader setStateBm:45] ? 1 : 0;
ret += [MJRefreshHeader lastUpdatedTimeBm:96] ? 1 : 0;
ret += [MJRefreshFooter footerWithRefreshingBlockBm:14] ? 1 : 0;
ret += [MJRefreshFooter footerWithRefreshingTargetRefreshingactionBm:94] ? 1 : 0;
ret += [MJRefreshFooter prepareBm:81] ? 1 : 0;
ret += [MJRefreshFooter willMoveToSuperviewBm:71] ? 1 : 0;
ret += [MJRefreshFooter endRefreshingWithNoMoreDataBm:59] ? 1 : 0;
ret += [MJRefreshFooter noticeNoMoreDataBm:38] ? 1 : 0;
ret += [MJRefreshFooter resetNoMoreDataBm:87] ? 1 : 0;
ret += [MJRefreshFooter setAutomaticallyHiddenBm:4] ? 1 : 0;
ret += [MJRefreshBackFooter willMoveToSuperviewBm:10] ? 1 : 0;
ret += [MJRefreshBackFooter scrollViewContentOffsetDidChangeBm:20] ? 1 : 0;
ret += [MJRefreshBackFooter scrollViewContentSizeDidChangeBm:82] ? 1 : 0;
ret += [MJRefreshBackFooter setStateBm:26] ? 1 : 0;
ret += [MJRefreshBackFooter heightForContentBreakViewBm:86] ? 1 : 0;
ret += [MJRefreshBackFooter happenOffsetYBm:95] ? 1 : 0;
ret += [FSTextView initWithCoderBm:63] ? 1 : 0;
ret += [FSTextView initWithFrameBm:58] ? 1 : 0;
ret += [FSTextView becomeFirstResponderBm:89] ? 1 : 0;
ret += [FSTextView resignFirstResponderBm:81] ? 1 : 0;
ret += [FSTextView canPerformActionWithsenderBm:29] ? 1 : 0;
ret += [FSTextView deallocBm:95] ? 1 : 0;
ret += [FSTextView initializeBm:96] ? 1 : 0;
ret += [FSTextView formatTextBm:35] ? 1 : 0;
ret += [FSTextView placeholderLabelBm:96] ? 1 : 0;
ret += [FSTextView setTextBm:19] ? 1 : 0;
ret += [FSTextView setFontBm:60] ? 1 : 0;
ret += [FSTextView setMaxLengthBm:3] ? 1 : 0;
ret += [FSTextView setCornerRadiusBm:57] ? 1 : 0;
ret += [FSTextView setBorderColorBm:94] ? 1 : 0;
ret += [FSTextView setBorderWidthBm:68] ? 1 : 0;
ret += [FSTextView setPlaceholderBm:79] ? 1 : 0;
ret += [FSTextView setPlaceholderColorBm:92] ? 1 : 0;
ret += [FSTextView setPlaceholderFontBm:80] ? 1 : 0;
ret += [FSTextView textDidChangeBm:10] ? 1 : 0;
ret += [FSTextView textViewBm:39] ? 1 : 0;
ret += [FSTextView addTextDidChangeHandlerBm:62] ? 1 : 0;
ret += [FSTextView addTextLengthDidMaxHandlerBm:0] ? 1 : 0;
ret += [UIViewController loadBm:28] ? 1 : 0;
ret += [UIViewController lg_presentViewControllerAnimatedCompletionBm:91] ? 1 : 0;
ret += [MBProgressHUD showHUDAddedToAnimatedBm:54] ? 1 : 0;
ret += [MBProgressHUD hideHUDForViewAnimatedBm:6] ? 1 : 0;
ret += [MBProgressHUD hideAllHUDsForViewAnimatedBm:26] ? 1 : 0;
ret += [MBProgressHUD HUDForViewBm:94] ? 1 : 0;
ret += [MBProgressHUD allHUDsForViewBm:23] ? 1 : 0;
ret += [MBProgressHUD initWithFrameBm:97] ? 1 : 0;
ret += [MBProgressHUD initWithViewBm:14] ? 1 : 0;
ret += [MBProgressHUD initWithWindowBm:2] ? 1 : 0;
ret += [MBProgressHUD deallocBm:24] ? 1 : 0;
ret += [MBProgressHUD showBm:26] ? 1 : 0;
ret += [MBProgressHUD hideBm:90] ? 1 : 0;
ret += [MBProgressHUD hideAfterdelayBm:60] ? 1 : 0;
ret += [MBProgressHUD hideDelayedBm:7] ? 1 : 0;
ret += [MBProgressHUD handleGraceTimerBm:89] ? 1 : 0;
ret += [MBProgressHUD handleMinShowTimerBm:83] ? 1 : 0;
ret += [MBProgressHUD didMoveToSuperviewBm:75] ? 1 : 0;
ret += [MBProgressHUD showUsingAnimationBm:42] ? 1 : 0;
ret += [MBProgressHUD hideUsingAnimationBm:73] ? 1 : 0;
ret += [MBProgressHUD animationFinishedFinishedContextBm:39] ? 1 : 0;
ret += [MBProgressHUD doneBm:93] ? 1 : 0;
ret += [MBProgressHUD showWhileExecutingOntargetWithobjectAnimatedBm:17] ? 1 : 0;
ret += [MBProgressHUD showAnimatedWhileexecutingblockBm:24] ? 1 : 0;
ret += [MBProgressHUD showAnimatedWhileexecutingblockCompletionblockBm:16] ? 1 : 0;
ret += [MBProgressHUD showAnimatedWhileexecutingblockOnqueueBm:65] ? 1 : 0;
ret += [MBProgressHUD showAnimatedWhileexecutingblockOnqueueCompletionblockBm:26] ? 1 : 0;
ret += [MBProgressHUD launchExecutionBm:83] ? 1 : 0;
ret += [MBProgressHUD cleanUpBm:12] ? 1 : 0;
ret += [MBProgressHUD setupLabelsBm:68] ? 1 : 0;
ret += [MBProgressHUD updateIndicatorsBm:94] ? 1 : 0;
ret += [MBProgressHUD layoutSubviewsBm:33] ? 1 : 0;
ret += [MBProgressHUD drawRectBm:90] ? 1 : 0;
ret += [MBProgressHUD registerForKVOBm:15] ? 1 : 0;
ret += [MBProgressHUD unregisterFromKVOBm:83] ? 1 : 0;
ret += [MBProgressHUD observableKeypathsBm:12] ? 1 : 0;
ret += [MBProgressHUD observeValueForKeyPathOfobjectChangeContextBm:62] ? 1 : 0;
ret += [MBProgressHUD updateUIForKeypathBm:92] ? 1 : 0;
ret += [MBProgressHUD registerForNotificationsBm:72] ? 1 : 0;
ret += [MBProgressHUD unregisterFromNotificationsBm:12] ? 1 : 0;
ret += [MBProgressHUD statusBarOrientationDidChangeBm:92] ? 1 : 0;
ret += [MBProgressHUD updateForCurrentOrientationAnimatedBm:89] ? 1 : 0;
ret += [MBRoundProgressView initBm:4] ? 1 : 0;
ret += [MBRoundProgressView initWithFrameBm:77] ? 1 : 0;
ret += [MBRoundProgressView deallocBm:96] ? 1 : 0;
ret += [MBRoundProgressView drawRectBm:8] ? 1 : 0;
ret += [MBRoundProgressView registerForKVOBm:23] ? 1 : 0;
ret += [MBRoundProgressView unregisterFromKVOBm:35] ? 1 : 0;
ret += [MBRoundProgressView observableKeypathsBm:47] ? 1 : 0;
ret += [MBRoundProgressView observeValueForKeyPathOfobjectChangeContextBm:97] ? 1 : 0;
ret += [MBBarProgressView initBm:73] ? 1 : 0;
ret += [MBBarProgressView initWithFrameBm:80] ? 1 : 0;
ret += [MBBarProgressView deallocBm:43] ? 1 : 0;
ret += [MBBarProgressView drawRectBm:32] ? 1 : 0;
ret += [MBBarProgressView registerForKVOBm:31] ? 1 : 0;
ret += [MBBarProgressView unregisterFromKVOBm:56] ? 1 : 0;
ret += [MBBarProgressView observableKeypathsBm:67] ? 1 : 0;
ret += [MBBarProgressView observeValueForKeyPathOfobjectChangeContextBm:20] ? 1 : 0;
ret += [SDCellAutoHeightManager initBm:93] ? 1 : 0;
ret += [SDCellAutoHeightManager initWithCellClassTableviewBm:7] ? 1 : 0;
ret += [SDCellAutoHeightManager initWithCellClassesTableviewBm:25] ? 1 : 0;
ret += [SDCellAutoHeightManager setupBm:53] ? 1 : 0;
ret += [SDCellAutoHeightManager registerCellWithCellClassBm:82] ? 1 : 0;
ret += [SDCellAutoHeightManager managerWithCellClassTableviewBm:97] ? 1 : 0;
ret += [SDCellAutoHeightManager modelCellBm:32] ? 1 : 0;
ret += [SDCellAutoHeightManager heightCacheDictBm:79] ? 1 : 0;
ret += [SDCellAutoHeightManager clearHeightCacheBm:85] ? 1 : 0;
ret += [SDCellAutoHeightManager cacheKeyForIndexPathBm:83] ? 1 : 0;
ret += [SDCellAutoHeightManager clearHeightCacheOfIndexPathsBm:28] ? 1 : 0;
ret += [SDCellAutoHeightManager deleteThenResetHeightCacheBm:33] ? 1 : 0;
ret += [SDCellAutoHeightManager insertNewDataAtTheBeginingOfSectionNewdatacountBm:85] ? 1 : 0;
ret += [SDCellAutoHeightManager insertNewDataAtIndexPathsBm:74] ? 1 : 0;
ret += [SDCellAutoHeightManager heightCacheForIndexPathBm:2] ? 1 : 0;
ret += [SDCellAutoHeightManager cellHeightForIndexPathModelKeypathBm:46] ? 1 : 0;
ret += [SDCellAutoHeightManager cellHeightForIndexPathModelKeypathCellclassBm:61] ? 1 : 0;
ret += [SDCellAutoHeightManager setContentViewWidthBm:78] ? 1 : 0;
ret += [SDCellAutoHeightManager setSubviewFrameCacheWithindexpathBm:65] ? 1 : 0;
ret += [SDCellAutoHeightManager subviewFrameCachesWithIndexPathBm:33] ? 1 : 0;
ret += [UITableView loadBm:25] ? 1 : 0;
ret += [UITableView sd_reloadDataBm:37] ? 1 : 0;
ret += [UITableView sd_reloadRowsAtIndexPathsWithrowanimationBm:79] ? 1 : 0;
ret += [UITableView sd_deleteRowsAtIndexPathsWithrowanimationBm:50] ? 1 : 0;
ret += [UITableView sd_insertRowsAtIndexPathsWithrowanimationBm:20] ? 1 : 0;
ret += [UITableView cellHeightForIndexPathModelKeypathCellclassContentviewwidthBm:70] ? 1 : 0;
ret += [UITableView cellHeightForIndexPathCellclassCellcontentviewwidthCelldatasettingBm:5] ? 1 : 0;
ret += [UITableView reloadDataWithExistedHeightCacheBm:62] ? 1 : 0;
ret += [UITableView reloadDataWithInsertingDataAtTheBeginingOfSectionNewdatacountBm:76] ? 1 : 0;
ret += [UITableView reloadDataWithInsertingDataAtTheBeginingOfSectionsNewdatacountsBm:88] ? 1 : 0;
ret += [UITableView cellsTotalHeightBm:35] ? 1 : 0;
ret += [UITableView cellAutoHeightManagerBm:41] ? 1 : 0;
ret += [UITableView setCellAutoHeightManagerBm:74] ? 1 : 0;
ret += [UITableView setCellDataSettingBm:22] ? 1 : 0;
ret += [UITableView cellDataSettingBm:52] ? 1 : 0;
ret += [UITableViewController cellHeightForIndexPathCellcontentviewwidthBm:98] ? 1 : 0;
ret += [NSObject cellHeightForIndexPathCellcontentviewwidthTableviewBm:1] ? 1 : 0;
ret += [SDAutoLayoutModel leftSpaceToViewBm:49] ? 1 : 0;
ret += [SDAutoLayoutModel rightSpaceToViewBm:80] ? 1 : 0;
ret += [SDAutoLayoutModel topSpaceToViewBm:27] ? 1 : 0;
ret += [SDAutoLayoutModel bottomSpaceToViewBm:11] ? 1 : 0;
ret += [SDAutoLayoutModel marginToViewblockWithKeyBm:46] ? 1 : 0;
ret += [SDAutoLayoutModel widthIsBm:41] ? 1 : 0;
ret += [SDAutoLayoutModel heightIsBm:65] ? 1 : 0;
ret += [SDAutoLayoutModel widthRatioToViewBm:35] ? 1 : 0;
ret += [SDAutoLayoutModel heightRatioToViewBm:55] ? 1 : 0;
ret += [SDAutoLayoutModel maxWidthIsBm:25] ? 1 : 0;
ret += [SDAutoLayoutModel maxHeightIsBm:12] ? 1 : 0;
ret += [SDAutoLayoutModel minWidthIsBm:18] ? 1 : 0;
ret += [SDAutoLayoutModel minHeightIsBm:81] ? 1 : 0;
ret += [SDAutoLayoutModel limitingWidthHeightWithKeyBm:50] ? 1 : 0;
ret += [SDAutoLayoutModel marginEqualToViewBlockWithKeyBm:52] ? 1 : 0;
ret += [SDAutoLayoutModel leftEqualToViewBm:59] ? 1 : 0;
ret += [SDAutoLayoutModel rightEqualToViewBm:87] ? 1 : 0;
ret += [SDAutoLayoutModel topEqualToViewBm:37] ? 1 : 0;
ret += [SDAutoLayoutModel bottomEqualToViewBm:1] ? 1 : 0;
ret += [SDAutoLayoutModel centerXEqualToViewBm:7] ? 1 : 0;
ret += [SDAutoLayoutModel centerYEqualToViewBm:45] ? 1 : 0;
ret += [SDAutoLayoutModel marginBlockWithKeyBm:50] ? 1 : 0;
ret += [SDAutoLayoutModel xIsBm:9] ? 1 : 0;
ret += [SDAutoLayoutModel yIsBm:12] ? 1 : 0;
ret += [SDAutoLayoutModel centerXIsBm:93] ? 1 : 0;
ret += [SDAutoLayoutModel centerYIsBm:5] ? 1 : 0;
ret += [SDAutoLayoutModel autoHeightRatioBm:49] ? 1 : 0;
ret += [SDAutoLayoutModel autoWidthRatioBm:0] ? 1 : 0;
ret += [SDAutoLayoutModel spaceToSuperViewBm:77] ? 1 : 0;
ret += [SDAutoLayoutModel widthEqualToHeightBm:17] ? 1 : 0;
ret += [SDAutoLayoutModel heightEqualToWidthBm:36] ? 1 : 0;
ret += [SDAutoLayoutModel (CGFloat))offsetBm:69] ? 1 : 0;
ret += [SDAutoLayoutModelItem initBm:50] ? 1 : 0;
ret += [UIView sd_categoryManagerBm:4] ? 1 : 0;
ret += [UIView setupAutoHeightWithBottomViewBottommarginBm:55] ? 1 : 0;
ret += [UIView setupAutoWidthWithRightViewRightmarginBm:28] ? 1 : 0;
ret += [UIView setupAutoHeightWithBottomViewsArrayBottommarginBm:34] ? 1 : 0;
ret += [UIView clearAutoHeigtSettingsBm:83] ? 1 : 0;
ret += [UIView clearAutoWidthSettingsBm:67] ? 1 : 0;
ret += [UIView updateLayoutBm:21] ? 1 : 0;
ret += [UIView updateLayoutWithCellContentViewBm:62] ? 1 : 0;
ret += [UIView autoHeightBm:79] ? 1 : 0;
ret += [UIView setAutoHeightBm:58] ? 1 : 0;
ret += [UIView sd_bottomViewsArrayBm:20] ? 1 : 0;
ret += [UIView sd_rightViewsArrayBm:44] ? 1 : 0;
ret += [UIView setSd_rightViewsArrayBm:16] ? 1 : 0;
ret += [UIView sd_bottomViewBottomMarginBm:65] ? 1 : 0;
ret += [UIView setSd_bottomViewBottomMarginBm:51] ? 1 : 0;
ret += [UIView setSd_rightViewRightMarginBm:77] ? 1 : 0;
ret += [UIView sd_rightViewRightMarginBm:4] ? 1 : 0;
ret += [UIView (CGRect))didFinishAutoLayoutBlockBm:96] ? 1 : 0;
ret += [UIView setDidFinishAutoLayoutBlockBm:91] ? 1 : 0;
ret += [UIView sd_cornerRadiusBm:68] ? 1 : 0;
ret += [UIView setSd_cornerRadiusBm:12] ? 1 : 0;
ret += [UIView sd_cornerRadiusFromWidthRatioBm:60] ? 1 : 0;
ret += [UIView setSd_cornerRadiusFromWidthRatioBm:15] ? 1 : 0;
ret += [UIView sd_cornerRadiusFromHeightRatioBm:25] ? 1 : 0;
ret += [UIView setSd_cornerRadiusFromHeightRatioBm:6] ? 1 : 0;
ret += [UIView sd_equalWidthSubviewsBm:93] ? 1 : 0;
ret += [UIView setSd_equalWidthSubviewsBm:97] ? 1 : 0;
ret += [UIView sd_addSubviewsBm:59] ? 1 : 0;
ret += [UIView setupAutoWidthFlowItemsWithperrowitemscountVerticalmarginHorizontalmarginVerticaledgeinsetHorizontaledgeinsetBm:54] ? 1 : 0;
ret += [UIView clearAutoWidthFlowItemsSettingsBm:2] ? 1 : 0;
ret += [UIView setupAutoMarginFlowItemsWithperrowitemscountItemwidthVerticalmarginVerticaledgeinsetHorizontaledgeinsetBm:9] ? 1 : 0;
ret += [UIView clearAutoMarginFlowItemsSettingsBm:22] ? 1 : 0;
ret += [UIView setHorizontalEdgeInsetBm:41] ? 1 : 0;
ret += [UIView horizontalEdgeInsetBm:65] ? 1 : 0;
ret += [UIView setVerticalEdgeInsetBm:54] ? 1 : 0;
ret += [UIView verticalEdgeInsetBm:42] ? 1 : 0;
ret += [UIScrollView setupAutoContentSizeWithBottomViewBottommarginBm:9] ? 1 : 0;
ret += [UIScrollView setupAutoContentSizeWithRightViewRightmarginBm:1] ? 1 : 0;
ret += [UILabel loadBm:68] ? 1 : 0;
ret += [UILabel sd_setTextBm:56] ? 1 : 0;
ret += [UILabel isAttributedContentBm:21] ? 1 : 0;
ret += [UILabel setIsAttributedContentBm:7] ? 1 : 0;
ret += [UILabel setSingleLineAutoResizeWithMaxWidthBm:46] ? 1 : 0;
ret += [UILabel setMaxNumberOfLinesToShowBm:64] ? 1 : 0;
ret += [UIButton setupAutoSizeWithHorizontalPaddingButtonheightBm:98] ? 1 : 0;
ret += [UIView loadBm:40] ? 1 : 0;
ret += [UIView autoLayoutModelsArrayBm:23] ? 1 : 0;
ret += [UIView fixedWidthBm:96] ? 1 : 0;
ret += [UIView setFixedWidthBm:24] ? 1 : 0;
ret += [UIView fixedHeightBm:16] ? 1 : 0;
ret += [UIView setFixedHeightBm:30] ? 1 : 0;
ret += [UIView autoHeightRatioValueBm:67] ? 1 : 0;
ret += [UIView setAutoHeightRatioValueBm:61] ? 1 : 0;
ret += [UIView autoWidthRatioValueBm:77] ? 1 : 0;
ret += [UIView setAutoWidthRatioValueBm:17] ? 1 : 0;
ret += [UIView sd_maxWidthBm:62] ? 1 : 0;
ret += [UIView setSd_maxWidthBm:30] ? 1 : 0;
ret += [UIView useCellFrameCacheWithIndexPathTableviewBm:63] ? 1 : 0;
ret += [UIView sd_tableViewBm:83] ? 1 : 0;
ret += [UIView setSd_tableViewBm:13] ? 1 : 0;
ret += [UIView sd_indexPathBm:0] ? 1 : 0;
ret += [UIView setSd_indexPathBm:75] ? 1 : 0;
ret += [UIView ownLayoutModelBm:88] ? 1 : 0;
ret += [UIView setOwnLayoutModelBm:62] ? 1 : 0;
ret += [UIView sd_layoutBm:27] ? 1 : 0;
ret += [UIView sd_resetLayoutBm:99] ? 1 : 0;
ret += [UIView sd_resetNewLayoutBm:93] ? 1 : 0;
ret += [UIView sd_isClosingAutoLayoutBm:0] ? 1 : 0;
ret += [UIView setSd_closeAutoLayoutBm:47] ? 1 : 0;
ret += [UIView removeFromSuperviewAndClearAutoLayoutSettingsBm:7] ? 1 : 0;
ret += [UIView sd_clearAutoLayoutSettingsBm:85] ? 1 : 0;
ret += [UIView sd_clearExtraAutoLayoutItemsBm:56] ? 1 : 0;
ret += [UIView sd_clearViewFrameCacheBm:31] ? 1 : 0;
ret += [UIView sd_clearSubviewsAutoLayoutFrameCachesBm:83] ? 1 : 0;
ret += [UIView sd_layoutSubviewsBm:22] ? 1 : 0;
ret += [UIView sd_layoutSubviewsHandleBm:46] ? 1 : 0;
ret += [UIView sd_resizeWithModelBm:91] ? 1 : 0;
ret += [UIView layoutAutoHeightWidthViewModelBm:58] ? 1 : 0;
ret += [UIView layoutAutoWidthWidthViewModelBm:98] ? 1 : 0;
ret += [UIView layoutWidthWithViewModelBm:70] ? 1 : 0;
ret += [UIView layoutHeightWithViewModelBm:72] ? 1 : 0;
ret += [UIView layoutLeftWithViewModelBm:3] ? 1 : 0;
ret += [UIView layoutRightWithViewModelBm:56] ? 1 : 0;
ret += [UIView layoutTopWithViewModelBm:46] ? 1 : 0;
ret += [UIView layoutBottomWithViewModelBm:21] ? 1 : 0;
ret += [UIView setupCornerRadiusWithViewModelBm:69] ? 1 : 0;
ret += [UIView addAutoLayoutModelBm:64] ? 1 : 0;
ret += [UIButton loadBm:96] ? 1 : 0;
ret += [UIButton sd_button_layoutSubviewsBm:29] ? 1 : 0;
ret += [UIView shouldReadjustFrameBeforeStoreCacheBm:53] ? 1 : 0;
ret += [UIView setShouldReadjustFrameBeforeStoreCacheBm:40] ? 1 : 0;
ret += [UIView left_sdBm:29] ? 1 : 0;
ret += [UIView setLeft_sdBm:90] ? 1 : 0;
ret += [UIView top_sdBm:36] ? 1 : 0;
ret += [UIView setTop_sdBm:91] ? 1 : 0;
ret += [UIView right_sdBm:86] ? 1 : 0;
ret += [UIView setRight_sdBm:29] ? 1 : 0;
ret += [UIView bottom_sdBm:62] ? 1 : 0;
ret += [UIView setBottom_sdBm:12] ? 1 : 0;
ret += [UIView centerX_sdBm:87] ? 1 : 0;
ret += [UIView setCenterX_sdBm:46] ? 1 : 0;
ret += [UIView centerY_sdBm:33] ? 1 : 0;
ret += [UIView setCenterY_sdBm:1] ? 1 : 0;
ret += [UIView width_sdBm:23] ? 1 : 0;
ret += [UIView setWidth_sdBm:46] ? 1 : 0;
ret += [UIView height_sdBm:84] ? 1 : 0;
ret += [UIView setHeight_sdBm:7] ? 1 : 0;
ret += [UIView origin_sdBm:99] ? 1 : 0;
ret += [UIView setOrigin_sdBm:36] ? 1 : 0;
ret += [UIView size_sdBm:96] ? 1 : 0;
ret += [UIView setSize_sdBm:53] ? 1 : 0;
ret += [UIView setWidthBm:80] ? 1 : 0;
ret += [UIView setHeightBm:38] ? 1 : 0;
ret += [UIView setSizeBm:74] ? 1 : 0;
ret += [UIView leftBm:23] ? 1 : 0;
ret += [UIView setLeftBm:86] ? 1 : 0;
ret += [UIView rightBm:91] ? 1 : 0;
ret += [UIView setRightBm:9] ? 1 : 0;
ret += [UIView widthBm:38] ? 1 : 0;
ret += [UIView heightBm:29] ? 1 : 0;
ret += [UIView topBm:54] ? 1 : 0;
ret += [UIView setTopBm:59] ? 1 : 0;
ret += [UIView bottomBm:94] ? 1 : 0;
ret += [UIView setBottomBm:10] ? 1 : 0;
ret += [UIView centerXBm:69] ? 1 : 0;
ret += [UIView setCenterXBm:44] ? 1 : 0;
ret += [UIView centerYBm:98] ? 1 : 0;
ret += [UIView setCenterYBm:86] ? 1 : 0;
ret += [UIView originBm:89] ? 1 : 0;
ret += [UIView setOriginBm:50] ? 1 : 0;
ret += [UIView sizeBm:85] ? 1 : 0;
ret += [SDAnimatedImageRep setPropertyWithvalueBm:45] ? 1 : 0;
ret += [SDAnimatedImageRep imageSourceBm:98] ? 1 : 0;
ret += [NSButton sd_setImageWithURLBm:65] ? 1 : 0;
ret += [NSButton sd_setImageWithURLPlaceholderimageBm:38] ? 1 : 0;
ret += [NSButton sd_setImageWithURLPlaceholderimageOptionsBm:67] ? 1 : 0;
ret += [NSButton sd_setImageWithURLCompletedBm:58] ? 1 : 0;
ret += [NSButton sd_setImageWithURLPlaceholderimageCompletedBm:53] ? 1 : 0;
ret += [NSButton sd_setImageWithURLPlaceholderimageOptionsCompletedBm:93] ? 1 : 0;
ret += [NSButton sd_setImageWithURLPlaceholderimageOptionsProgressCompletedBm:86] ? 1 : 0;
ret += [NSButton sd_setAlternateImageWithURLBm:19] ? 1 : 0;
ret += [NSButton sd_setAlternateImageWithURLPlaceholderimageBm:29] ? 1 : 0;
ret += [NSButton sd_setAlternateImageWithURLPlaceholderimageOptionsBm:40] ? 1 : 0;
ret += [NSButton sd_setAlternateImageWithURLCompletedBm:83] ? 1 : 0;
ret += [NSButton sd_setAlternateImageWithURLPlaceholderimageCompletedBm:3] ? 1 : 0;
ret += [NSButton sd_setAlternateImageWithURLPlaceholderimageOptionsCompletedBm:30] ? 1 : 0;
ret += [NSButton sd_setAlternateImageWithURLPlaceholderimageOptionsProgressCompletedBm:90] ? 1 : 0;
ret += [NSButton sd_cancelCurrentImageLoadBm:2] ? 1 : 0;
ret += [NSButton sd_cancelCurrentAlternateImageLoadBm:16] ? 1 : 0;
ret += [NSButton sd_currentImageURLBm:34] ? 1 : 0;
ret += [NSButton setSd_currentImageURLBm:8] ? 1 : 0;
ret += [NSButton sd_currentAlternateImageURLBm:34] ? 1 : 0;
ret += [NSButton setSd_currentAlternateImageURLBm:41] ? 1 : 0;
ret += [NSImage CGImageBm:28] ? 1 : 0;
ret += [NSImage imagesBm:56] ? 1 : 0;
ret += [NSImage isGIFBm:85] ? 1 : 0;
ret += [UIImageView sd_setImageWithURLBm:16] ? 1 : 0;
ret += [UIImageView sd_setImageWithURLPlaceholderimageBm:56] ? 1 : 0;
ret += [UIImageView sd_setImageWithURLPlaceholderimageOptionsBm:55] ? 1 : 0;
ret += [UIImageView sd_setImageWithURLCompletedBm:82] ? 1 : 0;
ret += [UIImageView sd_setImageWithURLPlaceholderimageCompletedBm:89] ? 1 : 0;
ret += [UIImageView sd_setImageWithURLPlaceholderimageOptionsCompletedBm:12] ? 1 : 0;
ret += [UIImageView sd_setImageWithURLPlaceholderimageOptionsProgressCompletedBm:60] ? 1 : 0;
ret += [UIImageView sd_setImageWithPreviousCachedImageWithURLPlaceholderimageOptionsProgressCompletedBm:85] ? 1 : 0;
ret += [UIImageView sd_setAnimationImagesWithURLsBm:69] ? 1 : 0;
ret += [UIImageView sd_animationOperationArrayBm:17] ? 1 : 0;
ret += [UIImageView sd_cancelCurrentAnimationImagesLoadBm:77] ? 1 : 0;
ret += [NSData sd_imageFormatForImageDataBm:2] ? 1 : 0;
ret += [NSData sd_UTTypeFromSDImageFormatBm:55] ? 1 : 0;
ret += [NSData sd_imageFormatFromUTTypeBm:17] ? 1 : 0;
ret += [SDWebImageTransition initBm:90] ? 1 : 0;
ret += [SDWebImageTransition fadeTransitionBm:79] ? 1 : 0;
ret += [SDWebImageTransition flipFromLeftTransitionBm:91] ? 1 : 0;
ret += [SDWebImageTransition flipFromRightTransitionBm:46] ? 1 : 0;
ret += [SDWebImageTransition flipFromTopTransitionBm:9] ? 1 : 0;
ret += [SDWebImageTransition flipFromBottomTransitionBm:70] ? 1 : 0;
ret += [SDWebImageTransition curlUpTransitionBm:56] ? 1 : 0;
ret += [SDWebImageTransition curlDownTransitionBm:53] ? 1 : 0;
ret += [SDWebImageDownloaderOperation initBm:41] ? 1 : 0;
ret += [SDWebImageDownloaderOperation initWithRequestInsessionOptionsBm:79] ? 1 : 0;
ret += [SDWebImageDownloaderOperation addHandlersForProgressCompletedBm:12] ? 1 : 0;
ret += [SDWebImageDownloaderOperation callbacksForKeyBm:17] ? 1 : 0;
ret += [SDWebImageDownloaderOperation cancelBm:23] ? 1 : 0;
ret += [SDWebImageDownloaderOperation startBm:46] ? 1 : 0;
ret += [SDWebImageDownloaderOperation cancelBm:78] ? 1 : 0;
ret += [SDWebImageDownloaderOperation cancelInternalBm:16] ? 1 : 0;
ret += [SDWebImageDownloaderOperation doneBm:68] ? 1 : 0;
ret += [SDWebImageDownloaderOperation resetBm:26] ? 1 : 0;
ret += [SDWebImageDownloaderOperation setFinishedBm:2] ? 1 : 0;
ret += [SDWebImageDownloaderOperation setExecutingBm:11] ? 1 : 0;
ret += [SDWebImageDownloaderOperation isConcurrentBm:99] ? 1 : 0;
ret += [SDWebImageDownloaderOperation URLSessionDatataskDidreceiveresponseCompletionhandlerBm:36] ? 1 : 0;
ret += [SDWebImageDownloaderOperation URLSessionDatataskDidreceivedataBm:5] ? 1 : 0;
ret += [SDWebImageDownloaderOperation URLSessionDatataskWillcacheresponseCompletionhandlerBm:89] ? 1 : 0;
ret += [SDWebImageDownloaderOperation URLSessionTaskDidcompletewitherrorBm:45] ? 1 : 0;
ret += [SDWebImageDownloaderOperation URLSessionTaskDidreceivechallengeCompletionhandlerBm:30] ? 1 : 0;
ret += [SDWebImageDownloaderOperation scaledImageForKeyImageBm:34] ? 1 : 0;
ret += [SDWebImageDownloaderOperation shouldContinueWhenAppEntersBackgroundBm:29] ? 1 : 0;
ret += [SDWebImageDownloaderOperation callCompletionBlocksWithErrorBm:57] ? 1 : 0;
ret += [SDWebImageDownloaderOperation callCompletionBlocksWithImageImagedataErrorFinishedBm:14] ? 1 : 0;
ret += [SDImageCache sharedImageCacheBm:10] ? 1 : 0;
ret += [SDImageCache initBm:99] ? 1 : 0;
ret += [SDImageCache initWithNamespaceBm:68] ? 1 : 0;
ret += [SDImageCache initWithNamespaceDiskcachedirectoryBm:24] ? 1 : 0;
ret += [SDImageCache deallocBm:20] ? 1 : 0;
ret += [SDImageCache addReadOnlyCachePathBm:28] ? 1 : 0;
ret += [SDImageCache cachePathForKeyInpathBm:81] ? 1 : 0;
ret += [SDImageCache defaultCachePathForKeyBm:89] ? 1 : 0;
ret += [SDImageCache cachedFileNameForKeyBm:69] ? 1 : 0;
ret += [SDImageCache makeDiskCachePathBm:5] ? 1 : 0;
ret += [SDImageCache storeImageForkeyCompletionBm:13] ? 1 : 0;
ret += [SDImageCache storeImageForkeyTodiskCompletionBm:4] ? 1 : 0;
ret += [SDImageCache storeImageImagedataForkeyTodiskCompletionBm:25] ? 1 : 0;
ret += [SDImageCache storeImageDataToDiskForkeyBm:98] ? 1 : 0;
ret += [SDImageCache _storeImageDataToDiskForkeyBm:4] ? 1 : 0;
ret += [SDImageCache diskImageExistsWithKeyCompletionBm:84] ? 1 : 0;
ret += [SDImageCache diskImageDataExistsWithKeyBm:87] ? 1 : 0;
ret += [SDImageCache _diskImageDataExistsWithKeyBm:22] ? 1 : 0;
ret += [SDImageCache diskImageDataForKeyBm:27] ? 1 : 0;
ret += [SDImageCache imageFromMemoryCacheForKeyBm:59] ? 1 : 0;
ret += [SDImageCache imageFromDiskCacheForKeyBm:56] ? 1 : 0;
ret += [SDImageCache imageFromCacheForKeyBm:78] ? 1 : 0;
ret += [SDImageCache diskImageDataBySearchingAllPathsForKeyBm:85] ? 1 : 0;
ret += [SDImageCache diskImageForKeyBm:91] ? 1 : 0;
ret += [SDImageCache diskImageForKeyDataBm:78] ? 1 : 0;
ret += [SDImageCache diskImageForKeyDataOptionsBm:7] ? 1 : 0;
ret += [SDImageCache scaledImageForKeyImageBm:50] ? 1 : 0;
ret += [SDImageCache queryCacheOperationForKeyDoneBm:46] ? 1 : 0;
ret += [SDImageCache queryCacheOperationForKeyOptionsDoneBm:24] ? 1 : 0;
ret += [SDImageCache removeImageForKeyWithcompletionBm:25] ? 1 : 0;
ret += [SDImageCache removeImageForKeyFromdiskWithcompletionBm:44] ? 1 : 0;
ret += [SDImageCache setMaxMemoryCostBm:64] ? 1 : 0;
ret += [SDImageCache maxMemoryCostBm:59] ? 1 : 0;
ret += [SDImageCache maxMemoryCountLimitBm:30] ? 1 : 0;
ret += [SDImageCache setMaxMemoryCountLimitBm:40] ? 1 : 0;
ret += [SDImageCache clearMemoryBm:75] ? 1 : 0;
ret += [SDImageCache clearDiskOnCompletionBm:48] ? 1 : 0;
ret += [SDImageCache deleteOldFilesBm:78] ? 1 : 0;
ret += [SDImageCache deleteOldFilesWithCompletionBlockBm:54] ? 1 : 0;
ret += [SDImageCache backgroundDeleteOldFilesBm:27] ? 1 : 0;
ret += [SDImageCache getSizeBm:92] ? 1 : 0;
ret += [SDImageCache getDiskCountBm:47] ? 1 : 0;
ret += [SDImageCache calculateSizeWithCompletionBlockBm:35] ? 1 : 0;
ret += [SDImageCacheConfig initBm:38] ? 1 : 0;
ret += [SDWebImageGIFCoder sharedCoderBm:91] ? 1 : 0;
ret += [SDWebImageGIFCoder canDecodeFromDataBm:91] ? 1 : 0;
ret += [SDWebImageGIFCoder decodedImageWithDataBm:22] ? 1 : 0;
ret += [SDWebImageGIFCoder sd_frameDurationAtIndexSourceBm:96] ? 1 : 0;
ret += [SDWebImageGIFCoder decompressedImageWithImageDataOptionsBm:93] ? 1 : 0;
ret += [SDWebImageGIFCoder canEncodeToFormatBm:19] ? 1 : 0;
ret += [SDWebImageGIFCoder encodedDataWithImageFormatBm:75] ? 1 : 0;
ret += [UIButton sd_currentImageURLBm:48] ? 1 : 0;
ret += [UIButton sd_imageURLForStateBm:81] ? 1 : 0;
ret += [UIButton sd_setImageWithURLForstateBm:7] ? 1 : 0;
ret += [UIButton sd_setImageWithURLForstatePlaceholderimageBm:20] ? 1 : 0;
ret += [UIButton sd_setImageWithURLForstatePlaceholderimageOptionsBm:35] ? 1 : 0;
ret += [UIButton sd_setImageWithURLForstateCompletedBm:71] ? 1 : 0;
ret += [UIButton sd_setImageWithURLForstatePlaceholderimageCompletedBm:57] ? 1 : 0;
ret += [UIButton sd_setImageWithURLForstatePlaceholderimageOptionsCompletedBm:84] ? 1 : 0;
ret += [UIButton sd_currentBackgroundImageURLBm:78] ? 1 : 0;
ret += [UIButton sd_backgroundImageURLForStateBm:17] ? 1 : 0;
ret += [UIButton sd_setBackgroundImageWithURLForstateBm:62] ? 1 : 0;
ret += [UIButton sd_setBackgroundImageWithURLForstatePlaceholderimageBm:99] ? 1 : 0;
ret += [UIButton sd_setBackgroundImageWithURLForstatePlaceholderimageOptionsBm:73] ? 1 : 0;
ret += [UIButton sd_setBackgroundImageWithURLForstateCompletedBm:47] ? 1 : 0;
ret += [UIButton sd_setBackgroundImageWithURLForstatePlaceholderimageCompletedBm:31] ? 1 : 0;
ret += [UIButton sd_setBackgroundImageWithURLForstatePlaceholderimageOptionsCompletedBm:7] ? 1 : 0;
ret += [UIButton sd_cancelImageLoadForStateBm:64] ? 1 : 0;
ret += [UIButton sd_cancelBackgroundImageLoadForStateBm:98] ? 1 : 0;
ret += [UIButton sd_imageURLStorageBm:72] ? 1 : 0;
ret += [SDWebImageImageIOCoder deallocBm:68] ? 1 : 0;
ret += [SDWebImageImageIOCoder sharedCoderBm:34] ? 1 : 0;
ret += [SDWebImageImageIOCoder canDecodeFromDataBm:45] ? 1 : 0;
ret += [SDWebImageImageIOCoder canIncrementallyDecodeFromDataBm:94] ? 1 : 0;
ret += [SDWebImageImageIOCoder decodedImageWithDataBm:21] ? 1 : 0;
ret += [SDWebImageImageIOCoder incrementallyDecodedImageWithDataFinishedBm:94] ? 1 : 0;
ret += [SDWebImageImageIOCoder decompressedImageWithImageDataOptionsBm:98] ? 1 : 0;
ret += [SDWebImageImageIOCoder sd_decompressedImageWithImageBm:79] ? 1 : 0;
ret += [SDWebImageImageIOCoder sd_decompressedAndScaledDownImageWithImageBm:19] ? 1 : 0;
ret += [SDWebImageImageIOCoder canEncodeToFormatBm:92] ? 1 : 0;
ret += [SDWebImageImageIOCoder encodedDataWithImageFormatBm:23] ? 1 : 0;
ret += [SDWebImageImageIOCoder shouldDecodeImageBm:98] ? 1 : 0;
ret += [SDWebImageImageIOCoder canDecodeFromHEICFormatBm:82] ? 1 : 0;
ret += [SDWebImageImageIOCoder canEncodeToHEICFormatBm:29] ? 1 : 0;
ret += [SDWebImageImageIOCoder shouldScaleDownImageBm:94] ? 1 : 0;
ret += [UIView sd_imageURLBm:55] ? 1 : 0;
ret += [UIView sd_imageProgressBm:85] ? 1 : 0;
ret += [UIView setSd_imageProgressBm:10] ? 1 : 0;
ret += [UIView sd_internalSetImageWithURLPlaceholderimageOptionsOperationkeySetimageblockProgressCompletedBm:98] ? 1 : 0;
ret += [UIView sd_internalSetImageWithURLPlaceholderimageOptionsOperationkeySetimageblockProgressCompletedContextBm:47] ? 1 : 0;
ret += [UIView sd_cancelCurrentImageLoadBm:88] ? 1 : 0;
ret += [UIView sd_setImageImagedataBasedonclassorviacustomsetimageblockBm:82] ? 1 : 0;
ret += [UIView sd_setImageImagedataBasedonclassorviacustomsetimageblockTransitionCachetypeImageurlBm:96] ? 1 : 0;
ret += [UIView sd_setNeedsLayoutBm:83] ? 1 : 0;
ret += [UIView sd_imageTransitionBm:81] ? 1 : 0;
ret += [UIView setSd_imageTransitionBm:96] ? 1 : 0;
ret += [UIView activityIndicatorBm:17] ? 1 : 0;
ret += [UIView setActivityIndicatorBm:31] ? 1 : 0;
ret += [UIView sd_setShowActivityIndicatorViewBm:74] ? 1 : 0;
ret += [UIView sd_showActivityIndicatorViewBm:76] ? 1 : 0;
ret += [UIView sd_setIndicatorStyleBm:56] ? 1 : 0;
ret += [UIView sd_getIndicatorStyleBm:9] ? 1 : 0;
ret += [UIView sd_addActivityIndicatorBm:87] ? 1 : 0;
ret += [UIView sd_removeActivityIndicatorBm:90] ? 1 : 0;
ret += [UIView sd_operationDictionaryBm:81] ? 1 : 0;
ret += [UIView sd_setImageLoadOperationForkeyBm:73] ? 1 : 0;
ret += [UIView sd_cancelImageLoadOperationWithKeyBm:97] ? 1 : 0;
ret += [UIView sd_removeImageLoadOperationWithKeyBm:0] ? 1 : 0;
ret += [SDWebImageFrame frameWithImageDurationBm:63] ? 1 : 0;
ret += [UIImageView sd_setHighlightedImageWithURLBm:70] ? 1 : 0;
ret += [UIImageView sd_setHighlightedImageWithURLOptionsBm:17] ? 1 : 0;
ret += [UIImageView sd_setHighlightedImageWithURLCompletedBm:45] ? 1 : 0;
ret += [UIImageView sd_setHighlightedImageWithURLOptionsCompletedBm:86] ? 1 : 0;
ret += [UIImageView sd_setHighlightedImageWithURLOptionsProgressCompletedBm:94] ? 1 : 0;
ret += [SDWebImageManager sharedManagerBm:12] ? 1 : 0;
ret += [SDWebImageManager initBm:18] ? 1 : 0;
ret += [SDWebImageManager initWithCacheDownloaderBm:58] ? 1 : 0;
ret += [SDWebImageManager cacheKeyForURLBm:73] ? 1 : 0;
ret += [SDWebImageManager scaledImageForKeyImageBm:60] ? 1 : 0;
ret += [SDWebImageManager cachedImageExistsForURLCompletionBm:35] ? 1 : 0;
ret += [SDWebImageManager diskImageExistsForURLCompletionBm:96] ? 1 : 0;
ret += [SDWebImageManager loadImageWithURLOptionsProgressCompletedBm:86] ? 1 : 0;
ret += [SDWebImageManager saveImageToCacheForurlBm:10] ? 1 : 0;
ret += [SDWebImageManager cancelAllBm:69] ? 1 : 0;
ret += [SDWebImageManager isRunningBm:36] ? 1 : 0;
ret += [SDWebImageManager safelyRemoveOperationFromRunningBm:83] ? 1 : 0;
ret += [SDWebImageManager callCompletionBlockForOperationCompletionErrorUrlBm:49] ? 1 : 0;
ret += [SDWebImageManager callCompletionBlockForOperationCompletionImageDataErrorCachetypeFinishedUrlBm:90] ? 1 : 0;
ret += [SDWebImageDownloadToken cancelBm:98] ? 1 : 0;
ret += [SDWebImageDownloader initializeBm:94] ? 1 : 0;
ret += [SDWebImageDownloader sharedDownloaderBm:21] ? 1 : 0;
ret += [SDWebImageDownloader initBm:85] ? 1 : 0;
ret += [SDWebImageDownloader initWithSessionConfigurationBm:83] ? 1 : 0;
ret += [SDWebImageDownloader invalidateSessionAndCancelBm:97] ? 1 : 0;
ret += [SDWebImageDownloader deallocBm:39] ? 1 : 0;
ret += [SDWebImageDownloader setValueForhttpheaderfieldBm:30] ? 1 : 0;
ret += [SDWebImageDownloader valueForHTTPHeaderFieldBm:53] ? 1 : 0;
ret += [SDWebImageDownloader allHTTPHeaderFieldsBm:36] ? 1 : 0;
ret += [SDWebImageDownloader setMaxConcurrentDownloadsBm:74] ? 1 : 0;
ret += [SDWebImageDownloader currentDownloadCountBm:28] ? 1 : 0;
ret += [SDWebImageDownloader maxConcurrentDownloadsBm:86] ? 1 : 0;
ret += [SDWebImageDownloader sessionConfigurationBm:33] ? 1 : 0;
ret += [SDWebImageDownloader setOperationClassBm:19] ? 1 : 0;
ret += [SDWebImageDownloader downloadImageWithURLOptionsProgressCompletedBm:75] ? 1 : 0;
ret += [SDWebImageDownloader cancelBm:22] ? 1 : 0;
ret += [SDWebImageDownloader addProgressCallbackCompletedblockForurlCreatecallbackBm:31] ? 1 : 0;
ret += [SDWebImageDownloader setSuspendedBm:45] ? 1 : 0;
ret += [SDWebImageDownloader cancelAllDownloadsBm:2] ? 1 : 0;
ret += [SDWebImageDownloader operationWithTaskBm:27] ? 1 : 0;
ret += [SDWebImageDownloader URLSessionDatataskDidreceiveresponseCompletionhandlerBm:99] ? 1 : 0;
ret += [SDWebImageDownloader URLSessionDatataskDidreceivedataBm:22] ? 1 : 0;
ret += [SDWebImageDownloader URLSessionDatataskWillcacheresponseCompletionhandlerBm:18] ? 1 : 0;
ret += [SDWebImageDownloader URLSessionTaskDidcompletewitherrorBm:64] ? 1 : 0;
ret += [SDWebImageDownloader URLSessionTaskWillperformhttpredirectionNewrequestCompletionhandlerBm:26] ? 1 : 0;
ret += [SDWebImageDownloader URLSessionTaskDidreceivechallengeCompletionhandlerBm:61] ? 1 : 0;
ret += [SDWebImageCodersManager sharedInstanceBm:19] ? 1 : 0;
ret += [SDWebImageCodersManager initBm:19] ? 1 : 0;
ret += [SDWebImageCodersManager addCoderBm:85] ? 1 : 0;
ret += [SDWebImageCodersManager removeCoderBm:74] ? 1 : 0;
ret += [SDWebImageCodersManager canDecodeFromDataBm:70] ? 1 : 0;
ret += [SDWebImageCodersManager canEncodeToFormatBm:93] ? 1 : 0;
ret += [SDWebImageCodersManager decodedImageWithDataBm:88] ? 1 : 0;
ret += [SDWebImageCodersManager decompressedImageWithImageDataOptionsBm:97] ? 1 : 0;
ret += [SDWebImageCodersManager encodedDataWithImageFormatBm:92] ? 1 : 0;
ret += [UIImage decodedImageWithImageBm:63] ? 1 : 0;
ret += [UIImage decodedAndScaledDownImageWithImageBm:91] ? 1 : 0;
ret += [SDWebImagePrefetcher sharedImagePrefetcherBm:67] ? 1 : 0;
ret += [SDWebImagePrefetcher initBm:80] ? 1 : 0;
ret += [SDWebImagePrefetcher initWithImageManagerBm:15] ? 1 : 0;
ret += [SDWebImagePrefetcher setMaxConcurrentDownloadsBm:0] ? 1 : 0;
ret += [SDWebImagePrefetcher maxConcurrentDownloadsBm:6] ? 1 : 0;
ret += [SDWebImagePrefetcher startPrefetchingAtIndexBm:20] ? 1 : 0;
ret += [SDWebImagePrefetcher reportStatusBm:43] ? 1 : 0;
ret += [SDWebImagePrefetcher prefetchURLsBm:19] ? 1 : 0;
ret += [SDWebImagePrefetcher prefetchURLsProgressCompletedBm:81] ? 1 : 0;
ret += [SDWebImagePrefetcher cancelPrefetchingBm:42] ? 1 : 0;
ret += [SDWebImageCoderHelper animatedImageWithFramesBm:34] ? 1 : 0;
ret += [SDWebImageCoderHelper framesFromAnimatedImageBm:5] ? 1 : 0;
ret += [SDWebImageCoderHelper imageOrientationFromEXIFOrientationBm:36] ? 1 : 0;
ret += [SDWebImageCoderHelper exifOrientationFromImageOrientationBm:77] ? 1 : 0;
ret += [UIImage sd_imageLoopCountBm:97] ? 1 : 0;
ret += [UIImage setSd_imageLoopCountBm:79] ? 1 : 0;
ret += [UIImage sd_imageLoopCountBm:11] ? 1 : 0;
ret += [UIImage setSd_imageLoopCountBm:66] ? 1 : 0;
ret += [UIImage sd_imageFormatBm:83] ? 1 : 0;
ret += [UIImage setSd_imageFormatBm:34] ? 1 : 0;
ret += [UIImage sd_imageWithDataBm:17] ? 1 : 0;
ret += [UIImage sd_imageDataBm:65] ? 1 : 0;
ret += [UIImage sd_imageDataAsFormatBm:6] ? 1 : 0;
ret += [UIImage sd_animatedGIFWithDataBm:6] ? 1 : 0;
ret += [UIImage isGIFBm:17] ? 1 : 0;
ret += [MBProgressHUD createMBProgressHUDviewWithMessageWithviewBm:71] ? 1 : 0;
ret += [MBProgressHUD createMBProgressHUDviewWithMessageIswindiwBm:90] ? 1 : 0;
ret += [MBProgressHUD showTipMessageInWindowBm:60] ? 1 : 0;
ret += [MBProgressHUD showTipMessageInViewBm:72] ? 1 : 0;
ret += [MBProgressHUD showTipMessageInWindowTimerBm:41] ? 1 : 0;
ret += [MBProgressHUD showTipMessageInViewTimerBm:59] ? 1 : 0;
ret += [MBProgressHUD showTipMessageIswindowTimerBm:52] ? 1 : 0;
ret += [MBProgressHUD showActivityMessageInWindowBm:79] ? 1 : 0;
ret += [MBProgressHUD showActivityMessageInViewWithmessageBm:49] ? 1 : 0;
ret += [MBProgressHUD showActivityMessageInViewBm:54] ? 1 : 0;
ret += [MBProgressHUD showActivityMessageInWindowTimerBm:98] ? 1 : 0;
ret += [MBProgressHUD showActivityMessageInViewTimerBm:81] ? 1 : 0;
ret += [MBProgressHUD showActivityMessageInviewTimerBm:1] ? 1 : 0;
ret += [MBProgressHUD showActivityMessageIswindowTimerBm:10] ? 1 : 0;
ret += [MBProgressHUD showSuccessMessageBm:1] ? 1 : 0;
ret += [MBProgressHUD showErrorMessageBm:58] ? 1 : 0;
ret += [MBProgressHUD showInfoMessageBm:60] ? 1 : 0;
ret += [MBProgressHUD showWarnMessageBm:75] ? 1 : 0;
ret += [MBProgressHUD showCustomIconInWindowMessageBm:71] ? 1 : 0;
ret += [MBProgressHUD showCustomIconInViewMessageBm:65] ? 1 : 0;
ret += [MBProgressHUD showCustomIconMessageIswindowBm:19] ? 1 : 0;
ret += [MBProgressHUD hideHUDBm:94] ? 1 : 0;
ret += [MBProgressHUD getCurrentWindowVCBm:26] ? 1 : 0;
ret += [MBProgressHUD getCurrentUIVCBm:67] ? 1 : 0;
ret += [RACValueTransformer allowsReverseTransformationBmBm:93] ? 1 : 0;
ret += [RACValueTransformer transformedValueBmBm:68] ? 1 : 0;
ret += [RACValueTransformer transformerWithBlockBmBm:65] ? 1 : 0;
ret += [GPUImageCrosshairGenerator initBmBm:7] ? 1 : 0;
ret += [GPUImageCrosshairGenerator renderCrosshairsFromArrayCountFrametimeBmBm:44] ? 1 : 0;
ret += [GPUImageCrosshairGenerator renderToTextureWithVerticesTexturecoordinatesBmBm:64] ? 1 : 0;
ret += [GPUImageCrosshairGenerator setCrosshairWidthBmBm:57] ? 1 : 0;
ret += [GPUImageCrosshairGenerator setCrosshairColorRedGreenBlueBmBm:38] ? 1 : 0;
ret += [AFImageDownloader defaultURLCacheBmBm:30] ? 1 : 0;
ret += [AFImageDownloader defaultURLSessionConfigurationBmBm:21] ? 1 : 0;
ret += [AFImageDownloader initBmBm:32] ? 1 : 0;
ret += [AFImageDownloader initWithSessionConfigurationBmBm:81] ? 1 : 0;
ret += [AFImageDownloader initWithSessionManagerDownloadprioritizationMaximumactivedownloadsImagecacheBmBm:58] ? 1 : 0;
ret += [AFImageDownloader defaultInstanceBmBm:41] ? 1 : 0;
ret += [AFImageDownloader downloadImageForURLRequestSuccessFailureBmBm:10] ? 1 : 0;
ret += [AFImageDownloader downloadImageForURLRequestWithreceiptidSuccessFailureBmBm:29] ? 1 : 0;
ret += [AFImageDownloader cancelTaskForImageDownloadReceiptBmBm:97] ? 1 : 0;
ret += [AFImageDownloader safelyRemoveMergedTaskWithURLIdentifierBmBm:4] ? 1 : 0;
ret += [AFImageDownloader removeMergedTaskWithURLIdentifierBmBm:4] ? 1 : 0;
ret += [AFImageDownloader safelyDecrementActiveTaskCountBmBm:62] ? 1 : 0;
ret += [AFImageDownloader safelyStartNextTaskIfNecessaryBmBm:86] ? 1 : 0;
ret += [AFImageDownloader startMergedTaskBmBm:40] ? 1 : 0;
ret += [AFImageDownloader enqueueMergedTaskBmBm:49] ? 1 : 0;
ret += [AFImageDownloader dequeueMergedTaskBmBm:16] ? 1 : 0;
ret += [AFImageDownloader isActiveRequestCountBelowMaximumLimitBmBm:99] ? 1 : 0;
ret += [AFImageDownloader safelyGetMergedTaskBmBm:45] ? 1 : 0;
ret += [NSDictionary yy_modelDictionaryWithClassJsonBmBm:23] ? 1 : 0;
ret += [NSDictionary yy_modelDictionaryWithClassDictionaryBmBm:10] ? 1 : 0;
ret += [GPUImageKuwaharaFilter initBmBm:89] ? 1 : 0;
ret += [GPUImageKuwaharaFilter setRadiusBmBm:1] ? 1 : 0;
ret += [GPUImageKuwaharaRadius3Filter initBmBm:99] ? 1 : 0;
ret += [GPUImageHalftoneFilter initBmBm:89] ? 1 : 0;
ret += [DGActivityIndicatorBallRotateAnimation setupAnimationInLayerWithsizeTintcolorBmBm:27] ? 1 : 0;
ret += [NSArray rac_sequenceBmBm:37] ? 1 : 0;
ret += [GPUImageFramebufferCache initBmBm:95] ? 1 : 0;
ret += [GPUImageFramebufferCache hashForSizeTextureoptionsOnlytextureBmBm:99] ? 1 : 0;
ret += [GPUImageFramebufferCache fetchFramebufferForSizeTextureoptionsOnlytextureBmBm:65] ? 1 : 0;
ret += [GPUImageFramebufferCache fetchFramebufferForSizeOnlytextureBmBm:67] ? 1 : 0;
ret += [GPUImageFramebufferCache returnFramebufferToCacheBmBm:16] ? 1 : 0;
ret += [GPUImageFramebufferCache purgeAllUnassignedFramebuffersBmBm:63] ? 1 : 0;
ret += [GPUImageFramebufferCache addFramebufferToActiveImageCaptureListBmBm:38] ? 1 : 0;
ret += [GPUImageFramebufferCache removeFramebufferFromActiveImageCaptureListBmBm:36] ? 1 : 0;
ret += [RACKVOTrampoline initWithTargetObserverKeypathOptionsBlockBmBm:3] ? 1 : 0;
ret += [RACKVOTrampoline deallocBmBm:21] ? 1 : 0;
ret += [RACKVOTrampoline disposeBmBm:12] ? 1 : 0;
ret += [RACKVOTrampoline observeValueForKeyPathOfobjectChangeContextBmBm:58] ? 1 : 0;
ret += [AFURLSessionManager initBmBm:29] ? 1 : 0;
ret += [AFURLSessionManager initWithSessionConfigurationBmBm:68] ? 1 : 0;
ret += [AFURLSessionManager deallocBmBm:33] ? 1 : 0;
ret += [AFURLSessionManager sessionBmBm:6] ? 1 : 0;
ret += [AFURLSessionManager taskDescriptionForSessionTasksBmBm:12] ? 1 : 0;
ret += [AFURLSessionManager taskDidResumeBmBm:51] ? 1 : 0;
ret += [AFURLSessionManager taskDidSuspendBmBm:56] ? 1 : 0;
ret += [AFURLSessionManager delegateForTaskBmBm:80] ? 1 : 0;
ret += [AFURLSessionManager setDelegateFortaskBmBm:90] ? 1 : 0;
ret += [AFURLSessionManager addDelegateForDataTaskUploadprogressDownloadprogressCompletionhandlerBmBm:80] ? 1 : 0;
ret += [AFURLSessionManager addDelegateForUploadTaskProgressCompletionhandlerBmBm:73] ? 1 : 0;
ret += [AFURLSessionManager addDelegateForDownloadTaskProgressDestinationCompletionhandlerBmBm:28] ? 1 : 0;
ret += [AFURLSessionManager removeDelegateForTaskBmBm:26] ? 1 : 0;
ret += [AFURLSessionManager tasksForKeyPathBmBm:23] ? 1 : 0;
ret += [AFURLSessionManager tasksBmBm:67] ? 1 : 0;
ret += [AFURLSessionManager dataTasksBmBm:63] ? 1 : 0;
ret += [AFURLSessionManager uploadTasksBmBm:95] ? 1 : 0;
ret += [AFURLSessionManager downloadTasksBmBm:79] ? 1 : 0;
ret += [AFURLSessionManager invalidateSessionCancelingTasksResetsessionBmBm:51] ? 1 : 0;
ret += [AFURLSessionManager setResponseSerializerBmBm:45] ? 1 : 0;
ret += [AFURLSessionManager addNotificationObserverForTaskBmBm:57] ? 1 : 0;
ret += [AFURLSessionManager removeNotificationObserverForTaskBmBm:89] ? 1 : 0;
ret += [AFURLSessionManager dataTaskWithRequestUploadprogressDownloadprogressCompletionhandlerBmBm:7] ? 1 : 0;
ret += [AFURLSessionManager uploadTaskWithRequestFromfileProgressCompletionhandlerBmBm:72] ? 1 : 0;
ret += [AFURLSessionManager uploadTaskWithRequestFromdataProgressCompletionhandlerBmBm:86] ? 1 : 0;
ret += [AFURLSessionManager uploadTaskWithStreamedRequestProgressCompletionhandlerBmBm:4] ? 1 : 0;
ret += [AFURLSessionManager downloadTaskWithRequestProgressDestinationCompletionhandlerBmBm:99] ? 1 : 0;
ret += [AFURLSessionManager downloadTaskWithResumeDataProgressDestinationCompletionhandlerBmBm:23] ? 1 : 0;
ret += [AFURLSessionManager uploadProgressForTaskBmBm:93] ? 1 : 0;
ret += [AFURLSessionManager downloadProgressForTaskBmBm:94] ? 1 : 0;
ret += [AFURLSessionManager setSessionDidBecomeInvalidBlockBmBm:42] ? 1 : 0;
ret += [AFURLSessionManager setSessionDidReceiveAuthenticationChallengeBlockBmBm:66] ? 1 : 0;
ret += [AFURLSessionManager setDidFinishEventsForBackgroundURLSessionBlockBmBm:51] ? 1 : 0;
ret += [AFURLSessionManager setTaskNeedNewBodyStreamBlockBmBm:5] ? 1 : 0;
ret += [AFURLSessionManager setTaskWillPerformHTTPRedirectionBlockBmBm:42] ? 1 : 0;
ret += [AFURLSessionManager setTaskDidSendBodyDataBlockBmBm:39] ? 1 : 0;
ret += [AFURLSessionManager setTaskDidCompleteBlockBmBm:70] ? 1 : 0;
ret += [AFURLSessionManager setTaskDidFinishCollectingMetricsBlockBmBm:37] ? 1 : 0;
ret += [AFURLSessionManager setDataTaskDidReceiveResponseBlockBmBm:84] ? 1 : 0;
ret += [AFURLSessionManager setDataTaskDidBecomeDownloadTaskBlockBmBm:10] ? 1 : 0;
ret += [AFURLSessionManager setDataTaskDidReceiveDataBlockBmBm:85] ? 1 : 0;
ret += [AFURLSessionManager setDataTaskWillCacheResponseBlockBmBm:34] ? 1 : 0;
ret += [AFURLSessionManager setDownloadTaskDidFinishDownloadingBlockBmBm:93] ? 1 : 0;
ret += [AFURLSessionManager setDownloadTaskDidWriteDataBlockBmBm:34] ? 1 : 0;
ret += [AFURLSessionManager setDownloadTaskDidResumeBlockBmBm:21] ? 1 : 0;
ret += [AFURLSessionManager descriptionBmBm:71] ? 1 : 0;
ret += [AFURLSessionManager respondsToSelectorBmBm:22] ? 1 : 0;
ret += [AFURLSessionManager URLSessionDidbecomeinvalidwitherrorBmBm:3] ? 1 : 0;
ret += [AFURLSessionManager URLSessionDidreceivechallengeCompletionhandlerBmBm:81] ? 1 : 0;
ret += [AFURLSessionManager URLSessionTaskWillperformhttpredirectionNewrequestCompletionhandlerBmBm:92] ? 1 : 0;
ret += [AFURLSessionManager URLSessionTaskDidreceivechallengeCompletionhandlerBmBm:58] ? 1 : 0;
ret += [AFURLSessionManager serverTrustErrorForServerTrustUrlBmBm:46] ? 1 : 0;
ret += [AFURLSessionManager URLSessionTaskNeednewbodystreamBmBm:88] ? 1 : 0;
ret += [AFURLSessionManager URLSessionTaskDidsendbodydataTotalbytessentTotalbytesexpectedtosendBmBm:85] ? 1 : 0;
ret += [AFURLSessionManager URLSessionTaskDidcompletewitherrorBmBm:24] ? 1 : 0;
ret += [AFURLSessionManager URLSessionTaskDidfinishcollectingmetricsBmBm:25] ? 1 : 0;
ret += [AFURLSessionManager URLSessionDatataskDidreceiveresponseCompletionhandlerBmBm:83] ? 1 : 0;
ret += [AFURLSessionManager URLSessionDatataskDidbecomedownloadtaskBmBm:80] ? 1 : 0;
ret += [AFURLSessionManager URLSessionDatataskDidreceivedataBmBm:61] ? 1 : 0;
ret += [AFURLSessionManager URLSessionDatataskWillcacheresponseCompletionhandlerBmBm:46] ? 1 : 0;
ret += [AFURLSessionManager URLSessionDidFinishEventsForBackgroundURLSessionBmBm:75] ? 1 : 0;
ret += [AFURLSessionManager URLSessionDownloadtaskDidfinishdownloadingtourlBmBm:44] ? 1 : 0;
ret += [AFURLSessionManager URLSessionDownloadtaskDidwritedataTotalbyteswrittenTotalbytesexpectedtowriteBmBm:74] ? 1 : 0;
ret += [AFURLSessionManager URLSessionDownloadtaskDidresumeatoffsetExpectedtotalbytesBmBm:34] ? 1 : 0;
ret += [AFURLSessionManager supportsSecureCodingBmBm:6] ? 1 : 0;
ret += [AFURLSessionManager initWithCoderBmBm:90] ? 1 : 0;
ret += [AFURLSessionManager encodeWithCoderBmBm:25] ? 1 : 0;
ret += [AFURLSessionManager copyWithZoneBmBm:94] ? 1 : 0;
ret += [RACBlockTrampoline initWithBlockBmBm:92] ? 1 : 0;
ret += [RACBlockTrampoline invokeBlockWithargumentsBmBm:16] ? 1 : 0;
ret += [RACBlockTrampoline invokeWithArgumentsBmBm:43] ? 1 : 0;
ret += [RACBlockTrampoline selectorForArgumentCountBmBm:84] ? 1 : 0;
ret += [RACBlockTrampoline performWithBmBm:64] ? 1 : 0;
ret += [RACBlockTrampoline performWithObj1BmBm:78] ? 1 : 0;
ret += [RACBlockTrampoline performWithObj1Obj2BmBm:47] ? 1 : 0;
ret += [RACBlockTrampoline performWithObj1Obj2Obj3BmBm:30] ? 1 : 0;
ret += [RACBlockTrampoline performWithObj1Obj2Obj3Obj4BmBm:35] ? 1 : 0;
ret += [RACBlockTrampoline performWithObj1Obj2Obj3Obj4Obj5BmBm:56] ? 1 : 0;
ret += [RACBlockTrampoline performWithObj1Obj2Obj3Obj4Obj5Obj6BmBm:13] ? 1 : 0;
ret += [RACBlockTrampoline performWithObj1Obj2Obj3Obj4Obj5Obj6Obj7BmBm:69] ? 1 : 0;
ret += [RACBlockTrampoline performWithObj1Obj2Obj3Obj4Obj5Obj6Obj7Obj8BmBm:4] ? 1 : 0;
ret += [RACBlockTrampoline performWithObj1Obj2Obj3Obj4Obj5Obj6Obj7Obj8Obj9BmBm:82] ? 1 : 0;
ret += [RACBlockTrampoline performWithObj1Obj2Obj3Obj4Obj5Obj6Obj7Obj8Obj9Obj10BmBm:84] ? 1 : 0;
ret += [RACBlockTrampoline performWithObj1Obj2Obj3Obj4Obj5Obj6Obj7Obj8Obj9Obj10Obj11BmBm:96] ? 1 : 0;
ret += [RACBlockTrampoline performWithObj1Obj2Obj3Obj4Obj5Obj6Obj7Obj8Obj9Obj10Obj11Obj12BmBm:2] ? 1 : 0;
ret += [RACBlockTrampoline performWithObj1Obj2Obj3Obj4Obj5Obj6Obj7Obj8Obj9Obj10Obj11Obj12Obj13BmBm:19] ? 1 : 0;
ret += [RACBlockTrampoline performWithObj1Obj2Obj3Obj4Obj5Obj6Obj7Obj8Obj9Obj10Obj11Obj12Obj13Obj14BmBm:29] ? 1 : 0;
ret += [GPUImageRGBFilter initBmBm:29] ? 1 : 0;
ret += [GPUImageRGBFilter setRedBmBm:60] ? 1 : 0;
ret += [GPUImageRGBFilter setGreenBmBm:89] ? 1 : 0;
ret += [GPUImageRGBFilter setBlueBmBm:29] ? 1 : 0;
ret += [NSObject _yy_dictionaryWithJSONBmBm:77] ? 1 : 0;
ret += [NSObject yy_modelWithJSONBmBm:82] ? 1 : 0;
ret += [NSObject yy_modelWithDictionaryBmBm:97] ? 1 : 0;
ret += [NSObject yy_modelSetWithJSONBmBm:70] ? 1 : 0;
ret += [NSObject yy_modelSetWithDictionaryBmBm:3] ? 1 : 0;
ret += [NSObject yy_modelToJSONObjectBmBm:66] ? 1 : 0;
ret += [NSObject yy_modelToJSONDataBmBm:84] ? 1 : 0;
ret += [NSObject yy_modelToJSONStringBmBm:98] ? 1 : 0;
ret += [NSObject yy_modelCopyBmBm:56] ? 1 : 0;
ret += [NSObject yy_modelEncodeWithCoderBmBm:45] ? 1 : 0;
ret += [NSObject yy_modelInitWithCoderBmBm:32] ? 1 : 0;
ret += [NSObject yy_modelHashBmBm:35] ? 1 : 0;
ret += [NSObject yy_modelIsEqualBmBm:98] ? 1 : 0;
ret += [NSObject yy_modelDescriptionBmBm:14] ? 1 : 0;
ret += [NSValue rac_descriptionBmBm:42] ? 1 : 0;
ret += [GPUImageSoftEleganceFilter initBmBm:54] ? 1 : 0;
ret += [GPUImageColorBlendFilter initBmBm:43] ? 1 : 0;
ret += [UIView setKeyboardDistanceFromTextFieldBmBm:54] ? 1 : 0;
ret += [UIView keyboardDistanceFromTextFieldBmBm:23] ? 1 : 0;
ret += [UIView setIgnoreSwitchingByNextPreviousBmBm:55] ? 1 : 0;
ret += [UIView ignoreSwitchingByNextPreviousBmBm:42] ? 1 : 0;
ret += [UIView setEnableModeBmBm:86] ? 1 : 0;
ret += [UIView enableModeBmBm:28] ? 1 : 0;
ret += [UIView setShouldResignOnTouchOutsideModeBmBm:88] ? 1 : 0;
ret += [UIView shouldResignOnTouchOutsideModeBmBm:38] ? 1 : 0;
ret += [UIBarButtonItem rac_commandBmBm:48] ? 1 : 0;
ret += [UIBarButtonItem setRac_commandBmBm:32] ? 1 : 0;
ret += [UIBarButtonItem rac_hijackActionAndTargetIfNeededBmBm:83] ? 1 : 0;
ret += [UIBarButtonItem rac_commandPerformActionBmBm:82] ? 1 : 0;
ret += [RACDynamicSequence sequenceWithHeadBlockTailblockBmBm:21] ? 1 : 0;
ret += [RACDynamicSequence sequenceWithLazyDependencyHeadblockTailblockBmBm:55] ? 1 : 0;
ret += [RACDynamicSequence deallocBmBm:71] ? 1 : 0;
ret += [RACDynamicSequence headBmBm:12] ? 1 : 0;
ret += [RACDynamicSequence tailBmBm:46] ? 1 : 0;
ret += [RACDynamicSequence descriptionBmBm:80] ? 1 : 0;
ret += [UIControl rac_channelForControlEventsKeyNilvalueBmBm:56] ? 1 : 0;
ret += [AFHTTPRequestSerializer serializerBmBm:24] ? 1 : 0;
ret += [AFHTTPRequestSerializer initBmBm:60] ? 1 : 0;
ret += [AFHTTPRequestSerializer deallocBmBm:51] ? 1 : 0;
ret += [AFHTTPRequestSerializer setAllowsCellularAccessBmBm:10] ? 1 : 0;
ret += [AFHTTPRequestSerializer setCachePolicyBmBm:14] ? 1 : 0;
ret += [AFHTTPRequestSerializer setHTTPShouldHandleCookiesBmBm:80] ? 1 : 0;
ret += [AFHTTPRequestSerializer setHTTPShouldUsePipeliningBmBm:92] ? 1 : 0;
ret += [AFHTTPRequestSerializer setNetworkServiceTypeBmBm:40] ? 1 : 0;
ret += [AFHTTPRequestSerializer setTimeoutIntervalBmBm:2] ? 1 : 0;
ret += [AFHTTPRequestSerializer HTTPRequestHeadersBmBm:2] ? 1 : 0;
ret += [AFHTTPRequestSerializer setValueForhttpheaderfieldBmBm:48] ? 1 : 0;
ret += [AFHTTPRequestSerializer valueForHTTPHeaderFieldBmBm:92] ? 1 : 0;
ret += [AFHTTPRequestSerializer setAuthorizationHeaderFieldWithUsernamePasswordBmBm:22] ? 1 : 0;
ret += [AFHTTPRequestSerializer clearAuthorizationHeaderBmBm:16] ? 1 : 0;
ret += [AFHTTPRequestSerializer setQueryStringSerializationWithStyleBmBm:85] ? 1 : 0;
ret += [AFHTTPRequestSerializer setQueryStringSerializationWithBlockBmBm:75] ? 1 : 0;
ret += [AFHTTPRequestSerializer requestWithMethodUrlstringParametersErrorBmBm:52] ? 1 : 0;
ret += [AFHTTPRequestSerializer multipartFormRequestWithMethodUrlstringParametersConstructingbodywithblockErrorBmBm:51] ? 1 : 0;
ret += [AFHTTPRequestSerializer requestWithMultipartFormRequestWritingstreamcontentstofileCompletionhandlerBmBm:87] ? 1 : 0;
ret += [AFHTTPRequestSerializer requestBySerializingRequestWithparametersErrorBmBm:84] ? 1 : 0;
ret += [AFHTTPRequestSerializer automaticallyNotifiesObserversForKeyBmBm:4] ? 1 : 0;
ret += [AFHTTPRequestSerializer observeValueForKeyPathOfobjectChangeContextBmBm:27] ? 1 : 0;
ret += [AFHTTPRequestSerializer supportsSecureCodingBmBm:60] ? 1 : 0;
ret += [AFHTTPRequestSerializer initWithCoderBmBm:88] ? 1 : 0;
ret += [AFHTTPRequestSerializer encodeWithCoderBmBm:90] ? 1 : 0;
ret += [AFHTTPRequestSerializer copyWithZoneBmBm:62] ? 1 : 0;
ret += [UITextField selectAllTextBmBm:5] ? 1 : 0;
ret += [UITextField setSelectedRangeBmBm:29] ? 1 : 0;
ret += [NSOrderedSet rac_sequenceBmBm:94] ? 1 : 0;
ret += [GPUImageDirectionalNonMaximumSuppressionFilter initBmBm:42] ? 1 : 0;
ret += [GPUImageDirectionalNonMaximumSuppressionFilter setupFilterForSizeBmBm:24] ? 1 : 0;
ret += [GPUImageDirectionalNonMaximumSuppressionFilter setTexelWidthBmBm:11] ? 1 : 0;
ret += [GPUImageDirectionalNonMaximumSuppressionFilter setTexelHeightBmBm:52] ? 1 : 0;
ret += [GPUImageDirectionalNonMaximumSuppressionFilter setLowerThresholdBmBm:45] ? 1 : 0;
ret += [GPUImageDirectionalNonMaximumSuppressionFilter setUpperThresholdBmBm:48] ? 1 : 0;
ret += [TOCropScrollView touchesBeganWitheventBmBm:74] ? 1 : 0;
ret += [TOCropScrollView touchesEndedWitheventBmBm:55] ? 1 : 0;
ret += [TOCropScrollView touchesCancelledWitheventBmBm:33] ? 1 : 0;
ret += [GPUImageHueFilter initBmBm:58] ? 1 : 0;
ret += [GPUImageHueFilter setHueBmBm:56] ? 1 : 0;
ret += [RACEvent isFinishedBmBm:23] ? 1 : 0;
ret += [RACEvent errorBmBm:28] ? 1 : 0;
ret += [RACEvent valueBmBm:84] ? 1 : 0;
ret += [RACEvent completedEventBmBm:6] ? 1 : 0;
ret += [RACEvent eventWithErrorBmBm:62] ? 1 : 0;
ret += [RACEvent eventWithValueBmBm:18] ? 1 : 0;
ret += [RACEvent initWithEventTypeObjectBmBm:89] ? 1 : 0;
ret += [RACEvent copyWithZoneBmBm:57] ? 1 : 0;
ret += [RACEvent descriptionBmBm:14] ? 1 : 0;
ret += [RACEvent hashBmBm:17] ? 1 : 0;
ret += [RACEvent isEqualBmBm:42] ? 1 : 0;
ret += [GPUImageOpeningFilter initBmBm:45] ? 1 : 0;
ret += [GPUImageOpeningFilter initWithRadiusBmBm:41] ? 1 : 0;
ret += [GPUImageOpeningFilter setVerticalTexelSpacingBmBm:30] ? 1 : 0;
ret += [GPUImageOpeningFilter setHorizontalTexelSpacingBmBm:94] ? 1 : 0;
ret += [DGActivityIndicatorTwoDotsAnimation setupAnimationInLayerWithsizeTintcolorBmBm:3] ? 1 : 0;
ret += [NSInvocation rac_setArgumentAtindexBmBm:88] ? 1 : 0;
ret += [NSInvocation rac_argumentAtIndexBmBm:88] ? 1 : 0;
ret += [NSInvocation rac_argumentsTupleBmBm:25] ? 1 : 0;
ret += [NSInvocation setRac_argumentsTupleBmBm:1] ? 1 : 0;
ret += [NSInvocation rac_returnValueBmBm:51] ? 1 : 0;
ret += [GPUImageCropFilter initWithCropRegionBmBm:57] ? 1 : 0;
ret += [GPUImageCropFilter initBmBm:47] ? 1 : 0;
ret += [GPUImageCropFilter setInputSizeAtindexBmBm:86] ? 1 : 0;
ret += [GPUImageCropFilter calculateCropTextureCoordinatesBmBm:63] ? 1 : 0;
ret += [GPUImageCropFilter newFrameReadyAtTimeAtindexBmBm:78] ? 1 : 0;
ret += [GPUImageCropFilter setCropRegionBmBm:34] ? 1 : 0;
ret += [GPUImageCropFilter setInputRotationAtindexBmBm:19] ? 1 : 0;
ret += [MAS_VIEW_CONTROLLER mas_topLayoutGuideBmBm:8] ? 1 : 0;
ret += [MAS_VIEW_CONTROLLER mas_topLayoutGuideTopBmBm:31] ? 1 : 0;
ret += [MAS_VIEW_CONTROLLER mas_topLayoutGuideBottomBmBm:66] ? 1 : 0;
ret += [MAS_VIEW_CONTROLLER mas_bottomLayoutGuideBmBm:32] ? 1 : 0;
ret += [MAS_VIEW_CONTROLLER mas_bottomLayoutGuideTopBmBm:57] ? 1 : 0;
ret += [MAS_VIEW_CONTROLLER mas_bottomLayoutGuideBottomBmBm:60] ? 1 : 0;
ret += [GPUImageSepiaFilter initBmBm:59] ? 1 : 0;
ret += [UISegmentedControl rac_newSelectedSegmentIndexChannelWithNilValueBmBm:9] ? 1 : 0;
ret += [GPUImageSaturationBlendFilter initBmBm:72] ? 1 : 0;
ret += [IQToolbar initializeBmBm:83] ? 1 : 0;
ret += [IQToolbar initializeBmBm:52] ? 1 : 0;
ret += [IQToolbar initWithFrameBmBm:4] ? 1 : 0;
ret += [IQToolbar initWithCoderBmBm:58] ? 1 : 0;
ret += [IQToolbar deallocBmBm:92] ? 1 : 0;
ret += [IQToolbar previousBarButtonBmBm:22] ? 1 : 0;
ret += [IQToolbar nextBarButtonBmBm:90] ? 1 : 0;
ret += [IQToolbar titleBarButtonBmBm:70] ? 1 : 0;
ret += [IQToolbar doneBarButtonBmBm:55] ? 1 : 0;
ret += [IQToolbar fixedSpaceBarButtonBmBm:21] ? 1 : 0;
ret += [IQToolbar sizeThatFitsBmBm:82] ? 1 : 0;
ret += [IQToolbar setTintColorBmBm:50] ? 1 : 0;
ret += [IQToolbar layoutSubviewsBmBm:95] ? 1 : 0;
ret += [IQToolbar enableInputClicksWhenVisibleBmBm:25] ? 1 : 0;
ret += [AFXMLParserResponseSerializer serializerBmBm:12] ? 1 : 0;
ret += [AFXMLParserResponseSerializer initBmBm:12] ? 1 : 0;
ret += [AFXMLParserResponseSerializer responseObjectForResponseDataErrorBmBm:43] ? 1 : 0;
ret += [DGActivityIndicatorTriplePulseAnimation setupAnimationInLayerWithsizeTintcolorBmBm:28] ? 1 : 0;
ret += [GPUImageTiltShiftFilter initBmBm:13] ? 1 : 0;
ret += [GPUImageTiltShiftFilter setBlurRadiusInPixelsBmBm:19] ? 1 : 0;
ret += [GPUImageTiltShiftFilter blurRadiusInPixelsBmBm:29] ? 1 : 0;
ret += [GPUImageTiltShiftFilter setTopFocusLevelBmBm:69] ? 1 : 0;
ret += [GPUImageTiltShiftFilter setBottomFocusLevelBmBm:52] ? 1 : 0;
ret += [GPUImageTiltShiftFilter setFocusFallOffRateBmBm:48] ? 1 : 0;
return ret;
}