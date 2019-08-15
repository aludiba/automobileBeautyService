//
//  ABMeasurementTitleInputTableViewCell.m
//  AroundTheDB
//
//  Created by bykj on 2019/8/14.
//  Copyright © 2019 hgg. All rights reserved.
//

#import "ABMeasurementTitleInputTableViewCell.h"
#import "ABMeasurementModel.h"

@interface ABMeasurementTitleInputTableViewCell()<UITextFieldDelegate>
@property(nonatomic, strong)UIImageView *writeImgView;
@property(nonatomic, strong)UITextField *writeTextField;
@end
@implementation ABMeasurementTitleInputTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        self.contentView.backgroundColor = ABH_Color(15, 18, 39, 1);
        [self.contentView addSubview:self.writeImgView];
        [self.contentView addSubview:self.writeTextField];
         
         [self.writeTextField mas_makeConstraints:^(MASConstraintMaker *make) {
             make.top.equalTo(self.contentView).offset(10);
             make.centerX.equalTo(self.contentView).offset(7.5);
             make.width.mas_equalTo(140);
             make.height.mas_equalTo(20);
             make.bottom.equalTo(self.contentView).offset(-10);
         }];
         [self.writeImgView mas_makeConstraints:^(MASConstraintMaker *make) {
             make.centerY.equalTo(self.contentView);
             make.trailing.equalTo(self.writeTextField.mas_leading);
             make.width.mas_equalTo(15);
             make.height.mas_equalTo(15);
         }];
    }
    return self;
}
#pragma mark - UITextFieldDelegate
- (void)textFieldDidEndEditing:(UITextField *)textField{
    self.measurementTitle = textField.text;
    if (self.ABMeasurementTitleInputB) {
        self.ABMeasurementTitleInputB(self);
    }
}
//实现UITextField代理方法
- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    [textField resignFirstResponder];//取消第一响应者
    self.measurementTitle = textField.text;
    if (self.ABMeasurementTitleInputB) {
        self.ABMeasurementTitleInputB(self);
    }
    return YES;
}
#pragma mark - 属性懒加载
- (UIImageView *)writeImgView{
    if (!_writeImgView) {
        _writeImgView = [[UIImageView alloc] initWithImage: [UIImage imageNamed:@"AB_write"]];
    }
    return _writeImgView;
}
- (UITextField *)writeTextField{
    if (!_writeTextField) {
        _writeTextField = [[UITextField alloc] init];
        _writeTextField.returnKeyType = UIReturnKeyDone;
        _writeTextField.textColor = ABH_Color(245, 245, 245, 1);
        _writeTextField.delegate = self;
        _writeTextField.placeholder = @"点击输入标题";
        [_writeTextField setValue:[UIColor grayColor] forKeyPath:@"_placeholderLabel.textColor"];
        _writeTextField.font = [UIFont systemFontOfSize:15];
        _writeTextField.backgroundColor = ABH_Color(15, 18, 39, 1);
        [_writeTextField sizeToFit];
    }
    return _writeTextField;
}
@end
