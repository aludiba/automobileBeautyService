#ifndef Constants_h
#define Constants_h
typedef enum {
    QMRatioTypeNone = 1,
    QMRatioType11,
    QMRatioType32,
    QMRatioType43,
    QMRatioType54,
    QMRatioType75,
    QMRatioType169,
    QMRatioTypeHorizontal,
    QMRatioTypeVertical,
    QMRatioTypeRotate,
    QMRatioTypeFree
} QMRatioType;
typedef enum {
    QMFlashTypeNone = 1,
    QMFlashTypeAuto,
    QMFlashTypeAlways,
    QMFlashTypeTorch
} QMFlashType;
#define kMainThemeColor     [UIColor colorWithRed:8/255.0 green:157/255.0 blue:184/255.0 alpha:1.0]
#define kFilterPath         [[NSBundle mainBundle] pathForResource:@"Filters" ofType:nil]
#define kScreenSize         [UIScreen mainScreen].bounds.size
#define kScreenW            [UIScreen mainScreen].bounds.size.width
#define kScreenH            [UIScreen mainScreen].bounds.size.height
#define weakSelf()          __weak typeof(self) wself = self;
#define strongSelf()        __strong typeof(self) self = wself;
#define NSStringMake(str)   @#str
#define iPhoneX             (kScreenW == 375.f && kScreenH == 812.f)
#endif 
