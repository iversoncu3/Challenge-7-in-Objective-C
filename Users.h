//
//  Users.h
//  Challenge 7
//
//  Created by Baran on 9/30/15.
//  Copyright (c) 2015 com.MyCodeIsWorking. All rights reserved.
//

#import <Foundation/Foundation.h>
@class UIImage;

@interface Users : NSObject

@property(nonatomic,strong)NSString *name;
@property(nonatomic,strong)NSString *email;
@property(nonatomic,strong)NSString *password;
@property(nonatomic,strong)NSNumber *age;
@property(nonatomic,strong)UIImage *picture;
-(id)initWithValue:(NSString *)name andEmail:(NSString*)email andPassword:(NSString*)password
            andAge:(NSNumber*)age andImage :(UIImage*)picture;
@end
