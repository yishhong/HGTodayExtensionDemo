//
//  TodayViewController.m
//  TodayDemo
//
//  Created by  易述宏 on 16/7/9.
//  Copyright © 2016年 湖南同禾. All rights reserved.
//

#import "TodayViewController.h"
#import <NotificationCenter/NotificationCenter.h>

@interface TodayViewController () <NCWidgetProviding>

@end

@implementation TodayViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    

}
- (IBAction)ActionTapped:(id)sender {
    
    [self.extensionContext openURL:[NSURL URLWithString:@"iOSWidgetApp://action=GotoHomePage"] completionHandler:^(BOOL success) {
        NSLog(@"open url result:%d",success);
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)widgetPerformUpdateWithCompletionHandler:(void (^)(NCUpdateResult))completionHandler {
    // Perform any setup necessary in order to update the view.
    
    // If an error is encountered, use NCUpdateResultFailed
    // If there's no update required, use NCUpdateResultNoData
    // If there's an update, use NCUpdateResultNewData

    completionHandler(NCUpdateResultNewData);
}

@end
