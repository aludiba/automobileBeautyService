//
//  PVScorecardTitleTableViewCell.m
//  PocketFootballScore
//
//  Created by bykj on 2019/10/25.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "PVScorecardTitleTableViewCell.h"
#import "PVScorecardViewModel.h"
@interface PVScorecardTitleTableViewCell()<UITextFieldDelegate>
@property(nonatomic, strong)UITextField *PVtitleField;//标题
@property(nonatomic, strong)UITextField *PVbureauTextField;//局点
@end
@implementation PVScorecardTitleTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        self.contentView.backgroundColor = [UIColor cyanColor];
        [self.contentView addSubview:self.PVtitleField];
        [self.contentView addSubview:self.PVbureauTextField];
        
        [self.PVtitleField mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.contentView).offset(15);
            make.leading.equalTo(self.contentView);
            make.trailing.equalTo(self.contentView);
            make.height.mas_equalTo(24);
        }];
        [self.PVbureauTextField mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.PVtitleField.mas_bottom).offset(10);
            make.leading.equalTo(self.contentView);
            make.trailing.equalTo(self.contentView);
            make.height.mas_equalTo(24);
    make.bottom.equalTo(self.contentView).offset(-10);
        }];
    }
    return self;
}
- (void)setModel:(PVScorecardViewModel *)model{
    _model = model;
    self.PVtitleField.text = _model.PVnatureCompetitionString;
    self.PVbureauTextField.text = _model.PVbureauString;
}
#pragma mark - UITextFieldDelegate
- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField{
    self.model.PVnatureCompetitionString = textField.text;
    self.type = 0;
    if(self.PVScorecardTitleEditB) {
        self.PVScorecardTitleEditB(self);
    }
    return YES;
}
- (void)textFieldDidBeginEditing:(UITextField *)textField{
    if (textField.tag == 99) {
        self.model.PVnatureCompetitionString = textField.text;
    }else if (textField.tag == 100){
        self.model.PVbureauString = textField.text;
    }
}
- (BOOL)textFieldShouldEndEditing:(UITextField *)textField{
    if (textField.tag == 99) {
        self.model.PVnatureCompetitionString = textField.text;
    }else if (textField.tag == 100){
        self.model.PVbureauString = textField.text;
    }
    return YES;
}
- (void)textFieldDidEndEditing:(UITextField *)textField{
    if (textField.tag == 99) {
        self.model.PVnatureCompetitionString = textField.text;
    }else if (textField.tag == 100){
        self.model.PVbureauString = textField.text;
    }
    self.type = 1;
    if(self.PVScorecardTitleEditB) {
        self.PVScorecardTitleEditB(self);
    }
}
#pragma mark - 属性懒加载
- (UITextField *)PVtitleField{
    if (!_PVtitleField) {
        _PVtitleField = [[UITextField alloc] init];
        _PVtitleField.tag = 99;
        _PVtitleField.delegate = self;
        _PVtitleField.backgroundColor = [UIColor cyanColor];
        _PVtitleField.textColor = [UIColor blackColor];
        _PVtitleField.textAlignment = NSTextAlignmentCenter;
        _PVtitleField.font = [UIFont systemFontOfSize:22];
    }
    return _PVtitleField;
}
- (UITextField *)PVbureauTextField{
    if (!_PVbureauTextField) {
           _PVbureauTextField = [[UITextField alloc] init];
           _PVbureauTextField.tag = 100;
           _PVbureauTextField.delegate = self;
           _PVbureauTextField.backgroundColor = [UIColor systemRedColor];
           _PVbureauTextField.textColor = [UIColor blackColor];
           _PVbureauTextField.textAlignment = NSTextAlignmentCenter;
           _PVbureauTextField.font = [UIFont boldSystemFontOfSize:22];
       }
       return _PVbureauTextField;
}
@end
