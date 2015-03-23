//
//  ViewController.h
//  TACColorTableViewExample
//
//  Created by masato_arai on 2015/03/20.
//  Copyright (c) 2015年 Tea and Coffee. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TACColorTableView.h"

@class TACColorData;

@interface ViewController : UIViewController <UITableViewDataSource, UITableViewDelegate, TACColorTableViewDelegate>

@property (nonatomic, weak) IBOutlet UITableView *tableView;
@property (nonatomic, strong) NSMutableArray *colors;
@property (nonatomic, strong) TACColorData *selectedData;

@end
