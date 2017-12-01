//
//  ShareSource.h
//  RNShare
//
//  Created by Richard on 16/11/17.
//  Copyright © 2017 Facebook. All rights reserved.
//

#ifndef ShareSource_h
#define ShareSource_h

#include <UIKit/UIKit.h>

@protocol UIActivityItemSource;

@interface ShareSource : NSObject <UIActivityItemSource>

@property (nonatomic, strong) NSString *message;
@property (nonatomic, strong) NSURL *url;
@property (nonatomic, strong) NSData *data;
@property (nonatomic, strong) UIImage *img;

@end

#endif /* ShareSource_h */
