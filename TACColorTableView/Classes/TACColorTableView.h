//
//  TACColorTableView.h
//  TACColorTableView
//
//  Created by masato_arai on 2015/01/26.
//  Copyright (c) 2015年 Tea and Coffee. All rights reserved.
//

#import <UIKit/UIKit.h>

@class TACColorData;

@protocol TACColorTableViewDelegate;

@interface TACColorTableView : UITableView <UITableViewDataSource, UITableViewDelegate>

@property (nonatomic, weak) id<TACColorTableViewDelegate> colorTableViewDelegate;
@property (nonatomic, strong) NSMutableArray *colors;
@property (nonatomic, strong) TACColorData *selectedData;

@end

@protocol TACColorTableViewDelegate <NSObject>

@required
- (void)colorTableView:(TACColorTableView *)colorTableView selectedData:(TACColorData *)selectedData;

@end
