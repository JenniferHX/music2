package com.music.action;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.music.dao.*;
import com.music.model.*;
import com.opensymphony.xwork2.ActionSupport;
@Controller @Scope("prototype")
public class SongAction extends ActionSupport{
	/*业务层*/
	@Resource SongDao songDao;
	@Resource SingerDao singerDao;
	@Resource AlbumDao albumDao;
	@Resource GenreDao genreDao;
	private Song song;
	private List<Song> songList;
	public String addSong() throws Exception{
		Singer singer=singerDao.GetSingerByName(song.getSinger().getSingername());
		if(singer==null){
			Singer reSinger=new Singer();
			reSinger.setSingername(song.getSinger().getSingername());
			singerDao.AddSinger(reSinger);
			song.setSinger(reSinger);
			
		}
		else{
			song.setSinger(singer);
		}
		Album album=albumDao.GetAlbumByName(song.getAlbum().getAlbumname());
		if(album==null){
			Album reAlbum=new Album();
			reAlbum.setAlbumname(song.getAlbum().getAlbumname());
			reAlbum.setSinger(song.getSinger());
			albumDao.AddAlbum(reAlbum);
			song.setAlbum(reAlbum);
		}
		else{
			song.setAlbum(album);
		}
		Genre genre=genreDao.GetGenreByName(song.getGenre().getGenrename());
		song.setGenre(genre);
		songDao.AddSong(song);
		return "message";
		
	}
	public String showDetail() throws Exception{
		song=songDao.GetSongById(song.getSongid());
		return "detail_view";
	}
	public String showSong() throws Exception{
		songList=songDao.QueryAllSongs();
		return "show_view";
	}
	public String showSongByGenre() throws Exception{
		songList=songDao.QuerySongsInfo(null,song.getGenre().getGenreid());
		switch (song.getGenre().getGenreid()) {
		case 1:
			return "pop";
		case 2:
			return "country";	
		case 3:
			return "folk";
		case 4:
			return "Rhythm and Blues";
		case 5:
			return "RR";
			
		}
		return null;
	}
	/*显示Song的修改项*/
	public String showEdit() throws Exception{
		song=songDao.GetSongById(song.getSongid());
		return "edit_view";
		
	}
	public String editSong() throws Exception{
		Song reSong=songDao.GetSongById(song.getSongid());
		reSong.setName(song.getName());
		Singer reSinger=singerDao.GetSingerByName(song.getSinger().getSingername());
		reSong.setSinger(reSinger);
		Album reAlbum=albumDao.GetAlbumByName(song.getAlbum().getAlbumname());
		reSong.setAlbum(reAlbum);
		Genre reGenre=genreDao.GetGenreByName(song.getGenre().getGenrename());
		reSong.setGenre(reGenre);
		songDao.UpdateSong(reSong);
		
		return "edit_message";
		
	}
	public String deleteSong() throws Exception{
		songDao.DeleteSong(song.getSongid());
		return "delete_message";
		
	}
	public Song getSong() {
		return song;
	}
	public void setSong(Song song) {
		this.song = song;
	}
	public List<Song> getSongList() {
		return songList;
	}
	public void setSongList(List<Song> songList) {
		this.songList = songList;
	}

}
