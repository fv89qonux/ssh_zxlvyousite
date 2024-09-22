package util;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.List;	

import com.opensymphony.xwork2.ActionSupport;

public class UploadAction extends ActionSupport {
	/**
	 * 
	 */
	//上传文件的路径地址（文件夹提前创建）
//	private static final String PATH = "E:\\apache-tomcat-6.0.43\\webapps\\uploadFiles\\";
	private static final String PATH = "uploadFiles";
	private static final long serialVersionUID = 1L;
	private List<File> upload;
	public List<File> getUpload() {
		return upload;
	}

	public void setUpload(List<File> upload) {
		this.upload = upload;
	}

	public List<String> getUploadFileName() {
		return uploadFileName;
	}

	public void setUploadFileName(List<String> uploadFileName) {
		this.uploadFileName = uploadFileName;
	}

	private List<String> uploadFileName;
	
	public String execute() throws Exception{
		//判断文件是否为空
		if(upload!=null){
			//循环遍历文件
			for(int i=0;i<upload.size();i++){
				//取到文件流
				InputStream is=new FileInputStream(upload.get(i));
				//创建文件输出流
				OutputStream os=new FileOutputStream(PATH+uploadFileName.get(i));
				//缓存字节
				byte buffer[]=new byte[1024];
				//缓存字节大小
				int count=0;
				//写文件
				while((count=is.read(buffer))>0){
					os.write(buffer,0,count);
				}
				//关闭流
				os.close();
				is.close();
			}
		}else{
			return INPUT;
		}
		
		return SUCCESS;
		
	}
}
