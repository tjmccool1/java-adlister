package com.codeup.adlister.dao;

import com.codeup.adlister.Config;

public class DaoFactory {
    private static Ads adsDao;
    private static Config config = new Config();
//    my update MySQLUsersDao
    private static Users usersDao;


    public static Ads getAdsDao() {
        if (adsDao == null) {
            adsDao = new MySQLAdsDao(config);
        }
        return adsDao;
    }
//    my update for MySQLUsersDao
    public static Users getUsersDao(){
        if (usersDao == null){
            usersDao = new MySQLUsersDao(config);
        }
        return usersDao;
    }

}
