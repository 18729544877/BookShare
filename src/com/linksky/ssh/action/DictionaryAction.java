package com.linksky.ssh.action;

import java.sql.SQLException;
import java.util.List;

import com.linksky.ssh.entity.Dictionary;
import com.linksky.ssh.service.DictionaryService;
import com.opensymphony.xwork2.ModelDriven;

public class DictionaryAction extends BaseAction implements ModelDriven<Dictionary>{
private Dictionary dictionary;


private DictionaryService dictionaryService ;



public void setDictionaryService(DictionaryService dictionaryService) {
	this.dictionaryService = dictionaryService;
}
public String show() throws SQLException  {
	List<Dictionary> dictionaryList = dictionaryService.show();
	getRequest().setAttribute("dictionaryList", dictionaryList);
	return "show";
}
public String add() throws SQLException {
	Dictionary dictionary1=dictionaryService.save(dictionary);
	if(null != dictionary1) {
		return "out";
	}else {
	getRequest().setAttribute("msg", "Ìí¼ÓÊý¾Ý×ÖµäÊ§°Ü");
	return "no";
	}
}

public String delete() throws SQLException {
	List<Dictionary> dictionaryList2 = dictionaryService.show();
	getRequest().setAttribute("dictionaryList", dictionaryList2);
	return "delete";
}

public String delgo() throws SQLException {
	dictionaryService.deleteDictionaryId(dictionary.getDictionaryId());
	return "delgo";
}

public String update() throws SQLException {
	List<Dictionary> dictionaryList = dictionaryService.show();
	getRequest().setAttribute("dictionaryList", dictionaryList);
	return "list";

}
public String updateone() throws NumberFormatException, SQLException {
	String id = getRequest().getParameter("dictionaryId");
	Dictionary onedictionary=dictionaryService.findDictionaryById(Integer.valueOf(id));
	getRequest().setAttribute("dictionary", onedictionary);
	return "updateone";
}

public String updatego() throws SQLException {
	dictionaryService.change(dictionary);
		return "updatedone";		
}


	public Dictionary getModel() {
       if(null == dictionary) {
    	   dictionary = new Dictionary();
       }
		return dictionary;
	}

}
