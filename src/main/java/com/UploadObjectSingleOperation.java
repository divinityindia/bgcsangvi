package com;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;

import com.amazonaws.AmazonClientException;
import com.amazonaws.AmazonServiceException;
import com.amazonaws.auth.AWSCredentials;
import com.amazonaws.services.s3.AmazonS3;
import com.amazonaws.services.s3.AmazonS3Client;
import com.amazonaws.services.s3.model.CannedAccessControlList;
import com.amazonaws.services.s3.model.DeleteObjectRequest;
import com.amazonaws.services.s3.model.ObjectMetadata;
import com.amazonaws.services.s3.model.PutObjectRequest;

public class UploadObjectSingleOperation {
	
	public void uploadfile(AWSCredentials credentials,String bucketName, String keyName,InputStream is,ObjectMetadata metadata)
	{
		AmazonS3 s3client = new AmazonS3Client(credentials);
		File temp=null;
		try {
            System.out.println("Uploading a new object to S3 from a file\n");
            PutObjectRequest putObj=new PutObjectRequest(bucketName, keyName, is,metadata);
            putObj.setCannedAcl(CannedAccessControlList.PublicRead);
            s3client.putObject(putObj);
            System.out.println("Uploading new object successful\n");

         } catch (AmazonServiceException ase) {
            System.out.println("Caught an AmazonServiceException, which " +
            		"means your request made it " +
                    "to Amazon S3, but was rejected with an error response" +
                    " for some reason.");
            System.out.println("Error Message:    " + ase.getMessage());
            System.out.println("HTTP Status Code: " + ase.getStatusCode());
            System.out.println("AWS Error Code:   " + ase.getErrorCode());
            System.out.println("Error Type:       " + ase.getErrorType());
            System.out.println("Request ID:       " + ase.getRequestId());
        } catch (AmazonClientException ace) {
            System.out.println("Caught an AmazonClientException, which " +
            		"means the client encountered " +
                    "an internal error while trying to " +
                    "communicate with S3, " +
                    "such as not being able to access the network.");
            System.out.println("Error Message: " + ace.getMessage());
        } /*catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			 if(temp.exists()) {
			        temp.delete();
			    }
		}*/
		
	}
		
		public void deletefile(AWSCredentials credentials,String bucketName, String keyName)
		{
			AmazonS3 s3client = new AmazonS3Client(credentials);
			 try {
				 System.out.println("Deleting object from a file\n");
				 s3client.deleteObject(new DeleteObjectRequest(bucketName, keyName));
				 System.out.println("Deleted object from a file\n");
		        } catch (AmazonServiceException ase) {
		            System.out.println("Caught an AmazonServiceException.");
		            System.out.println("Error Message:    " + ase.getMessage());
		            System.out.println("HTTP Status Code: " + ase.getStatusCode());
		            System.out.println("AWS Error Code:   " + ase.getErrorCode());
		            System.out.println("Error Type:       " + ase.getErrorType());
		            System.out.println("Request ID:       " + ase.getRequestId());
		        } catch (AmazonClientException ace) {
		            System.out.println("Caught an AmazonClientException.");
		            System.out.println("Error Message: " + ace.getMessage());
		        }
		    }

		void downloadfile(AWSCredentials credentials2) throws IOException
		{
			/*AmazonS3 s3client = new AmazonS3Client(credentials2);
			try {
	            System.out.println("Downloading an object");
	            S3Object s3object = s3client.getObject(new GetObjectRequest(
	            		bucketName, keyName));
	            System.out.println("Content-Type: "  + 
	            s3object.getObjectMetadata().getContentType());	 
	            InputStream input = s3object.getObjectContent();
	            
	           BufferedReader reader = new BufferedReader(new InputStreamReader(input));
	           while (true) {
	               String line = reader.readLine();
	               if (line == null) break;

	               System.out.println("    " + line);
	           }
	           System.out.println();   
	        } catch (AmazonServiceException ase) {
	            System.out.println("Caught an AmazonServiceException, which" +
	            		" means your request made it " +
	                    "to Amazon S3, but was rejected with an error response" +
	                    " for some reason.");
	            System.out.println("Error Message:    " + ase.getMessage());
	            System.out.println("HTTP Status Code: " + ase.getStatusCode());
	            System.out.println("AWS Error Code:   " + ase.getErrorCode());
	            System.out.println("Error Type:       " + ase.getErrorType());
	            System.out.println("Request ID:       " + ase.getRequestId());
	        } catch (AmazonClientException ace) {
	            System.out.println("Caught an AmazonClientException, which means"+
	            		" the client encountered " +
	                    "an internal error while trying to " +
	                    "communicate with S3, " +
	                    "such as not being able to access the network.");
	            System.out.println("Error Message: " + ace.getMessage());
	        }*/
	    }

		
	
	/*public static void main(String[] args) throws IOException {
		AWSCredentials Credentials = new BasicAWSCredentials(
				"YOUR AWSAccessKeyId", 
				"YOUR AWSSecretKey");
		UploadObjectSingleOperation s3client = new UploadObjectSingleOperation();
        	s3client.uploadfile(Credentials);
	        s3client.deletefile(Credentials);
	       s3client.downloadfile(Credentials);
 	
  }*/
}