//
//  TACColorTableView.m
//  TACColorTableView
//
//  Created by masato_arai on 2015/01/26.
//  Copyright (c) 2015年 Tea and Coffee. All rights reserved.
//

#import "TACColorTableView.h"
#import "TACColorData.h"
#import "TACColorTableViewCell.h"

@implementation TACColorTableView

- (void)initializator {
    CGRect selfFrame = self.frame;
    self.transform = CGAffineTransformMakeRotation(-M_PI / 2);
    self.frame = selfFrame;
    
    UIEdgeInsets scrollIndicatorInsets = self.scrollIndicatorInsets;
    scrollIndicatorInsets.right = self.frame.size.height - (3.0 * 2 + 2.5);
    self.scrollIndicatorInsets = scrollIndicatorInsets;
    
    [self registerNib:[TACColorTableViewCell nib] forCellReuseIdentifier:[TACColorTableViewCell reuseIdentifier]];
    self.separatorStyle = UITableViewCellSeparatorStyleNone;
    self.rowHeight = self.frame.size.height;
    self.dataSource = self;
    self.delegate = self;
}

- (instancetype)initWithFrame:(CGRect)frame style:(UITableViewStyle)style {
    self = [super initWithFrame:frame style:style];
    if (self) [self initializator];
    return self;
}

#pragma mark <UITableViewDataSource>
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [_colors count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    NSInteger row = indexPath.row;
    TACColorTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:[TACColorTableViewCell reuseIdentifier] forIndexPath:indexPath];
    
    // TACColorData
    TACColorData *data = _colors[row];
    cell.data = data;
    
    if (data.colorIndex == _selectedData.colorIndex) {
        [self selectRowAtIndexPath:indexPath animated:NO scrollPosition:UITableViewScrollPositionNone];
    }
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    NSInteger row = [indexPath row];
    _selectedData = _colors[row];
    
    if ([self.colorTableViewDelegate respondsToSelector:@selector(colorTableView:selectedData:)]) {
        [self.colorTableViewDelegate colorTableView:self selectedData:_selectedData];
    }
}

@end
