package spring.util;

import java.io.File;
import java.util.Calendar;

import org.apache.commons.io.FileUtils;

public class FileSaveUtil {
	
	public static String checkSameFileName(
			String filename,String path)throws Exception{
		
		String saveFileName = path + 
				System.getProperty("file.separator") + filename;
		
		// 저장될 파일이 존재하는지 확인한 후 있다면
		// 새로운 이름으로 저장하자!
		File dest = new File(saveFileName);
//		int cnt = 1;
		while(dest.exists()){ //존재할 경우에만 새이름을 지정하기 위해
								// 반복문을 수행한다.
			// 20131015102530.txt
			// 년,월,일,시,분,초 등을 구하기 위해 Calendar객체 생성
			Calendar cal = Calendar.getInstance();
			
			int yy = cal.get(Calendar.YEAR); // 2013
			int mm = cal.get(Calendar.MONTH)+1; //1월의 값이 0이다.
			int dd = cal.get(Calendar.DATE); //15
			int h = cal.get(Calendar.HOUR);// 10시
			int m = cal.get(Calendar.MINUTE); // 33분
			int s = cal.get(Calendar.SECOND);// 초
			
			String strTime = String.format("%d%02d%02d%02d%02d%02d", 
					yy,mm,dd,h,m,s);
			
			filename = strTime+"_"+filename;
			
			saveFileName = path+
					System.getProperty("file.separator")+filename;
			
			dest = new File(saveFileName);
		}
		
		return filename;
	}
	
	
	// 파일을 업로드 하는 메서드
	public static String saveFile(File src, String filename, String path)
	throws Exception{
		
		String saveFileName = path+
				System.getProperty("file.separator")+filename;
		
		//저장될 파일이 존재할 경우 이름바꾸면서 저장!
		File dest = new File(saveFileName);
//		int cnt = 1;
		while(dest.exists()){ //존재할 경우에만 새이름을 지정하기 위해
								// 반복문을 수행한다.
			// 20131015102530.txt
			// 년,월,일,시,분,초 등을 구하기 위해 Calendar객체 생성
			Calendar cal = Calendar.getInstance();
			
			int yy = cal.get(Calendar.YEAR); // 2013
			int mm = cal.get(Calendar.MONTH)+1; //1월의 값이 0이다.
			int dd = cal.get(Calendar.DATE); //15
			int h = cal.get(Calendar.HOUR);// 10시
			int m = cal.get(Calendar.MINUTE); // 33분
			int s = cal.get(Calendar.SECOND);// 초
			
			String strTime = String.format("%d%02d%02d%02d%02d%02d", 
					yy,mm,dd,h,m,s);
			
			filename = strTime+"_"+filename;
			
			saveFileName = path+
					System.getProperty("file.separator")+filename;
			
			dest = new File(saveFileName);
		}
		
		// 임시 파일을 저장하는 클래스를 활용한다.
		FileUtils.copyFile(src, dest);
		
		return filename;
	}
}











