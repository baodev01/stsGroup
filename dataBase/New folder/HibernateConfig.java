package sts.com.vn.mytasks.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;
import org.springframework.transaction.annotation.EnableTransactionManagement;

@Configuration
@EnableTransactionManagement
@PropertySource(value = { "classpath:config/db.properties" })
public class HibernateConfig {

//    @Autowired
//    private Environment env;
//
//    /**
//     * Initialize dataSource
//     * @return DataSource
//     */
//    @Bean
//    public DataSource getDataSource() {
//        DriverManagerDataSource dataSource = new DriverManagerDataSource();
//        dataSource.setDriverClassName(env.getRequiredProperty("mysql.driver"));
//        dataSource.setUrl(env.getRequiredProperty("mysql.url"));
//        dataSource.setUsername(env.getRequiredProperty("mysql.username"));
//        dataSource.setPassword(env.getRequiredProperty("mysql.password"));
//        return dataSource;
//    }
//
//    /**
//     * Initialize hibernate properties
//     * @return Properties
//     */
//    private Properties getHibernateProperties() {
//        Properties properties = new Properties();
//        properties.put(AvailableSettings.DIALECT, env.getRequiredProperty("hibernate.dialect"));
//        properties.put(AvailableSettings.SHOW_SQL, env.getRequiredProperty("hibernate.show_sql"));
//        properties.put(AvailableSettings.STATEMENT_BATCH_SIZE, env.getRequiredProperty("hibernate.jdbc.batch_size"));
//        properties.put(AvailableSettings.HBM2DDL_AUTO, env.getRequiredProperty("hibernate.hbm2ddl.auto"));
//        properties.put(AvailableSettings.CURRENT_SESSION_CONTEXT_CLASS, env.getRequiredProperty("hibernate.current_session_context_class"));
//        properties.put(AvailableSettings.ORDER_UPDATES, env.getRequiredProperty("hibernate.order_updates"));
//        properties.put(AvailableSettings.ORDER_INSERTS, env.getRequiredProperty("hibernate.order_inserts"));
//        return properties;
//    }
//
//    /**
//     * Initialize SessionFactory
//     * @return LocalSessionFactoryBean
//     */
//    @Bean
//    public LocalSessionFactoryBean getSessionFactory() {
//        LocalSessionFactoryBean sessionFactory = new LocalSessionFactoryBean();
//        sessionFactory.setDataSource(getDataSource());
//        sessionFactory.setPackagesToScan(new String[] { "sts.com.vn.mytasks.model" });
//        sessionFactory.setHibernateProperties(getHibernateProperties());
//        return sessionFactory;
//    }
//
//    /**
//     * Initialize Transaction Manager
//     * @param sessionFactory
//     * @return HibernateTransactionManager
//     */
//    @Bean
//    @Autowired
//    public HibernateTransactionManager transactionManager(SessionFactory sessionFactory) {
//        HibernateTransactionManager txManager = new HibernateTransactionManager();
//        txManager.setSessionFactory(getSessionFactory().getObject());
//        return txManager;
//    }
}
