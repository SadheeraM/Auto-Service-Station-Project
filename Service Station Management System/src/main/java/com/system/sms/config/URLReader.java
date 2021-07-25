package com.system.sms.config;

import java.net.*;
import java.io.*;

		public class URLReader {
	
		public static void main(String[] args) throws Exception { 
			
		String msg = "OTEK+Auto+Service+Station\\nAll+types+of+vehicle+maintenance+services+in+one+place.";	
		 
		URL textit = new URL("http://textit.biz/sendmsg/index.php?id=&pw=&to=&text="+msg+"");
		BufferedReader in = new BufferedReader(
		new InputStreamReader(textit.openStream()));
		 
		String inputLine;
		while ((inputLine = in.readLine()) != null)
		System.out.println(inputLine);
		in.close();
		
			}
		
		}



