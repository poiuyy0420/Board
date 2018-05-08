<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.awt.Graphics2D" %>
<%@ page import = "java.awt.image.renderable.ParameterBlock" %>
<%@ page import = "java.awt.image.BufferedImage" %>
<%@ page import = "javax.media.jai.JAI" %>
<%@ page import = "javax.media.jai.RenderedOp" %>
<%@ page import = "javax.imageio.ImageIO" %>
<%@ page import = "com.oreilly.servlet.MultipartRequest" %>
<%@ page import = "com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>
<%@ page import = "java.util.*" %>
<%@ page import = "java.io.*" %>
<%
	String imagePath = request.getRealPath("upload");
	int size = 1*1024*1024;
	String filename="";
	try{
		MultipartRequest multi = new MultipartRequest(request, imagePath, size, "utf-8", new DefaultFileRenamePolicy());
		Enumeration files = multi.getFileNames();
		String file = (String)files.nextElement();
		filename = multi. getFilesystemName(file);
	}catch(Exception e){
		e.printStackTrace();
	}
	//파라미터블럭이라는 박스(영역)를 메모리에 만듬
	ParameterBlock pb = new ParameterBlock();
	//add(이미지경로/파일네임) -> 하드디스크에 저장되어 있는 그림을 메모리에 추가(건드릴수X)
	pb.add(imagePath + "/" + filename);
	//랜더링 할 수 있는 그림을 만들어냄(JAI를 통해서) -> 조작가능한그림
	RenderedOp rOp = JAI.create("fileload", pb);
	//메모리에 있는 이미지(버퍼링 이미지)
	BufferedImage bi = rOp.getAsBufferedImage();
	//그림 영역을 잡아줌
	BufferedImage thumb = new BufferedImage(100, 100, BufferedImage.TYPE_INT_RGB);
	Graphics2D g = thumb.createGraphics();
	g.drawImage(bi, 0, 0, 100, 100, null);
	
	File file = new File(imagePath + "/sm_" + filename);
	ImageIO.write(thumb,"jpg",file); //하드디스크에 잡혀 보여줌
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>이미지 썸네일 예제</title>
</head>
<body>
- 원본 이미지 - <br>
<img src="/myWeb/upload/<%= filename %>"><p>
- 썸네일 이미지 - <br>
<img src="/myWeb/upload/sm_<%= filename %>">

</body>
</html>