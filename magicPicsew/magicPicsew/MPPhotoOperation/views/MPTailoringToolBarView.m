//
//  MPTailoringToolBarView.m
//  magicPicsew
//
//  Created by 123 on 2020/12/30.
//

#import "MPTailoringToolBarView.h"

@interface MPTailoringToolBarView()

@property (nonatomic, strong) UIButton *MPoperationBtn;

@property (nonatomic, strong) UIButton *MPoperationBtn1;

@property (nonatomic, strong) UIButton *MPoperationBtn2;

@property (nonatomic, strong) UIButton *MPoperationBtn3;

@end
@implementation MPTailoringToolBarView

#pragma mark - 属性懒加载
- (UIButton *)MPoperationBtn{
    if (!_MPoperationBtn) {
        _MPoperationBtn = [[UIButton alloc] init];
    }
    return _MPoperationBtn;
}
- (UIButton *)MPoperationBtn1{
    if (!_MPoperationBtn1) {
        _MPoperationBtn1 = [[UIButton alloc] init];
    }
    return _MPoperationBtn1;
}
- (UIButton *)MPoperationBtn2{
    if (!_MPoperationBtn2) {
        _MPoperationBtn2 = [[UIButton alloc] init];
    }
    return _MPoperationBtn2;
}
- (UIButton *)MPoperationBtn3{
    if (!_MPoperationBtn3) {
        _MPoperationBtn3 = [[UIButton alloc] init];
    }
    return _MPoperationBtn3;
}
@end
