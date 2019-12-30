# bookshare
指导记录：

图书共享系统:
1.使用的架构： struts + spring + hibernate, 
2.数据库bookshare
3.前端的使用jsp做的页面:

流程：  
action(举例删除book)
1.booklist展示所有的书籍:  
<c:forEach items="${bookList}" var="book">  
  <tr>  
    <td>${book.bookId }</td>  
    <td>${book.bookName }</td>  
    <td>${book.bookType }</td>  
    <td>${book.bookAuthor }</td>  
    <td>${book.bookPrice }</td>  
    <td>${book.bookOperate }</td>  
    <td><a href="book/delete?bookId=${book.bookId }">删除</a></td>   
  </tr>  
</c:forEach>  
&&&&&&&&&&&&&&&&&&&&&&&&&&&&  

2.delete by bookId来删除某一条书籍记录。  
点击删除--->删除指导id的记录--->查数据库返回所有的书籍：
如图：
![Image text](https://raw.githubusercontent.com/18729544877/bookshare/master/WebContent/help_image/book.png)
<package name="book" namespace="/book" extends="default">   
<action name="*" class="com.linksky.ssh.action.BookAction"    
	method="{1}">  
	<result name="{1}">{1}.jsp</result>  
	<result name="addone" type="redirectAction">show</result>  
	<result name="backgo" type="redirectAction">back</result>  
	<result name="showTypeBook">showTypeBook.jsp</result>  
	<result name="borrowgodo" type="redirectAction">borrow</result>  
	<result name="deleteone" type="redirectAction">show</result>  
	<result name="updated" type="redirectAction">update</result>  
</action>  
</package>  
struts.xml找到namespace是book,下面是action为*，method是{1}。  
表示的是acttion与method方法一致。进入action类BookAction:  
public String delete() {  
	String id =getRequest().getParameter("bookId");  
	bookService.removeBook(Integer.valueOf(id));  
	return "deleteone";  
}  

执行完了返回的是“deleteone”，然后根据struts.xml里面的result对应的name：  
如果没有匹配<result name="{1}">{1}.jsp</result>就往下面找：如  
<result name="deleteone" type="redirectAction">show</result>  

type为redirectAction表示跳转，将action设置为show,然后去找BookAction类  
的show方法：  
代码如下：  
public String show() {  
	List<Book> bookList = bookService.findAllBook();  
	getRequest().setAttribute("bookList", bookList);  
	return "show";  
}  
	
目的是查出所有的书籍。返回的是show,刚好匹配  
<result name="{1}">{1}.jsp</result>  
下一步直接到show.jsp页面  
这样删除的一条路就走完了。  
页面的表现是：点击某一条数据的删除按钮，这条数据在页面刷新之后就不见了。  
########################  
3.文件位置说明：  
jsp页面样式：  
A.pageEncoding="UTF-8"  
B.<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>  
使用的是jstl表达式。  

<%@ page language="java" contentType="text/html; charset=UTF-8"  
	pageEncoding="UTF-8"%>  
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>  
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>  

引用的是jstl表达式。  
项目的根目录：bookshare,  

配置文件 struts.xml, applicationContext.xml  
jar包位置：bookshare\WebContent\WEB-INF\lib  
页面文件在 bookshare\WebContent下  
样式在bookshare\WebContent\template下  
图片在bookshare\WebContent\image下  
