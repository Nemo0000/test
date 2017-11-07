package dao;

import entity.Admin;

public interface AdminDAO {
	public Admin findByName(String username);
}
