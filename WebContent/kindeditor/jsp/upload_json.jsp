<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 
<%@ page import="java.util.*,java.io.*" %> 
<%@ page import="java.text.SimpleDateFormat" %> 
<%@ page import="org.apache.commons.fileupload.*" %> 
<%@ page import="org.apache.commons.fileupload.disk.*" %> 
<%@ page import="org.apache.commons.fileupload.servlet.*" %> 
<%@ page import="org.json.simple.*" %> 
<%@ page import="org.apache.struts2.dispatcher.multipart.MultiPartRequestWrapper" %> 
  
<% 
//�ļ�����Ŀ¼·��     
//�����\kindeditor\attached��
String savePath = request.getSession().getServletContext().getRealPath("/") + "/attached/"; 
//�ļ�����Ŀ¼URL /kindeditor/attached/
String saveUrl = request.getContextPath() + "/attached/"; 
//���������ϴ����ļ���չ�� 
//���������ϴ����ļ���չ�� 
HashMap<String, String> extMap = new HashMap<String, String>(); 
extMap.put("image", "gif,jpg,jpeg,png,bmp"); 
extMap.put("flash", "swf,flv"); 
extMap.put("media", "swf,flv,mp3,wav,wma,wmv,mid,avi,mpg,asf,rm,rmvb"); 
extMap.put("file", "doc,docx,xls,xlsx,ppt,htm,html,txt,zip,rar,gz,bz2"); 
  
//��������ϴ��ļ���С struts.xml struts.multipart.maxSize=3G 
long maxSize = 3000000000l; 
  
response.setContentType("text/html; charset=UTF-8"); 
  
if(!ServletFileUpload.isMultipartContent(request)){ 
    out.println(getError("请选择文件")); 
    return; 
} 
//���Ŀ¼ 
File uploadDir = new File(savePath); 
if(!uploadDir.isDirectory()){ 
    out.println(getError("上传目录不存在")); 
    return; 
} 
//���Ŀ¼дȨ�� 
if(!uploadDir.canWrite()){ 
    out.println(getError("上传目录没有写权限�")); 
    return; 
} 
  
String dirName = request.getParameter("dir");//image 
if (dirName == null) { 
    dirName = "image"; 
} 
if(!extMap.containsKey(dirName)){ 
    out.println(getError("Ŀ¼����ȷ��")); 
    return; 
} 
//�����ļ��� 
savePath += dirName + "/"; 
saveUrl += dirName + "/";
File saveDirFile = new File(savePath); 
if (!saveDirFile.exists()) { 
    saveDirFile.mkdirs(); 
} 
SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd"); 
String ymd = sdf.format(new Date()); 
savePath += ymd + "/";
saveUrl += ymd + "/";
File dirFile = new File(savePath); 
if (!dirFile.exists()) { 
    dirFile.mkdirs(); 
} 
if (!dirFile.isDirectory()) { 
    out.println(getError("�ϴ�Ŀ¼������ ��")); 
    return; 
} 
//���Ŀ¼д��Ȩ�� 
if (!dirFile.canWrite()) { 
    out.println(getError("�ϴ�Ŀ¼û��д��Ȩ�ޡ�")); 
    return; 
} 
  

MultiPartRequestWrapper wrapper = (MultiPartRequestWrapper) request; 
//����ϴ����ļ��� 
String fileName = wrapper.getFileNames("imgFile")[0];//imgFile,imgFile,imgFile 
//����ļ������� 
File file = wrapper.getFiles("imgFile")[0]; 
  
//�����չ�� 
String fileExt = fileName.substring(fileName.lastIndexOf(".") + 1).toLowerCase(); 
if(!Arrays.<String>asList(extMap.get(dirName).split(",")).contains(fileExt)){ 
    out.println(getError("�ϴ��ļ���չ���ǲ��������չ��\nֻ����" + extMap.get(dirName) + "��ʽ��")); 
    return; 
} 
//����ļ���С 
if (file.length() > maxSize) { 
        out.println(getError("�ϴ��ļ���С�������ơ�")); 
        return; 
}  
  
  
//�ع��ϴ�ͼƬ�����  
SimpleDateFormat df = new SimpleDateFormat("yyyyMMddHHmmss"); 
String newImgName = df.format(new Date()) + "_"
                + new Random().nextInt(1000) + "." + fileExt; 
byte[] buffer = new byte[1024]; 
//��ȡ�ļ������ 
FileOutputStream fos = new FileOutputStream(savePath +"/" + newImgName); 
//��ȡ�ڴ��е�ǰ�ļ������� 
InputStream in = new FileInputStream(file); 
try { 
        int num = 0; 
        while ((num = in.read(buffer)) > 0) { 
                fos.write(buffer, 0, num); 
        } 
} catch (Exception e) { 
        e.printStackTrace(System.err); 
} finally { 
        in.close(); 
        fos.close(); 
} 
//���͸� KE  
JSONObject obj = new JSONObject(); 
obj.put("error", 0); 
obj.put("url", saveUrl +"/" + newImgName); 
///zswz/attached/image/20111129/  image 20111129195421_593.jpg 
out.println(obj.toJSONString()); 
%> 
<%! 
private String getError(String message) { 
    JSONObject obj = new JSONObject(); 
    obj.put("error", 1); 
    obj.put("message", message); 
    return obj.toJSONString(); 
} 
%> 
