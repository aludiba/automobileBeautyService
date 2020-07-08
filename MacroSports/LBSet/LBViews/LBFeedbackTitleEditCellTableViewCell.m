//
//  LBFeedbackTitleEditCellTableViewCell.m
//  MacroSports
//
//  Created by user on 2020/7/8.
//  Copyright © 2020 macro. All rights reserved.
//

#import "LBFeedbackTitleEditCellTableViewCell.h"
#import "LBFeedbackModel.h"
#import "NSString+LB.h"

@interface LBFeedbackTitleEditCellTableViewCell()<UITextFieldDelegate>
@property(nonatomic, strong)UILabel *LBTitleLbl;
@property(nonatomic, strong)UITextField *LBTextF;
@end
@implementation LBFeedbackTitleEditCellTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self =  [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self LBsetContentView];
    }
    return self;
}
#pragma mark - actions
- (void)LBsetContentView{
    [self.contentView addSubview:self.LBTitleLbl];
    [self.contentView addSubview:self.LBTextF];
    
    [self.LBTitleLbl mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.contentView).offset(16);
        make.centerY.equalTo(self.contentView);
        make.width.mas_equalTo(100);
        make.height.mas_equalTo(22);
    }];
    [self.LBTextF mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.contentView).offset(15);
        make.leading.equalTo(self.LBTitleLbl.mas_trailing);
        make.trailing.equalTo(self.contentView).offset(-16);
        make.height.mas_equalTo(30);
        make.bottom.equalTo(self.contentView).offset(-15);
    }];
}
- (void)setLBfeedbackmodel:(LBFeedbackModel *)LBfeedbackmodel{
    _LBfeedbackmodel = LBfeedbackmodel;
    if (_LBfeedbackmodel.LBTitle.length) {
        self.LBTitleLbl.text = _LBfeedbackmodel.LBTitle;
    }
    if (_LBfeedbackmodel.LBTitleDefault.length) {
       self.LBTextF.placeholder = _LBfeedbackmodel.LBTitleDefault;
    }
}
#pragma mark - UITextFieldDelegate
- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField{
    NSString *LBstring = textField.text;
    LBstring = [LBstring LBremoveSpaceAndNewline];
    self.LBfeedbackmodel.LBTitleContent = LBstring;
    return YES;
}
- (void)textFieldDidEndEditing:(UITextField *)textField{
    NSString *LBstring = textField.text;
    LBstring = [LBstring LBremoveSpaceAndNewline];
    self.LBfeedbackmodel.LBTitleContent = LBstring;
}
#pragma mark - 属性懒加载
- (UILabel *)LBTitleLbl{
    if (!_LBTitleLbl) {
        _LBTitleLbl = [[UILabel alloc] init];
        _LBTitleLbl.textColor = [UIColor blackColor];
        _LBTitleLbl.font = [UIFont systemFontOfSize:18];
    }
    return _LBTitleLbl;
}
- (UITextField *)LBTextF{
    if (!_LBTextF) {
        _LBTextF = [[UITextField alloc] init];
        _LBTextF.clearButtonMode = UITextFieldViewModeWhileEditing;
        _LBTextF.delegate = self;
        _LBTextF.textColor = [UIColor blackColor];
        _LBTextF.font = [UIFont systemFontOfSize:20];
        _LBTextF.layer.cornerRadius = 4.0f;
        _LBTextF.layer.masksToBounds = YES;
        _LBTextF.layer.borderColor = LBH_Color(242, 242, 242, 1).CGColor;
        _LBTextF.layer.borderWidth = 1.5f;
    }
    return _LBTextF;
}
@end
