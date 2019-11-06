package com.servlet.view.service;
import java.util.List;

import com.servlet.view.bean.Stud;
public interface IStud {
	public List<Stud> findStud(int currentpage,int numOfRecords,String batch);
	public int getNumberOfRows(String batch);
}
