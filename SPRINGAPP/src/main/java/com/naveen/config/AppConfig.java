package com.naveen.config;

import java.util.Properties;

import javax.sql.DataSource;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.support.ResourceBundleMessageSource;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.orm.hibernate4.HibernateTemplate;
import org.springframework.orm.hibernate4.LocalSessionFactoryBean;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

@Configuration
@EnableWebMvc
@ComponentScan(basePackages="com.naveen")
public class AppConfig 
{
	@Bean
	public ViewResolver view()
	{
		InternalResourceViewResolver view = new InternalResourceViewResolver();
		view.setPrefix("/");
		view.setSuffix(".jsp");
		return view;
	}
	
	@Bean
	public MessageSource messageSource()
	{
		ResourceBundleMessageSource message = new ResourceBundleMessageSource();
		message.setBasename("message");
		return message;
	}
	
	@Bean
	public DataSource ds()
	{
		DriverManagerDataSource ds = new DriverManagerDataSource();
		ds.setDriverClassName("com.mysql.jdbc.Driver");
		ds.setUrl("jdbc:mysql://localhost:3306/world");
		ds.setUsername("root");
		ds.setPassword("naveen");
		return ds;
	}
	@Bean
	public Properties props()
	{
		Properties props = new Properties();
		props.put("hibernate.dialect","org.hibernate.dialect.MySQLDialect");
		props.put("hibernate.show_sql", true);
		props.put("hibernate.hbm2ddl.auto", "update");
		return props;
	}
	@Bean
    @Autowired
	public LocalSessionFactoryBean sessionFactory()
	{
		LocalSessionFactoryBean factory = new LocalSessionFactoryBean();
		//factory.setAnnotatedClasses(Donor.class);
		factory.setHibernateProperties(props());
		factory.setDataSource(ds());
		factory.setPackagesToScan(new String[]{"com.naveen"});
		return factory;
	}
	@Bean
	@Autowired
	public HibernateTemplate getHibernateTemplate(SessionFactory factory)
	{
		HibernateTemplate ht = new HibernateTemplate(factory);
		return ht;
	}

}
