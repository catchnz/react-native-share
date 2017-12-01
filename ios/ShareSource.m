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
//    NSLog(@"Catch test - Activity: %@", activityType);
    
    // remove anything but Image for whatsapp
    if ([activityType isEqualToString:@"net.whatsapp.WhatsApp.ShareExtension"]) {
        
        if (!self.img)
            return nil;
        
    }
    
    if (self.img) {
        return self.img;
    } else if (self.data) {
        return self.data;
    } else if (self.url) {
        return self.url;
    } else if (self.message) {
        return self.message;
    }
    
    return nil;
}

- (id)activityViewControllerPlaceholderItem:(UIActivityViewController *)ctrlr
{
    
    if (self.img) {
        return self.img;
    } else if (self.data) {
        return self.data;
    } else if (self.url) {
        return self.url;
    } else if (self.message) {
        return self.message;
    } else {
        return self.message;
    }
    
}

@end
