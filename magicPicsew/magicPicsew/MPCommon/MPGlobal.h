//
//  MPGlobal.h
//  magicPicsew
//
//  Created by 123 on 2020/10/29.
//

#ifndef MPGlobal_h
#define MPGlobal_h

#import <Masonry/Masonry.h>
#import <YYModel/YYModel.h>

//多语言调用
#define NSLocalizedString(key, comment) [[NSBundle mainBundle] localizedStringForKey:(key) value:@"" table:nil]

#define MPWeakSelf(type)  __weak typeof(type) weak##type = type;
#define MPStrongSelf(type)  __strong typeof(type) type = weak##type;

/**颜色*/
#define MPH_Color(r, g, b, a) [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:a]

#define MPKeyWindow [UIApplication sharedApplication].keyWindow
#define MPWIDTH [UIScreen mainScreen].bounds.size.width
#define MPHEIGHT [UIScreen mainScreen].bounds.size.height

//判断是否是iPhoneX所有带刘海屏系列的手机
#define is_iPhoneXSeries  ({\
BOOL isSeries = NO;\
if (@available(iOS 11.0, *)) {\
isSeries = [[UIApplication sharedApplication] delegate].window.safeAreaInsets.bottom > 0.0;\
}\
(isSeries);\
})
#endif /* MPGlobal_h */
