package com.music.action;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.music.dao.*;
import com.music.model.*;
import com.opensymphony.xwork2.ActionSupport;
@Controller @Scope("prototype")
public class SingerAction extends ActionSupport{
	/*ÒµÎñ²ã*/
	@Resource SingerDao singerDao;
	private Singer singer;
	public Singer getSinger() {
		return singer;
	}
	public void setSinger(Singer singer) {
		this.singer = singer;
	}
	public String addSinger() throws Exception{
		singerDao.AddSinger(singer);
		return "message_singer";
		
	}

}
