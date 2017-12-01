//
//  ShareSource.m
//  RNShare
//
//  Created by Richard on 16/11/17.
//  Copyright © 2017 Facebook. All rights reserved.
//

#import "ShareSource.h"

@implementation ShareSource

- (id)activityViewController:(UIActivityViewController *)ctrlr
           itemForActivityType:(NSString *)activityType
{
    NSLog(@"%@", activityType);
    NSString *string1 = @"Placeholder";
    
#if RCT_DEV
    RCTLogInfo(@"[PERF ASSETS] Sharing %@", activityType);
#endif
    return string1;
}

- (id)activityViewControllerPlaceholderItem:(UIActivityViewController *)ctrlr
{
    NSString *string1 = @"Placeholder";
    
    return string1;
}

@end
