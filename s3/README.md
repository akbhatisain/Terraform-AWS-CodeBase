# Terraform S3 Bucket Module

## Overview
This Terraform module provisions an Amazon S3 bucket with extensive customization options. It allows you to configure various aspects of the S3 bucket, such as versioning, encryption, lifecycle rules, CORS configuration, logging, and bucket policies.

## Features
Bucket Creation: Creates an S3 bucket with customizable name and access control settings.
Versioning: Enables or disables versioning on the bucket.
Server-Side Encryption: Supports server-side encryption using AES-256 or AWS KMS (optional).
Lifecycle Rules: Manages object lifecycle with customizable transitions and expiration settings.
CORS Configuration: Configures Cross-Origin Resource Sharing (CORS) for the bucket.
Logging: Enables server access logging with customizable target bucket and prefix.
Public Access Block: Configures public access block settings to enhance bucket security.
Bucket Policy: Allows defining custom bucket policies via JSON.
Static Website Hosting: Configures the bucket to serve as a static website, with index and error document settings.
Tagging: Allows assigning tags to the bucket for better resource management.

## File Structure: 

|modules/
│   └── S3/
│       ├── main.tf
│       ├── variables.tf
│       ├── outputs.tf
|S3/
|  ├── s3-main.tf
│  └── README.md

## Prerequisites
1. Basic understanding of AWS s3 bucket creation.
2. Understanding of terraform.
3. Add the required value to the your s3-main.tf. (All fields are required).

## Usage
To use this module, Go through the s3-main.tf file in the S3 folder out side in root.
1. Clone the repository
2. Change directory to S3 ( $ cd S3).
3. Do the changes in S3-main.tf (Add all the required details.)
4. $ terraform init
5. $ terraform plan
6. $ terraform apply
7. keep the resource id's safe for further use case.

## Inputs
### Name	                    Description	                        Type	        Default	            Required 
bucket_name	                The name of the S3 bucket.	            string	        n/a	                    yes
acl	                        The canned ACL to apply to bucket.	    string	        "private"	            no
tags	                    A tags to assign to the bucket.	        map(string)	    {}	                    no
versioning_enabled	        Enable versioning on the bucket.	    bool	        false	                no
sse_algorithm	            Server-side encryption 	                string	        "AES256"	            no
kms_master_key_id	        KMS key ID to use for encryption.	    string	        ""	                    no
lifecycle_prefix	        Prefix filter for lifecycle rules.	    string	        ""	                    no
lifecycle_tags	            Tags filter lifecycle rules.	        map(string)	    {}	                    no
transition_days	            Days after transition objects.	        number	        30	                    no
transition_storage_class	Storage class 	                        string	        "STANDARD_IA"	        no
expiration_days	            Number of days to expire objects.	    number	        365	                    no
cors_allowed_headers	    CORS allowed headers.	                list(string)	["*"]	                no
cors_allowed_methods	    CORS allowed methods.	                list(string)	[GET,PUT,POST,DELETE]	no
cors_allowed_origins	    CORS allowed origins.	                list(string)	["*"]	                no
cors_expose_headers	        CORS expose headers.	                list(string)	[]	                    no
cors_max_age_seconds	    CORS max age in seconds.	            number	        3000	                no
logging_target_bucket	    Target bucket for S3 access logs.	    string	        ""	                    no
logging_target_prefix	    Target prefix for S3 access logs.	    string	        ""	                    no
block_public_acls	        Block public ACLs for this bucket.	    bool	        true	                no
block_public_policy	        Block public bucket policies.	        bool	        true	                no
ignore_public_acls	        Ignore public ACLs on this bucket.	    bool	        true	                no
restrict_public_bucket      Restrict public bucket policies 	    bool	        true	                no
policy_json	                JSON document to define policy.	        string	        ""	                    no
website_index_document	    Name of index document for website.	    string	        ""                      no
website_error_document	    Name of error document for website.	    string	        ""	                    no

## Explaination: 
Bucket Name: bucket_name - The name of the S3 bucket.
ACL: acl - The ACL applied to the S3 bucket (default is private).
Server-Side Encryption: sse_algorithm and kms_master_key_id - Configures encryption for objects stored in the bucket.
Versioning: versioning_enabled - Enables versioning for the bucket (default is false).
Logging: logging_target_bucket and logging_target_prefix - Configures logging for the bucket.
Public Access Block: block_public_acls, block_public_policy, ignore_public_acls, and restrict_public_buckets - Controls public access to the bucket.
Bucket Policy: Includes a basic policy allowing public read access to objects in the bucket.
Website Configuration: enable_website, website_index_document, and website_error_document - Configures the bucket for website hosting (optional, enabled by setting enable_website to true).
Tags: tags - A map of tags to apply to the bucket.


# Request :- 
Feel free to modify the code and let me know about any new changes or your suggestions.
Together we will improve the AWS terraform Codebase in such way so that if everyone wants to learn they can use it.

