package com.niit.BackEnd;

import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.configuration.DBConfiguration;
import com.niit.dao.ProductDao;
import com.niit.dao.ProductDaoImpl;

public class App 
{
    public static void main( String[] args )
    {
       ApplicationContext context=
        	      new AnnotationConfigApplicationContext(DBConfiguration.class,ProductDaoImpl.class);
        	      ProductDao productDao=(ProductDao)context.getBean("productDaoImpl");
        
    }
}
