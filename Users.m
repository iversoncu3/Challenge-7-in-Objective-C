//
//  Users.m
//  Challenge 7
//
//  Created by Baran on 9/30/15.
//  Copyright (c) 2015 com.MyCodeIsWorking. All rights reserved.
//

#import "Users.h"

@implementation Users
@synthesize picture,name,email,password,age;
-(id)initWithValue:(NSString *)name andEmail:(NSString*)email andPassword:(NSString*)password
            andAge:(NSNumber*)age andImage :(UIImage*)picture{
   
    
    
    if(self=[super init]){
        
        self.picture=picture;
        self.age=age;
        self.email=email;
        self.password=password;
        self.name=name;
        
        
    }

    return self;
    
}

@end
