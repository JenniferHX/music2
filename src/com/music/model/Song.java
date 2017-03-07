package com.music.model;

/**
 * Song entity. @author MyEclipse Persistence Tools
 */

public class Song implements java.io.Serializable {

	// Fields

	private Integer songid;
	private Album album;
	private Genre genre;
	private Singer singer;
	private String name;

	// Constructors

	/** default constructor */
	public Song() {
	}

	/** minimal constructor */
	public Song(Genre genre, String name) {
		this.genre = genre;
		this.name = name;
	}

	/** full constructor */
	public Song(Album album, Genre genre, Singer singer, String name) {
		this.album = album;
		this.genre = genre;
		this.singer = singer;
		this.name = name;
	}

	// Property accessors

	public Integer getSongid() {
		return this.songid;
	}

	public void setSongid(Integer songid) {
		this.songid = songid;
	}

	public Album getAlbum() {
		return this.album;
	}

	public void setAlbum(Album album) {
		this.album = album;
	}

	public Genre getGenre() {
		return this.genre;
	}

	public void setGenre(Genre genre) {
		this.genre = genre;
	}

	public Singer getSinger() {
		return this.singer;
	}

	public void setSinger(Singer singer) {
		this.singer = singer;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

}