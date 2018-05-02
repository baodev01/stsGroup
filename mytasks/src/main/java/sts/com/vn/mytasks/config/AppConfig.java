package sts.com.vn.mytasks.config;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.AvailableSettings;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;
import org.springframework.core.env.Environment;
import org.springframework.orm.hibernate5.HibernateTransactionManager;
import org.springframework.orm.hibernate5.LocalSessionFactoryBean;
import org.springframework.transaction.annotation.EnableTransactionManagement;

import java.util.Properties;

@Configuration
@ComponentScan(basePackages={"sts.com.vn.mytasks.service","sts.com.vn.mytasks.dao"})
@EnableTransactionManagement
@PropertySource(value = { "classpath:config/db.properties" })
public class AppConfig {

    @Autowired
    private Environment env;

    @Bean
    public LocalSessionFactoryBean getSessionFactory() {
        LocalSessionFactoryBean factoryBean = new LocalSessionFactoryBean();

        Properties props = new Properties();
        // Setting JDBC properties
        props.put(AvailableSettings.DRIVER, env.getProperty("mysql.driver"));
        props.put(AvailableSettings.URL, env.getProperty("mysql.url"));
        props.put(AvailableSettings.USER, env.getProperty("mysql.username"));
        props.put(AvailableSettings.PASS, env.getProperty("mysql.password"));

        // Setting Hibernate properties
        props.put(AvailableSettings.SHOW_SQL, env.getProperty("hibernate.show_sql"));
        props.put(AvailableSettings.ORDER_UPDATES, env.getProperty("hibernate.order_updates"));
        props.put(AvailableSettings.ORDER_INSERTS, env.getProperty("hibernate.order_inserts"));
        props.put(AvailableSettings.HBM2DDL_AUTO, env.getProperty("hibernate.hbm2ddl.auto"));

        // Setting C3P0 properties
        props.put(AvailableSettings.C3P0_MIN_SIZE, env.getProperty("hibernate.c3p0.min_size"));
        props.put(AvailableSettings.C3P0_MAX_SIZE, env.getProperty("hibernate.c3p0.max_size"));
        props.put(AvailableSettings.C3P0_ACQUIRE_INCREMENT,
                env.getProperty("hibernate.c3p0.acquire_increment"));
        props.put(AvailableSettings.C3P0_TIMEOUT, env.getProperty("hibernate.c3p0.timeout"));
        props.put(AvailableSettings.C3P0_MAX_STATEMENTS, env.getProperty("hibernate.c3p0.max_statements"));

        factoryBean.setHibernateProperties(props);
        factoryBean.setPackagesToScan("sts.com.vn.mytasks");

        return factoryBean;
    }

    @Bean
    public HibernateTransactionManager getTransactionManager() {
        HibernateTransactionManager transactionManager = new HibernateTransactionManager();
        SessionFactory sessionFactory = getSessionFactory().getObject();
        transactionManager.setSessionFactory(sessionFactory);
        return transactionManager;
    }
}
