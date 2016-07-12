//
//  ShareViewController.m
//  ShareDemo
//
//  Created by  易述宏 on 16/7/11.
//  Copyright © 2016年 湖南同禾. All rights reserved.
//

#import "ShareViewController.h"

@interface ShareViewController ()

@end

@implementation ShareViewController

//检测文本框内容的变化
- (BOOL)isContentValid {
    
    return YES;
}

//上传内容
- (void)didSelectPost {
    // This is called after the user selects Post. Do the upload of contentText and/or NSExtensionContext attachments.
    
    // Inform the host that we're done, so it un-blocks its UI. Note: Alternatively you could call super's -didSelectPost, which will similarly complete the extension context.
    [self.extensionContext completeRequestReturningItems:@[] completionHandler:nil];
}

//取消上传
-(void)didSelectCancel{
    
}

- (NSArray *)configurationItems {
    // To add configuration options via table cells at the bottom of the sheet, return an array of SLComposeSheetConfigurationItem here.
    return @[];
}

@end
