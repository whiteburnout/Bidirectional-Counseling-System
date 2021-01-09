package spms.listeners;

import java.sql.*;

import javax.naming.*;
// DBConnectionPool 적용
import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;
import javax.sql.*;

import org.apache.commons.dbcp.*;

import spms.dao.*;
import spms.util.DBConnectionPool;

@WebListener
public class ContextLoaderListener implements ServletContextListener {

  @Override
  public void contextInitialized(ServletContextEvent event) {
    try {
      ServletContext sc = event.getServletContext();
 
      InitialContext initialContext = new InitialContext();
      DataSource ds = (DataSource)initialContext.lookup(
    		  "java:comp/env/jdbc/mydb");
      
      UserDao userDao = new UserDao();
      userDao.setDataSource(ds);

      sc.setAttribute("userDao", userDao);

    } catch(Throwable e) {
      e.printStackTrace();
    }
  }

  @Override
  public void contextDestroyed(ServletContextEvent event) {
  }
}
