package com.example.sms;

import java.io.*;
import java.net.URL;
import java.net.URLConnection;
import java.net.URLEncoder;


public class SendSms{

        public static void sendmessage(String msg,String num)
    	{
            //Your authentication key
            String authkey = "145945AHNfoqISSn58d27492";
            //Multiple mobiles numbers separated by comma
            String mobiles =num;
            //Sender ID,While using route4 sender id should be 6 characters long.
            String senderId = "PROJEC";
            //Your message to send, Add URL encoding here.
            String message = ""+msg;
            //define route
            String route="4";

            //Prepare Url
            URLConnection myURLConnection=null;
            URL myURL=null;
            BufferedReader reader=null;

            //encoding message
            String encoded_message=URLEncoder.encode(message);

            //Send SMS API
            String mainUrl="http://neo.c2sms.com/api/mt/SendSMS?";

            //Prepare parameter string
            StringBuilder sbPostData= new StringBuilder(mainUrl);
           // sbPostData.append("authkey="+authkey);
            sbPostData.append("user=NakulDeshmukh");
            sbPostData.append("&password=112233");
            sbPostData.append("&senderid=PROJEC");
            sbPostData.append("&channel=Trans");
            sbPostData.append("&DCS=0");
            sbPostData.append("&flashsms=0");
            sbPostData.append("&number="+mobiles);
            sbPostData.append("&text="+encoded_message);
            //final string
            mainUrl = sbPostData.toString();
            try
            {
                //prepare connection
                myURL = new URL(mainUrl);
                myURLConnection = myURL.openConnection();
                myURLConnection.connect();
                reader= new BufferedReader(new InputStreamReader(myURLConnection.getInputStream()));
                //reading response
                String response;
                while ((response = reader.readLine()) != null)
                //print response
                System.out.println(response);

                //finally close connection
                reader.close();
            }
            catch (IOException e)
            {
                    e.printStackTrace();
            }
        }
}