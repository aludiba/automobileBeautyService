//
//  PVYWKScorecardTitleTableViewCell.m
//  PocketFootballScore
//
//  Created by bykj on 2019/10/25.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "PVYWKScorecardTitleTableViewCell.h"
#import "PVYWKScorecardViewModel.h"
@interface PVYWKScorecardTitleTableViewCell()<UITextFieldDelegate>
@property(nonatomic, strong)UITextField *PVYWKtitleField;//标题
@property(nonatomic, strong)UITextField *PVYWKbureauTextField;//局点
@end
@implementation PVYWKScorecardTitleTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        self.contentView.backgroundColor = [UIColor cyanColor];
        [self.contentView addSubview:self.PVYWKtitleField];
        [self.contentView addSubview:self.PVYWKbureauTextField];
        
        [self.PVYWKtitleField mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.contentView).offset(15);
            make.leading.equalTo(self.contentView);
            make.trailing.equalTo(self.contentView);
            make.height.mas_equalTo(24);
        }];
        [self.PVYWKbureauTextField mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.PVYWKtitleField.mas_bottom).offset(10);
            make.leading.equalTo(self.contentView);
            make.trailing.equalTo(self.contentView);
            make.height.mas_equalTo(24);
    make.bottom.equalTo(self.contentView).offset(-10);
        }];
    }
    return self;
}
- (void)setModel:(PVYWKScorecardViewModel *)model{
    _model = model;
    self.PVYWKtitleField.text = _model.PVYWKnatureCompetitionString;
    self.PVYWKbureauTextField.text = _model.PVYWKbureauString;
}
#pragma mark - UITextFieldDelegate
- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField{
    self.model.PVYWKnatureCompetitionString = textField.text;
    self.type = 0;
    if(self.PVYWKScorecardTitleEditB) {
        self.PVYWKScorecardTitleEditB(self);
    }
    return YES;
}
- (void)textFieldDidBeginEditing:(UITextField *)textField{
    if (textField.tag == 99) {
        self.model.PVYWKnatureCompetitionString = textField.text;
    }else if (textField.tag == 100){
        self.model.PVYWKbureauString = textField.text;
    }
}
- (BOOL)textFieldShouldEndEditing:(UITextField *)textField{
    if (textField.tag == 99) {
        self.model.PVYWKnatureCompetitionString = textField.text;
    }else if (textField.tag == 100){
        self.model.PVYWKbureauString = textField.text;
    }
    return YES;
}
- (void)textFieldDidEndEditing:(UITextField *)textField{
    if (textField.tag == 99) {
        self.model.PVYWKnatureCompetitionString = textField.text;
    }else if (textField.tag == 100){
        self.model.PVYWKbureauString = textField.text;
    }
    self.type = 1;
    if(self.PVYWKScorecardTitleEditB) {
        self.PVYWKScorecardTitleEditB(self);
    }
}
#pragma mark - 属性懒加载
- (UITextField *)PVYWKtitleField{
    if (!_PVYWKtitleField) {
        _PVYWKtitleField = [[UITextField alloc] init];
        _PVYWKtitleField.tag = 99;
        _PVYWKtitleField.delegate = self;
        _PVYWKtitleField.backgroundColor = [UIColor cyanColor];
        _PVYWKtitleField.textColor = [UIColor blackColor];
        _PVYWKtitleField.textAlignment = NSTextAlignmentCenter;
        _PVYWKtitleField.font = [UIFont systemFontOfSize:22];
    }
    return _PVYWKtitleField;
}
- (UITextField *)PVYWKbureauTextField{
    if (!_PVYWKbureauTextField) {
           _PVYWKbureauTextField = [[UITextField alloc] init];
           _PVYWKbureauTextField.tag = 100;
           _PVYWKbureauTextField.delegate = self;
           _PVYWKbureauTextField.backgroundColor = [UIColor systemRedColor];
           _PVYWKbureauTextField.textColor = [UIColor blackColor];
           _PVYWKbureauTextField.textAlignment = NSTextAlignmentCenter;
           _PVYWKbureauTextField.font = [UIFont boldSystemFontOfSize:22];
       }
       return _PVYWKbureauTextField;
}
@end
