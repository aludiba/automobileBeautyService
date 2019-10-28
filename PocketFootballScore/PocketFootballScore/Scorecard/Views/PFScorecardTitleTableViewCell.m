//
//  PFScorecardTitleTableViewCell.m
//  PocketFootballScore
//
//  Created by bykj on 2019/10/25.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "PFScorecardTitleTableViewCell.h"
#import "PFScorecardViewModel.h"
@interface PFScorecardTitleTableViewCell()<UITextFieldDelegate>
@property(nonatomic, strong)UITextField *PFtitleField;//标题
@end
@implementation PFScorecardTitleTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        self.contentView.backgroundColor = [UIColor systemOrangeColor];
        [self.contentView addSubview:self.PFtitleField];
        
        [self.PFtitleField mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.contentView).offset(15);
            make.leading.equalTo(self.contentView);
            make.trailing.equalTo(self.contentView);
            make.bottom.equalTo(self.contentView).offset(-15);
        }];
    }
    return self;
}
- (void)setModel:(PFScorecardViewModel *)model{
    _model = model;
    self.PFtitleField.text = _model.PFnatureCompetitionString;
}
#pragma mark - UITextFieldDelegate
- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField{
    self.model.PFnatureCompetitionString = textField.text;
    self.type = 0;
    if(self.PFScorecardTitleEditB) {
        self.PFScorecardTitleEditB(self);
    }
    return YES;
}
- (void)textFieldDidBeginEditing:(UITextField *)textField{
    self.model.PFnatureCompetitionString = textField.text;
}
- (BOOL)textFieldShouldEndEditing:(UITextField *)textField{
    self.model.PFnatureCompetitionString = textField.text;
    return YES;
}
- (void)textFieldDidEndEditing:(UITextField *)textField{
    self.model.PFnatureCompetitionString = textField.text;
    self.type = 1;
    if(self.PFScorecardTitleEditB) {
        self.PFScorecardTitleEditB(self);
    }
}
#pragma mark - 属性懒加载
- (UITextField *)PFtitleField{
    if (!_PFtitleField) {
        _PFtitleField = [[UITextField alloc] init];
        _PFtitleField.delegate = self;
        _PFtitleField.backgroundColor = [UIColor systemOrangeColor];
        _PFtitleField.textColor = [UIColor blackColor];
        _PFtitleField.textAlignment = NSTextAlignmentCenter;
        _PFtitleField.font = [UIFont systemFontOfSize:25];
    }
    return _PFtitleField;
}
@end
