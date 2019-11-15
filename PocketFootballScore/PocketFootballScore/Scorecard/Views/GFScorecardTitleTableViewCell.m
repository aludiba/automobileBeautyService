//
//  GFScorecardTitleTableViewCell.m
//  PocketFootballScore
//
//  Created by bykj on 2019/10/25.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "GFScorecardTitleTableViewCell.h"
#import "GFScorecardViewModel.h"
@interface GFScorecardTitleTableViewCell()<UITextFieldDelegate>
@property(nonatomic, strong)UITextField *GFtitleField;//标题
@end
@implementation GFScorecardTitleTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        self.contentView.backgroundColor = [UIColor cyanColor];
        [self.contentView addSubview:self.GFtitleField];
        
        [self.GFtitleField mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.contentView).offset(15);
            make.leading.equalTo(self.contentView);
            make.trailing.equalTo(self.contentView);
            make.bottom.equalTo(self.contentView).offset(-15);
        }];
    }
    return self;
}
- (void)setModel:(GFScorecardViewModel *)model{
    _model = model;
    self.GFtitleField.text = _model.GFnatureCompetitionString;
}
#pragma mark - UITextFieldDelegate
- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField{
    self.model.GFnatureCompetitionString = textField.text;
    self.type = 0;
    if(self.GFScorecardTitleEditB) {
        self.GFScorecardTitleEditB(self);
    }
    return YES;
}
- (void)textFieldDidBeginEditing:(UITextField *)textField{
    self.model.GFnatureCompetitionString = textField.text;
}
- (BOOL)textFieldShouldEndEditing:(UITextField *)textField{
    self.model.GFnatureCompetitionString = textField.text;
    return YES;
}
- (void)textFieldDidEndEditing:(UITextField *)textField{
    self.model.GFnatureCompetitionString = textField.text;
    self.type = 1;
    if(self.GFScorecardTitleEditB) {
        self.GFScorecardTitleEditB(self);
    }
}
#pragma mark - 属性懒加载
- (UITextField *)GFtitleField{
    if (!_GFtitleField) {
        _GFtitleField = [[UITextField alloc] init];
        _GFtitleField.delegate = self;
        _GFtitleField.backgroundColor = [UIColor cyanColor];
        _GFtitleField.textColor = [UIColor blackColor];
        _GFtitleField.textAlignment = NSTextAlignmentCenter;
        _GFtitleField.font = [UIFont systemFontOfSize:25];
    }
    return _GFtitleField;
}
@end
