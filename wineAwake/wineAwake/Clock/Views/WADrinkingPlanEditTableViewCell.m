//
//  WADrinkingPlanEditTableViewCell.m
//  wineAwake
//
//  Created by bykj on 2019/10/6.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "WADrinkingPlanEditTableViewCell.h"
#import "WADrinkingPlanModel.h"

@interface WADrinkingPlanEditTableViewCell()<UITextFieldDelegate>
@property(nonatomic, strong)UILabel *titleLbl;
@property(nonatomic, strong)UITextField *editText;
@property(nonatomic, strong)UILabel *unitLabel;
@end
@implementation WADrinkingPlanEditTableViewCell
#pragma mark - 属性懒加载
- (UILabel *)titleLbl{
    if (!_titleLbl) {
        _titleLbl = [[UILabel alloc] init];
        _titleLbl.textColor = [UIColor blackColor];
        _titleLbl.font = [UIFont systemFontOfSize:14];
        _titleLbl.numberOfLines = 0;
    }
    return _titleLbl;
}
- (UITextField *)editText{
    if (!_editText) {
        _editText = [[UITextField alloc] init];
        _editText.delegate = self;
        _editText.textColor = [UIColor blackColor];
        _editText.font = [UIFont systemFontOfSize:15];
    }
    return _editText;
}
- (UILabel *)unitLabel{
    if (!_unitLabel) {
        _unitLabel = [[UILabel alloc] init];
        _unitLabel.textColor = [UIColor blackColor];
        _unitLabel.font = [UIFont systemFontOfSize:13];
        _unitLabel.numberOfLines = 0;
    }
    return _unitLabel;
}
@end
