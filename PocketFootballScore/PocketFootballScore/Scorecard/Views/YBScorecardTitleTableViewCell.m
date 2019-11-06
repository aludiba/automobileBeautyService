//
//  YBScorecardTitleTableViewCell.m
//  PocketFootballScore
//
//  Created by bykj on 2019/10/25.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "YBScorecardTitleTableViewCell.h"
#import "YBScorecardViewModel.h"
@interface YBScorecardTitleTableViewCell()<UITextFieldDelegate>
@property(nonatomic, strong)UITextField *YBtitleField;//标题
@end
@implementation YBScorecardTitleTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        self.contentView.backgroundColor = [UIColor cyanColor];
        [self.contentView addSubview:self.YBtitleField];
        
        [self.YBtitleField mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.contentView).offset(15);
            make.leading.equalTo(self.contentView);
            make.trailing.equalTo(self.contentView);
            make.bottom.equalTo(self.contentView).offset(-15);
        }];
    }
    return self;
}
- (void)setModel:(YBScorecardViewModel *)model{
    _model = model;
    self.YBtitleField.text = _model.YBnatureCompetitionString;
}
#pragma mark - UITextFieldDelegate
- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField{
    self.model.YBnatureCompetitionString = textField.text;
    self.type = 0;
    if(self.YBScorecardTitleEditB) {
        self.YBScorecardTitleEditB(self);
    }
    return YES;
}
- (void)textFieldDidBeginEditing:(UITextField *)textField{
    self.model.YBnatureCompetitionString = textField.text;
}
- (BOOL)textFieldShouldEndEditing:(UITextField *)textField{
    self.model.YBnatureCompetitionString = textField.text;
    return YES;
}
- (void)textFieldDidEndEditing:(UITextField *)textField{
    self.model.YBnatureCompetitionString = textField.text;
    self.type = 1;
    if(self.YBScorecardTitleEditB) {
        self.YBScorecardTitleEditB(self);
    }
}
#pragma mark - 属性懒加载
- (UITextField *)YBtitleField{
    if (!_YBtitleField) {
        _YBtitleField = [[UITextField alloc] init];
        _YBtitleField.delegate = self;
        _YBtitleField.backgroundColor = [UIColor cyanColor];
        _YBtitleField.textColor = [UIColor blackColor];
        _YBtitleField.textAlignment = NSTextAlignmentCenter;
        _YBtitleField.font = [UIFont systemFontOfSize:25];
    }
    return _YBtitleField;
}
@end
